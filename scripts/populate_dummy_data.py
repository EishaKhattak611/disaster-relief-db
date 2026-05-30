#!/usr/bin/env python
"""
Script to populate the DRSC application with dummy data for testing.
Run this script with: python populate_dummy_data.py
"""
import os
import django

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'disaster_relief.settings')
django.setup()

from django.contrib.auth.models import User as AuthUser
from django.utils import timezone
from core.models import (
    Users, Warehouses, DisasterZones, Vehicles,
    Categories, Items, WarehouseInventory,
    DispatchLogs, DispatchLineItems
)
import hashlib


def create_users():
    """Create test users with different roles"""
    print("Creating users...")
    
    users_data = [
        {'username': 'admin', 'email': 'admin@drsc.com', 'password': 'admin123', 'role': 'Admin'},
        {'username': 'coordinator1', 'email': 'coordinator1@drsc.com', 'password': 'coord123', 'role': 'Coordinator'},
        {'username': 'coordinator2', 'email': 'coordinator2@drsc.com', 'password': 'coord123', 'role': 'Coordinator'},
        {'username': 'driver1', 'email': 'driver1@drsc.com', 'password': 'driver123', 'role': 'Driver'},
        {'username': 'driver2', 'email': 'driver2@drsc.com', 'password': 'driver123', 'role': 'Driver'},
        {'username': 'driver3', 'email': 'driver3@drsc.com', 'password': 'driver123', 'role': 'Driver'},
    ]
    
    for user_data in users_data:
        # Create in app Users table
        app_user, created = Users.objects.get_or_create(
            username=user_data['username'],
            defaults={
                'email': user_data['email'],
                'password_hash': hashlib.sha256(user_data['password'].encode()).hexdigest(),
                'role': user_data['role'],
                'created_at': timezone.now(),
            }
        )
        
        # Create matching Django auth user
        auth_user, auth_created = AuthUser.objects.get_or_create(
            username=user_data['username'],
            defaults={
                'email': user_data['email'],
                'is_active': True,
            }
        )
        if auth_created:
            auth_user.set_password(user_data['password'])
            auth_user.save()
        
        if created:
            print(f"  Created user: {user_data['username']} ({user_data['role']})")
        else:
            print(f"  User already exists: {user_data['username']}")


def create_warehouses():
    """Create test warehouses"""
    print("Creating warehouses...")
    
    warehouses_data = [
        {
            'name': 'Central Warehouse Karachi',
            'location': 'Karachi, Pakistan',
            'latitude': 24.8607,
            'longitude': 67.0011,
            'capacity_kg': 50000,
            'contact_person': 'Ahmed Khan',
        },
        {
            'name': 'North Warehouse Lahore',
            'location': 'Lahore, Pakistan',
            'latitude': 31.5204,
            'longitude': 74.3587,
            'capacity_kg': 40000,
            'contact_person': 'Fatima Ali',
        },
        {
            'name': 'South Warehouse Hyderabad',
            'location': 'Hyderabad, Pakistan',
            'latitude': 25.3924,
            'longitude': 68.3686,
            'capacity_kg': 30000,
            'contact_person': 'Imran Shah',
        },
    ]
    
    for wh_data in warehouses_data:
        warehouse, created = Warehouses.objects.get_or_create(
            name=wh_data['name'],
            defaults={
                'location': wh_data['location'],
                'latitude': wh_data['latitude'],
                'longitude': wh_data['longitude'],
                'capacity_kg': wh_data['capacity_kg'],
                'contact_person': wh_data['contact_person'],
                'is_active': 1,
            }
        )
        if created:
            print(f"  Created warehouse: {wh_data['name']}")
        else:
            print(f"  Warehouse already exists: {wh_data['name']}")


def create_categories_and_items():
    """Create categories and items"""
    print("Creating categories and items...")
    
    categories_data = [
        {'name': 'Food', 'description': 'Food items and rations'},
        {'name': 'Water', 'description': 'Water and purification supplies'},
        {'name': 'Medical', 'description': 'Medical supplies and equipment'},
        {'name': 'Shelter', 'description': 'Tents, blankets, and shelter materials'},
        {'name': 'Clothing', 'description': 'Clothing and personal items'},
    ]
    
    for cat_data in categories_data:
        category, created = Categories.objects.get_or_create(
            name=cat_data['name'],
            defaults={'description': cat_data['description']}
        )
        if created:
            print(f"  Created category: {cat_data['name']}")
    
    # Get all categories
    food_cat = Categories.objects.get(name='Food')
    water_cat = Categories.objects.get(name='Water')
    medical_cat = Categories.objects.get(name='Medical')
    shelter_cat = Categories.objects.get(name='Shelter')
    clothing_cat = Categories.objects.get(name='Clothing')
    
    items_data = [
        {'name': 'Rice Bags (25kg)', 'unit': 'bag', 'weight': 25.0, 'category': food_cat},
        {'name': 'Flour Bags (25kg)', 'unit': 'bag', 'weight': 25.0, 'category': food_cat},
        {'name': 'Cooking Oil (5L)', 'unit': 'liter', 'weight': 5.0, 'category': food_cat},
        {'name': 'Canned Food', 'unit': 'can', 'weight': 0.5, 'category': food_cat},
        {'name': 'Water Bottles (1L)', 'unit': 'bottle', 'weight': 1.0, 'category': water_cat},
        {'name': 'Water Tank (500L)', 'unit': 'tank', 'weight': 500.0, 'category': water_cat},
        {'name': 'First Aid Kit', 'unit': 'kit', 'weight': 2.0, 'category': medical_cat},
        {'name': 'Medical Bandages', 'unit': 'box', 'weight': 1.0, 'category': medical_cat},
        {'name': 'Painkillers', 'unit': 'bottle', 'weight': 0.2, 'category': medical_cat},
        {'name': 'Emergency Tent', 'unit': 'tent', 'weight': 15.0, 'category': shelter_cat},
        {'name': 'Sleeping Bag', 'unit': 'bag', 'weight': 2.0, 'category': shelter_cat},
        {'name': 'Blankets', 'unit': 'piece', 'weight': 1.5, 'category': shelter_cat},
        {'name': 'T-Shirts', 'unit': 'piece', 'weight': 0.2, 'category': clothing_cat},
        {'name': 'Jackets', 'unit': 'piece', 'weight': 0.8, 'category': clothing_cat},
    ]
    
    for item_data in items_data:
        item, created = Items.objects.get_or_create(
            name=item_data['name'],
            defaults={
                'unit_of_measure': item_data['unit'],
                'weight_per_unit_kg': item_data['weight'],
                'category': item_data['category'],
            }
        )
        if created:
            print(f"  Created item: {item_data['name']}")


def create_inventory():
    """Create warehouse inventory"""
    print("Creating warehouse inventory...")
    
    warehouses = Warehouses.objects.all()
    items = Items.objects.all()
    
    for warehouse in warehouses:
        for item in items:
            # Random stock levels between 10 and 200
            import random
            stock = random.randint(10, 200)
            
            inventory, created = WarehouseInventory.objects.get_or_create(
                warehouse=warehouse,
                item=item,
                defaults={
                    'quantity_in_stock': stock,
                    'last_updated': timezone.now(),
                }
            )
            if created:
                print(f"  Added {stock} {item.name} to {warehouse.name}")


def create_disaster_zones():
    """Create disaster zones"""
    print("Creating disaster zones...")
    
    coordinator = Users.objects.filter(role='Coordinator').first()
    
    zones_data = [
        {
            'name': 'Flood Affected Area - Thatta',
            'description': 'Severe flooding in Thatta district, thousands displaced',
            'severity_level': 'Critical',
            'latitude': 24.7477,
            'longitude': 67.9236,
            'population_affected': 15000,
        },
        {
            'name': 'Earthquake Zone - Quetta',
            'description': 'Moderate earthquake damage in Quetta region',
            'severity_level': 'High',
            'latitude': 30.1798,
            'longitude': 66.9750,
            'population_affected': 8000,
        },
        {
            'name': 'Cyclone Impact - Gwadar',
            'description': 'Coastal area affected by cyclone, infrastructure damaged',
            'severity_level': 'High',
            'latitude': 25.1325,
            'longitude': 62.3240,
            'population_affected': 5000,
        },
        {
            'name': 'Drought Area - Tharparkar',
            'description': 'Severe drought conditions, water shortage',
            'severity_level': 'Medium',
            'latitude': 24.7477,
            'longitude': 70.0236,
            'population_affected': 3000,
        },
    ]
    
    for zone_data in zones_data:
        zone, created = DisasterZones.objects.get_or_create(
            name=zone_data['name'],
            defaults={
                'description': zone_data['description'],
                'severity_level': zone_data['severity_level'],
                'latitude': zone_data['latitude'],
                'longitude': zone_data['longitude'],
                'population_affected': zone_data['population_affected'],
                'reported_by': coordinator,
                'logged_at': timezone.now(),
                'is_active': 1,
            }
        )
        if created:
            print(f"  Created disaster zone: {zone_data['name']} ({zone_data['severity_level']})")


def create_vehicles():
    """Create vehicles and assign drivers"""
    print("Creating vehicles...")
    
    drivers = Users.objects.filter(role='Driver')
    
    vehicles_data = [
        {'license_plate': 'KHI-1234', 'type': 'Truck', 'capacity_kg': 5000},
        {'license_plate': 'KHI-5678', 'type': 'Truck', 'capacity_kg': 5000},
        {'license_plate': 'LHR-9012', 'type': 'Van', 'capacity_kg': 2000},
        {'license_plate': 'LHR-3456', 'type': 'Truck', 'capacity_kg': 4000},
        {'license_plate': 'HYD-7890', 'type': 'Van', 'capacity_kg': 1500},
        {'license_plate': 'HYD-1122', 'type': 'Truck', 'capacity_kg': 6000},
    ]
    
    for i, vehicle_data in enumerate(vehicles_data):
        driver = drivers[i % len(drivers)] if drivers else None
        vehicle, created = Vehicles.objects.get_or_create(
            license_plate=vehicle_data['license_plate'],
            defaults={
                'type': vehicle_data['type'],
                'capacity_kg': vehicle_data['capacity_kg'],
                'status': 'Available',
                'assigned_driver': driver,
            }
        )
        if created:
            driver_name = driver.username if driver else 'Unassigned'
            print(f"  Created vehicle: {vehicle_data['license_plate']} assigned to {driver_name}")


def create_sample_dispatches():
    """Create sample dispatches"""
    print("Creating sample dispatches...")
    
    coordinator = Users.objects.filter(role='Coordinator').first()
    zone = DisasterZones.objects.filter(is_active=1).first()
    vehicle = Vehicles.objects.filter(status='Available').first()
    
    if not all([coordinator, zone, vehicle]):
        print("  Missing required data for dispatches")
        return
    
    # Create a completed dispatch
    dispatch = DispatchLogs.objects.create(
        zone=zone,
        vehicle=vehicle,
        user=coordinator,
        priority='High',
        status='Delivered',
        departure_time=timezone.now() - timezone.timedelta(hours=5),
        arrival_time=timezone.now() - timezone.timedelta(hours=2),
        notes='Emergency relief supplies delivered successfully'
    )
    
    # Add some items to the dispatch
    warehouses = Warehouses.objects.all()
    items = Items.objects.all()[:3]
    
    for i, item in enumerate(items):
        warehouse = warehouses[i % len(warehouses)]
        DispatchLineItems.objects.create(
            dispatch=dispatch,
            warehouse=warehouse,
            item=item,
            quantity_dispatched=50
        )
    
    print(f"  Created sample dispatch #{dispatch.dispatch_id}")


def main():
    """Main function to populate all dummy data"""
    print("=" * 50)
    print("Populating DRSC Application with Dummy Data")
    print("=" * 50)
    
    create_users()
    print()
    
    create_warehouses()
    print()
    
    create_categories_and_items()
    print()
    
    create_inventory()
    print()
    
    create_disaster_zones()
    print()
    
    create_vehicles()
    print()
    
    create_sample_dispatches()
    print()
    
    print("=" * 50)
    print("Dummy data population completed!")
    print("=" * 50)
    print("\nLogin credentials:")
    print("  Admin: admin / admin123")
    print("  Coordinator: coordinator1 / coord123")
    print("  Driver: driver1 / driver123")


if __name__ == '__main__':
    main()
