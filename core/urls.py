from django.urls import path
from . import views

urlpatterns = [
    path('', views.login_view, name='login'),
    path('login/', views.login_view, name='login'),
    path('logout/', views.logout_view, name='logout'),
    path('password/', views.change_password, name='change_password'),
    path('dashboard/', views.coordinator_dashboard, name='coordinator_dashboard'),
    path('driver/', views.driver_dashboard, name='driver_dashboard'),
    path('dispatch/create/', views.create_dispatch, name='create_dispatch'),
    path('dispatch/<int:dispatch_id>/', views.dispatch_detail, name='dispatch_detail'),
    path('dispatch/<int:dispatch_id>/update/', views.update_dispatch_status, name='update_dispatch_status'),
    path('dispatch/<int:dispatch_id>/items/', views.add_dispatch_items, name='add_dispatch_items'),
    path('dispatch/<int:dispatch_id>/items/<int:line_item_id>/remove/', views.remove_dispatch_item, name='remove_dispatch_item'),
    path('inventory/', views.inventory_view, name='inventory'),
    path('inventory/restock/', views.restock_inventory, name='restock_inventory'),
    path('audit/', views.audit_log_view, name='audit_logs'),
    path('zone/<int:zone_id>/', views.zone_detail, name='zone_detail'),
    path('zone/register/', views.register_zone, name='register_zone'),
    path('api/nearest/<int:zone_id>/', views.api_nearest_warehouses, name='api_nearest_warehouses'),
    path('fleet/', views.fleet_management, name='fleet_management'),
    path('fleet/<int:vehicle_id>/assign/', views.assign_driver, name='assign_driver'),
    path('fleet/<int:vehicle_id>/status/', views.update_vehicle_status, name='update_vehicle_status'),
    path('users/', views.manage_users, name='manage_users'),
    path('users/create/', views.create_user, name='create_user'),
]
