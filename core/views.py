from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth import authenticate, login, logout, update_session_auth_hash
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User as AuthUser
from django.contrib import messages
from django.db.models import Sum, Count, Q, F
from django.http import JsonResponse
from django.utils import timezone
from math import radians, cos, sin, asin, sqrt
from .models import (
    Users, Warehouses, DisasterZones, Vehicles,
    Categories, Items, WarehouseInventory,
    DispatchLogs, DispatchLineItems, AuditLogs
)


# ═══════════════════════════════════════
# HAVERSINE DISTANCE CALCULATION
# ═══════════════════════════════════════

def haversine(lat1, lon1, lat2, lon2):
    """
    Calculate the great-circle distance between two points
    on Earth using the Haversine formula.
    Returns distance in kilometers.
    """
    lat1, lon1, lat2, lon2 = map(float, [lat1, lon1, lat2, lon2])
    lat1, lon1, lat2, lon2 = map(radians, [lat1, lon1, lat2, lon2])

    dlat = lat2 - lat1
    dlon = lon2 - lon1

    a = sin(dlat / 2) ** 2 + cos(lat1) * cos(lat2) * sin(dlon / 2) ** 2
    c = 2 * asin(sqrt(a))

    r = 6371  # Earth's radius in km
    return round(r * c, 1)


def get_nearest_warehouses(zone, limit=5):
    """
    Find the nearest active warehouses to a disaster zone,
    sorted by real geodesic distance.
    """
    warehouses = Warehouses.objects.filter(is_active=1)
    warehouse_distances = []

    for wh in warehouses:
        dist = haversine(zone.latitude, zone.longitude,
                         wh.latitude, wh.longitude)
        stock_count = WarehouseInventory.objects.filter(
            warehouse=wh, quantity_in_stock__gt=0
        ).aggregate(
            total_items=Count('item_id'),
            total_stock=Sum('quantity_in_stock')
        )
        warehouse_distances.append({
            'warehouse': wh,
            'distance_km': dist,
            'total_items': stock_count['total_items'] or 0,
            'total_stock': stock_count['total_stock'] or 0,
        })

    warehouse_distances.sort(key=lambda x: x['distance_km'])
    return warehouse_distances[:limit]


# ═══════════════════════════════════════
# LOGIN / LOGOUT / PASSWORD
# ═══════════════════════════════════════

def login_view(request):
    if request.user.is_authenticated:
        role = request.session.get('role', 'Viewer')
        if role == 'Driver':
            return redirect('driver_dashboard')
        return redirect('coordinator_dashboard')

    if request.method == 'POST':
        username = request.POST.get('username', '').strip()
        password = request.POST.get('password', '')

        # Try Django auth first (for existing auth users)
        user = authenticate(request, username=username, password=password)

        if user is None:
            # If Django auth fails, check app Users table and create auth account
            try:
                app_user = Users.objects.get(username=username)

                # For first-time login: check legacy SHA-256 hash
                import hashlib
                legacy_hash = hashlib.sha256(f"pass_{username}".encode()).hexdigest()

                if app_user.password_hash == legacy_hash and password == f"pass_{username}":
                    # Create Django auth user with proper password hashing
                    auth_user, created = AuthUser.objects.get_or_create(
                        username=username,
                        defaults={'email': app_user.email, 'is_active': True}
                    )
                    # Set properly hashed password (PBKDF2+SHA256)
                    auth_user.set_password(password)
                    auth_user.save()

                    user = authenticate(request, username=username, password=password)
            except Users.DoesNotExist:
                pass

        if user is not None:
            login(request, user)

            # Set session data from app Users table
            try:
                app_user = Users.objects.get(username=username)
                request.session['role'] = app_user.role
                request.session['app_user_id'] = app_user.user_id
                request.session['app_username'] = app_user.username
            except Users.DoesNotExist:
                request.session['role'] = 'Admin'
                request.session['app_user_id'] = None
                request.session['app_username'] = username

            role = request.session.get('role', 'Viewer')
            if role == 'Driver':
                return redirect('driver_dashboard')
            return redirect('coordinator_dashboard')
        else:
            messages.error(request, 'Invalid username or password.')

    return render(request, 'core/login.html')


def logout_view(request):
    logout(request)
    return redirect('login')


@login_required
def change_password(request):
    if request.method == 'POST':
        old_password = request.POST.get('old_password')
        new_password = request.POST.get('new_password')
        confirm_password = request.POST.get('confirm_password')

        if not request.user.check_password(old_password):
            messages.error(request, 'Current password is incorrect.')
        elif new_password != confirm_password:
            messages.error(request, 'New passwords do not match.')
        elif len(new_password) < 8:
            messages.error(request, 'Password must be at least 8 characters.')
        else:
            request.user.set_password(new_password)
            request.user.save()
            # Keep user logged in after password change
            update_session_auth_hash(request, request.user)

            # Also update the hash in the app Users table
            try:
                import hashlib
                app_user = Users.objects.get(username=request.user.username)
                app_user.password_hash = hashlib.sha256(new_password.encode()).hexdigest()
                app_user.save()
            except Users.DoesNotExist:
                pass

            messages.success(request, 'Password changed successfully.')
            return redirect('coordinator_dashboard')

    context = {
        'role': request.session.get('role', ''),
        'username': request.session.get('app_username', ''),
    }
    return render(request, 'core/change_password.html', context)


# ═══════════════════════════════════════
# COORDINATOR DASHBOARD
# ═══════════════════════════════════════

@login_required
def coordinator_dashboard(request):
    active_zones = DisasterZones.objects.filter(is_active=1).order_by(
        '-severity_level'
    )

    recent_dispatches = DispatchLogs.objects.select_related(
        'zone', 'vehicle', 'user'
    ).order_by('-dispatch_id')[:15]

    total_zones = DisasterZones.objects.filter(is_active=1).count()
    critical_zones = DisasterZones.objects.filter(
        is_active=1, severity_level='Critical'
    ).count()
    pending_dispatches = DispatchLogs.objects.filter(status='Pending').count()
    enroute_dispatches = DispatchLogs.objects.filter(status='EnRoute').count()
    delivered_dispatches = DispatchLogs.objects.filter(status='Delivered').count()
    available_vehicles = Vehicles.objects.filter(status='Available').count()
    total_vehicles = Vehicles.objects.count()

    low_stock = WarehouseInventory.objects.filter(
        quantity_in_stock__lt=50
    ).select_related('warehouse', 'item').order_by('quantity_in_stock')[:10]

    # Map data
    import json
    warehouses_map = list(Warehouses.objects.filter(is_active=1).values(
        'warehouse_id', 'name', 'latitude', 'longitude'
    ))
    zones_map = list(DisasterZones.objects.filter(is_active=1).values(
        'zone_id', 'name', 'latitude', 'longitude', 'severity_level', 'population_affected'
    ))
    for w in warehouses_map:
        w['latitude'] = float(w['latitude'])
        w['longitude'] = float(w['longitude'])
    for z in zones_map:
        z['latitude'] = float(z['latitude'])
        z['longitude'] = float(z['longitude'])

    context = {
        'active_zones': active_zones,
        'recent_dispatches': recent_dispatches,
        'total_zones': total_zones,
        'critical_zones': critical_zones,
        'pending_dispatches': pending_dispatches,
        'enroute_dispatches': enroute_dispatches,
        'delivered_dispatches': delivered_dispatches,
        'available_vehicles': available_vehicles,
        'total_vehicles': total_vehicles,
        'low_stock': low_stock,
        'role': request.session.get('role', 'Viewer'),
        'username': request.session.get('app_username', ''),
        'warehouses_json': json.dumps(warehouses_map),
        'zones_json': json.dumps(zones_map),
    }
    return render(request, 'core/coordinator_dashboard.html', context)


# ═══════════════════════════════════════
# CREATE DISPATCH
# ═══════════════════════════════════════

@login_required
def create_dispatch(request):
    if request.method == 'POST':
        zone_id = request.POST.get('zone_id')
        vehicle_id = request.POST.get('vehicle_id')
        priority = request.POST.get('priority')
        notes = request.POST.get('notes', '')

        user_id = request.session.get('app_user_id')
        if not user_id:
            messages.error(request, 'User session not found.')
            return redirect('create_dispatch')

        try:
            zone = DisasterZones.objects.get(zone_id=zone_id)
            vehicle = Vehicles.objects.get(vehicle_id=vehicle_id)
            user = Users.objects.get(user_id=user_id)

            dispatch = DispatchLogs.objects.create(
                zone=zone, vehicle=vehicle, user=user,
                priority=priority, status='Pending', notes=notes,
            )

            vehicle.status = 'InTransit'
            vehicle.save()

            messages.success(request, f'Dispatch #{dispatch.dispatch_id} created. Now add items.')
            return redirect('add_dispatch_items', dispatch_id=dispatch.dispatch_id)
        except Exception as e:
            messages.error(request, f'Error creating dispatch: {str(e)}')

    zones = DisasterZones.objects.filter(is_active=1)
    vehicles = Vehicles.objects.filter(status='Available', assigned_driver__isnull=False).select_related('assigned_driver')

    import json
    zone_warehouse_map = {}
    for zone in zones:
        nearest = get_nearest_warehouses(zone, limit=3)
        zone_warehouse_map[zone.zone_id] = nearest

    zone_warehouse_json = {}
    for zid, wh_list in zone_warehouse_map.items():
        zone_warehouse_json[zid] = [
            {
                'name': w['warehouse'].name,
                'distance_km': w['distance_km'],
                'total_items': w['total_items'],
                'total_stock': w['total_stock'],
            }
            for w in wh_list
        ]

    context = {
        'zones': zones,
        'vehicles': vehicles,
        'zone_warehouse_json': json.dumps(zone_warehouse_json),
        'role': request.session.get('role', ''),
        'username': request.session.get('app_username', ''),
    }
    return render(request, 'core/create_dispatch.html', context)


# ═══════════════════════════════════════
# DISPATCH DETAIL
# ═══════════════════════════════════════

@login_required
def dispatch_detail(request, dispatch_id):
    dispatch = get_object_or_404(DispatchLogs, dispatch_id=dispatch_id)
    line_items = DispatchLineItems.objects.filter(
        dispatch=dispatch
    ).select_related('warehouse', 'item')

    for li in line_items:
        li.distance_km = haversine(
            dispatch.zone.latitude, dispatch.zone.longitude,
            li.warehouse.latitude, li.warehouse.longitude
        )

    context = {
        'dispatch': dispatch,
        'line_items': line_items,
        'role': request.session.get('role', ''),
        'username': request.session.get('app_username', ''),
    }
    return render(request, 'core/dispatch_detail.html', context)


# ═══════════════════════════════════════
# UPDATE DISPATCH STATUS
# ═══════════════════════════════════════
@login_required
def update_dispatch_status(request, dispatch_id):
    if request.method == 'POST':
        new_status = request.POST.get('status')
        dispatch = get_object_or_404(DispatchLogs, dispatch_id=dispatch_id)
        role = request.session.get('role', '')

        # Only Drivers can mark Departed and Arrived
        if new_status in ['EnRoute', 'Arrived'] and role not in ['Driver', 'Admin']:
            messages.error(request, 'Only the assigned driver can update delivery status.')
            return redirect('dispatch_detail', dispatch_id=dispatch_id)

        # Only Coordinators and Admins can confirm receipt (Delivered)
        if new_status == 'Delivered' and role not in ['Coordinator', 'Admin']:
            messages.error(request, 'Only a coordinator or admin can confirm receipt of delivery.')
            return redirect('dispatch_detail', dispatch_id=dispatch_id)

        # If Driver, verify they're assigned to this vehicle
        if role == 'Driver':
            user_id = request.session.get('app_user_id')
            my_vehicles = Vehicles.objects.filter(assigned_driver_id=user_id).values_list('vehicle_id', flat=True)
            if dispatch.vehicle_id not in my_vehicles:
                messages.error(request, 'You are not assigned to this dispatch vehicle.')
                return redirect('driver_dashboard')

        if new_status == 'EnRoute' and dispatch.status == 'Pending':
            dispatch.status = 'EnRoute'
            dispatch.departure_time = timezone.now()
            dispatch.save()
            messages.success(request, f'Dispatch #{dispatch_id} is now En Route.')

        elif new_status == 'Arrived' and dispatch.status == 'EnRoute':
            dispatch.status = 'Arrived'
            dispatch.arrival_time = timezone.now()
            dispatch.save()
            messages.success(request, f'Dispatch #{dispatch_id} has arrived at the zone. Awaiting coordinator confirmation.')

        elif new_status == 'Delivered' and dispatch.status == 'Arrived':
            dispatch.status = 'Delivered'
            dispatch.save()
            dispatch.vehicle.status = 'Available'
            dispatch.vehicle.save()
            messages.success(request, f'Dispatch #{dispatch_id} delivery confirmed by {request.session.get("app_username")}.')

        elif new_status == 'Failed' and role in ['Admin', 'Coordinator', 'Driver']:
            dispatch.status = 'Failed'
            dispatch.arrival_time = timezone.now()
            dispatch.save()
            dispatch.vehicle.status = 'Available'
            dispatch.vehicle.save()
            messages.warning(request, f'Dispatch #{dispatch_id} marked as failed.')

        else:
            messages.error(request, 'Invalid status change.')

    role = request.session.get('role', '')
    if role == 'Driver':
        return redirect('driver_dashboard')
    return redirect('coordinator_dashboard')
# ═══════════════════════════════════════
# DRIVER DASHBOARD
# ═══════════════════════════════════════

@login_required
def driver_dashboard(request):
    user_id = request.session.get('app_user_id')

    my_vehicles = Vehicles.objects.filter(assigned_driver_id=user_id)
    vehicle_ids = my_vehicles.values_list('vehicle_id', flat=True)

    my_dispatches = DispatchLogs.objects.filter(
        vehicle_id__in=vehicle_ids
    ).select_related('zone', 'vehicle', 'user').order_by('-dispatch_id')

    active_dispatches = my_dispatches.filter(status__in=['Pending', 'EnRoute'])
    completed_dispatches = my_dispatches.filter(status__in=['Delivered', 'Failed'])[:10]

    context = {
        'active_dispatches': active_dispatches,
        'completed_dispatches': completed_dispatches,
        'my_vehicles': my_vehicles,
        'role': request.session.get('role', 'Driver'),
        'username': request.session.get('app_username', ''),
    }
    return render(request, 'core/driver_dashboard.html', context)


# ═══════════════════════════════════════
# INVENTORY VIEW
# ═══════════════════════════════════════

@login_required
def inventory_view(request):
    warehouse_id = request.GET.get('warehouse', None)
    category_id = request.GET.get('category', None)

    inventory = WarehouseInventory.objects.select_related(
        'warehouse', 'item'
    ).order_by('warehouse__name', 'item__name')

    if warehouse_id:
        inventory = inventory.filter(warehouse_id=warehouse_id)
    if category_id:
        inventory = inventory.filter(item__category_id=category_id)

    warehouse_summary = WarehouseInventory.objects.values(
        'warehouse__name', 'warehouse__warehouse_id'
    ).annotate(
        total_items=Count('item_id'),
        total_stock=Sum('quantity_in_stock')
    ).order_by('warehouse__name')

    warehouses = Warehouses.objects.filter(is_active=1)
    categories = Categories.objects.all()

    context = {
        'inventory': inventory,
        'warehouse_summary': warehouse_summary,
        'warehouses': warehouses,
        'categories': categories,
        'selected_warehouse': warehouse_id,
        'selected_category': category_id,
        'role': request.session.get('role', ''),
        'username': request.session.get('app_username', ''),
    }
    return render(request, 'core/inventory.html', context)


# ═══════════════════════════════════════
# AUDIT LOG VIEWER
# ═══════════════════════════════════════

@login_required
def audit_log_view(request):
    table_filter = request.GET.get('table', '')
    action_filter = request.GET.get('action', '')

    logs = AuditLogs.objects.select_related('changed_by').order_by('-changed_at')

    if table_filter:
        logs = logs.filter(table_name=table_filter)
    if action_filter:
        logs = logs.filter(action=action_filter)

    logs = logs[:100]

    table_names = AuditLogs.objects.values_list(
        'table_name', flat=True
    ).distinct().order_by('table_name')

    context = {
        'logs': logs,
        'table_names': table_names,
        'selected_table': table_filter,
        'selected_action': action_filter,
        'role': request.session.get('role', ''),
        'username': request.session.get('app_username', ''),
    }
    return render(request, 'core/audit_logs.html', context)


# ═══════════════════════════════════════
# ZONE DETAIL
# ═══════════════════════════════════════

@login_required
def zone_detail(request, zone_id):
    zone = get_object_or_404(DisasterZones, zone_id=zone_id)
    dispatches = DispatchLogs.objects.filter(zone=zone).select_related(
        'vehicle', 'user'
    ).order_by('-dispatch_id')

    nearest_warehouses = get_nearest_warehouses(zone, limit=5)

    context = {
        'zone': zone,
        'dispatches': dispatches,
        'nearest_warehouses': nearest_warehouses,
        'role': request.session.get('role', ''),
        'username': request.session.get('app_username', ''),
    }
    return render(request, 'core/zone_detail.html', context)


# ═══════════════════════════════════════
# API: Nearest warehouses (AJAX)
# ═══════════════════════════════════════

@login_required
def api_nearest_warehouses(request, zone_id):
    zone = get_object_or_404(DisasterZones, zone_id=zone_id)
    nearest = get_nearest_warehouses(zone, limit=5)

    data = [
        {
            'name': w['warehouse'].name,
            'distance_km': w['distance_km'],
            'latitude': float(w['warehouse'].latitude),
            'longitude': float(w['warehouse'].longitude),
            'total_items': w['total_items'],
            'total_stock': w['total_stock'],
        }
        for w in nearest
    ]
    return JsonResponse({'warehouses': data})





# ═══════════════════════════════════════
# FLEET MANAGEMENT (Admin only)
# ═══════════════════════════════════════

@login_required
def fleet_management(request):
    if request.session.get('role') != 'Admin':
        messages.error(request, 'Access denied. Admin only.')
        return redirect('coordinator_dashboard')

    vehicles = Vehicles.objects.select_related('assigned_driver').order_by('vehicle_id')
    drivers = Users.objects.filter(role='Driver').order_by('username')

    context = {
        'vehicles': vehicles,
        'drivers': drivers,
        'role': request.session.get('role', ''),
        'username': request.session.get('app_username', ''),
    }
    return render(request, 'core/fleet_management.html', context)


@login_required
def assign_driver(request, vehicle_id):
    if request.session.get('role') != 'Admin':
        return redirect('coordinator_dashboard')

    if request.method == 'POST':
        vehicle = get_object_or_404(Vehicles, vehicle_id=vehicle_id)
        driver_id = request.POST.get('driver_id')

        if driver_id == '':
            vehicle.assigned_driver = None
            vehicle.save()
            messages.success(request, f'{vehicle.license_plate} is now unassigned.')
        else:
            driver = get_object_or_404(Users, user_id=driver_id)
            vehicle.assigned_driver = driver
            vehicle.save()
            messages.success(request, f'{vehicle.license_plate} assigned to {driver.username}.')

    return redirect('fleet_management')


@login_required
def update_vehicle_status(request, vehicle_id):
    if request.session.get('role') != 'Admin':
        return redirect('coordinator_dashboard')

    if request.method == 'POST':
        vehicle = get_object_or_404(Vehicles, vehicle_id=vehicle_id)
        new_status = request.POST.get('status')
        if new_status in ['Available', 'InTransit', 'Maintenance']:
            vehicle.status = new_status
            vehicle.save()
            messages.success(request, f'{vehicle.license_plate} status changed to {new_status}.')

    return redirect('fleet_management')


# ═══════════════════════════════════════
# USER MANAGEMENT (Admin only)
# ═══════════════════════════════════════

@login_required
def manage_users(request):
    if request.session.get('role') != 'Admin':
        messages.error(request, 'Access denied. Admin only.')
        return redirect('coordinator_dashboard')

    users = Users.objects.all().order_by('role', 'username')

    context = {
        'app_users': users,
        'role': request.session.get('role', ''),
        'username': request.session.get('app_username', ''),
    }
    return render(request, 'core/manage_users.html', context)


@login_required
def create_user(request):
    if request.session.get('role') != 'Admin':
        return redirect('coordinator_dashboard')

    if request.method == 'POST':
        username = request.POST.get('username', '').strip()
        email = request.POST.get('email', '').strip()
        password = request.POST.get('password', '')
        user_role = request.POST.get('role', 'Viewer')

        if not username or not email or not password:
            messages.error(request, 'All fields are required.')
            return redirect('create_user')

        if len(password) < 8:
            messages.error(request, 'Password must be at least 8 characters.')
            return redirect('create_user')

        # Check if username already exists
        if Users.objects.filter(username=username).exists():
            messages.error(request, f'Username "{username}" already exists.')
            return redirect('create_user')

        try:
            import hashlib

            # Create in app Users table
            app_user = Users.objects.create(
                username=username,
                email=email,
                password_hash=hashlib.sha256(password.encode()).hexdigest(),
                role=user_role,
                created_at=timezone.now(),
            )

            # Create matching Django auth user
            auth_user = AuthUser.objects.create_user(
                username=username,
                email=email,
                password=password,
                is_active=True,
            )

            messages.success(request, f'User "{username}" created as {user_role}. They can now log in.')
            return redirect('manage_users')

        except Exception as e:
            messages.error(request, f'Error creating user: {str(e)}')

    context = {
        'role': request.session.get('role', ''),
        'username': request.session.get('app_username', ''),
    }
    return render(request, 'core/create_user.html', context)


# ═══════════════════════════════════════
# ADD ITEMS TO DISPATCH (Gap 1 fix)
# ═══════════════════════════════════════

@login_required
def add_dispatch_items(request, dispatch_id):
    dispatch = get_object_or_404(DispatchLogs, dispatch_id=dispatch_id)

    if request.method == 'POST':
        warehouse_id = request.POST.get('warehouse_id')
        item_id = request.POST.get('item_id')
        quantity = request.POST.get('quantity')

        try:
            quantity = int(quantity)
            if quantity <= 0:
                raise ValueError("Quantity must be positive")

            warehouse = Warehouses.objects.get(warehouse_id=warehouse_id)
            item = Items.objects.get(item_id=item_id)

            # Check stock before adding
            try:
                inv = WarehouseInventory.objects.get(warehouse=warehouse, item=item)
                if inv.quantity_in_stock < quantity:
                    messages.error(request, f'Insufficient stock. {warehouse.name} has only {inv.quantity_in_stock} units of {item.name}.')
                    return redirect('add_dispatch_items', dispatch_id=dispatch_id)
            except WarehouseInventory.DoesNotExist:
                messages.error(request, f'{item.name} is not stocked at {warehouse.name}.')
                return redirect('add_dispatch_items', dispatch_id=dispatch_id)

            # Check for duplicate line item
            if DispatchLineItems.objects.filter(dispatch=dispatch, warehouse=warehouse, item=item).exists():
                messages.error(request, f'{item.name} from {warehouse.name} is already in this dispatch.')
                return redirect('add_dispatch_items', dispatch_id=dispatch_id)

            # Create line item
            DispatchLineItems.objects.create(
                dispatch=dispatch,
                warehouse=warehouse,
                item=item,
                quantity_dispatched=quantity,
            )

            # Decrement inventory
            inv.quantity_in_stock -= quantity
            inv.save()

            messages.success(request, f'Added {quantity}x {item.name} from {warehouse.name}.')
            return redirect('add_dispatch_items', dispatch_id=dispatch_id)

        except ValueError as e:
            messages.error(request, f'Invalid quantity: {str(e)}')
        except Exception as e:
            messages.error(request, f'Error: {str(e)}')

    # Get existing line items
    line_items = DispatchLineItems.objects.filter(dispatch=dispatch).select_related('warehouse', 'item')
    for li in line_items:
        li.distance_km = haversine(
            dispatch.zone.latitude, dispatch.zone.longitude,
            li.warehouse.latitude, li.warehouse.longitude
        )

    # Get nearest warehouses with stock details
    nearest = get_nearest_warehouses(dispatch.zone, limit=5)

    # Get all items for the dropdown
    items = Items.objects.select_related('category').order_by('category__name', 'name')

    # Get warehouses for dropdown
    warehouses = Warehouses.objects.filter(is_active=1).order_by('name')

    # Get categories for filter
    categories = Categories.objects.all().order_by('name')

    # Build stock lookup JSON: {warehouse_id: {item_id: quantity}}
    import json
    stock_data = {}
    all_inventory = WarehouseInventory.objects.all()
    for inv in all_inventory:
        wh_id = str(inv.warehouse_id)
        if wh_id not in stock_data:
            stock_data[wh_id] = {}
        stock_data[wh_id][str(inv.item_id)] = inv.quantity_in_stock

    context = {
        'dispatch': dispatch,
        'line_items': line_items,
        'nearest_warehouses': nearest,
        'items': items,
        'warehouses': warehouses,
        'categories': categories,
        'stock_json': json.dumps(stock_data),
        'role': request.session.get('role', ''),
        'username': request.session.get('app_username', ''),
    }
    return render(request, 'core/add_dispatch_items.html', context)


@login_required
def remove_dispatch_item(request, dispatch_id, line_item_id):
    line_item = get_object_or_404(DispatchLineItems, line_item_id=line_item_id, dispatch_id=dispatch_id)

    # Restore inventory
    try:
        inv = WarehouseInventory.objects.get(
            warehouse_id=line_item.warehouse_id,
            item_id=line_item.item_id
        )
        inv.quantity_in_stock += line_item.quantity_dispatched
        inv.save()
    except WarehouseInventory.DoesNotExist:
        pass

    item_name = line_item.item.name
    line_item.delete()
    messages.success(request, f'Removed {item_name} and restored inventory.')
    return redirect('add_dispatch_items', dispatch_id=dispatch_id)


# ═══════════════════════════════════════
# REGISTER DISASTER ZONE (Gap 2 fix)
# ═══════════════════════════════════════

@login_required
def register_zone(request):
    role = request.session.get('role', '')
    if role not in ['Admin', 'Coordinator']:
        messages.error(request, 'Access denied.')
        return redirect('coordinator_dashboard')

    if request.method == 'POST':
        name = request.POST.get('name', '').strip()
        description = request.POST.get('description', '').strip()
        severity = request.POST.get('severity_level')
        latitude = request.POST.get('latitude')
        longitude = request.POST.get('longitude')
        population = request.POST.get('population_affected', 0)

        user_id = request.session.get('app_user_id')

        try:
            zone = DisasterZones.objects.create(
                name=name,
                description=description,
                severity_level=severity,
                latitude=latitude,
                longitude=longitude,
                population_affected=int(population) if population else 0,
                is_active=1,
                reported_by_id=user_id,
                logged_at=timezone.now(),
            )
            messages.success(request, f'Zone "{name}" registered as {severity}.')
            return redirect('zone_detail', zone_id=zone.zone_id)
        except Exception as e:
            messages.error(request, f'Error: {str(e)}')

    context = {
        'role': role,
        'username': request.session.get('app_username', ''),
    }
    return render(request, 'core/register_zone.html', context)


# ═══════════════════════════════════════
# UPDATE INVENTORY / RESTOCK (Gap 3 fix)
# ═══════════════════════════════════════

@login_required
def restock_inventory(request):
    role = request.session.get('role', '')
    if role != 'Admin':
        messages.error(request, 'Access denied. Admin only.')
        return redirect('coordinator_dashboard')

    if request.method == 'POST':
        warehouse_id = request.POST.get('warehouse_id')
        item_id = request.POST.get('item_id')
        quantity = request.POST.get('quantity')

        try:
            quantity = int(quantity)
            if quantity == 0:
                raise ValueError("Quantity cannot be zero")

            warehouse = Warehouses.objects.get(warehouse_id=warehouse_id)
            item = Items.objects.get(item_id=item_id)

            inv, created = WarehouseInventory.objects.get_or_create(
                warehouse=warehouse,
                item=item,
                defaults={'quantity_in_stock': 0}
            )
            old_stock = inv.quantity_in_stock
            new_stock = inv.quantity_in_stock + quantity
            if new_stock < 0:
                messages.error(request, f'Cannot deduct {abs(quantity)} units. Only {inv.quantity_in_stock} in stock.')
                return redirect('restock_inventory')
            inv.quantity_in_stock = new_stock
            inv.last_updated = timezone.now()

            # Set MySQL session variable so the trigger knows who did this
            from django.db import connection
            user_id = request.session.get('app_user_id')
            with connection.cursor() as cursor:
                cursor.execute("SET @current_user_id = %s", [user_id])

            inv.save()

            if created:
                action_msg = f'Created: +{quantity} {item.name} at {warehouse.name}.'
            elif quantity > 0:
                action_msg = f'Restocked: +{quantity} {item.name} at {warehouse.name}.'
            else:
                action_msg = f'Corrected: {quantity} {item.name} at {warehouse.name}.'
            messages.success(request, f'{action_msg} New stock: {inv.quantity_in_stock}')
            return redirect('restock_inventory')

        except ValueError as e:
            messages.error(request, f'Invalid quantity: {str(e)}')
        except Exception as e:
            messages.error(request, f'Error: {str(e)}')

    warehouses = Warehouses.objects.filter(is_active=1).order_by('name')
    items = Items.objects.select_related('category').order_by('category__name', 'name')

    # Recent restock activity (from audit logs)
    recent_restocks = WarehouseInventory.objects.select_related(
        'warehouse', 'item'
    ).order_by('-last_updated')[:15]

    context = {
        'warehouses': warehouses,
        'items': items,
        'recent_restocks': recent_restocks,
        'role': role,
        'username': request.session.get('app_username', ''),
    }
    return render(request, 'core/restock_inventory.html', context)
