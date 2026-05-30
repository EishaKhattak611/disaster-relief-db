# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class AuditLogs(models.Model):
    audit_id = models.AutoField(primary_key=True)
    table_name = models.CharField(max_length=50)
    record_id = models.IntegerField()
    action = models.CharField(max_length=6)
    changed_by = models.ForeignKey('Users', models.DO_NOTHING, db_column='changed_by', blank=True, null=True)
    changed_at = models.DateTimeField()
    old_values = models.JSONField(blank=True, null=True)
    new_values = models.JSONField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'audit_logs'
        verbose_name_plural = 'Audit Logs'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class Categories(models.Model):
    category_id = models.AutoField(primary_key=True)
    name = models.CharField(unique=True, max_length=100)
    description = models.TextField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'categories'
        verbose_name_plural = 'Categories'


class DisasterZones(models.Model):
    zone_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100)
    description = models.TextField(blank=True, null=True)
    severity_level = models.CharField(max_length=8)
    latitude = models.DecimalField(max_digits=9, decimal_places=6)
    longitude = models.DecimalField(max_digits=9, decimal_places=6)
    population_affected = models.IntegerField(blank=True, null=True)
    is_active = models.IntegerField()
    reported_by = models.ForeignKey('Users', models.DO_NOTHING, db_column='reported_by')
    logged_at = models.DateTimeField()

    class Meta:
        managed = True
        db_table = 'disaster_zones'
        verbose_name_plural = 'Disaster Zones'

class DispatchLineItems(models.Model):
    line_item_id = models.AutoField(primary_key=True)
    dispatch = models.ForeignKey('DispatchLogs', models.DO_NOTHING)
    warehouse = models.ForeignKey('Warehouses', models.DO_NOTHING)
    item = models.ForeignKey('Items', models.DO_NOTHING)
    quantity_dispatched = models.IntegerField()

    class Meta:
        managed = True
        db_table = 'dispatch_line_items'
        verbose_name_plural = 'Dispatch Line Items'


class DispatchLogs(models.Model):
    dispatch_id = models.AutoField(primary_key=True)
    zone = models.ForeignKey(DisasterZones, models.DO_NOTHING)
    vehicle = models.ForeignKey('Vehicles', models.DO_NOTHING)
    user = models.ForeignKey('Users', models.DO_NOTHING)
    priority = models.CharField(max_length=8)
    status = models.CharField(max_length=9)
    departure_time = models.DateTimeField(blank=True, null=True)
    arrival_time = models.DateTimeField(blank=True, null=True)
    notes = models.TextField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'dispatch_logs'
        verbose_name_plural = 'Dispatch Logs'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Items(models.Model):
    item_id = models.AutoField(primary_key=True)
    name = models.CharField(unique=True, max_length=100)
    unit_of_measure = models.CharField(max_length=20)
    weight_per_unit_kg = models.DecimalField(max_digits=8, decimal_places=3)
    category = models.ForeignKey(Categories, models.DO_NOTHING)

    class Meta:
        managed = True
        db_table = 'items'
        verbose_name_plural = 'Items'


class Users(models.Model):
    user_id = models.AutoField(primary_key=True)
    username = models.CharField(unique=True, max_length=50)
    email = models.CharField(unique=True, max_length=100)
    password_hash = models.CharField(max_length=255)
    role = models.CharField(max_length=11)
    last_login = models.DateTimeField(blank=True, null=True)
    created_at = models.DateTimeField()

    class Meta:
        managed = True
        db_table = 'users'
        verbose_name_plural = 'Users'


class Vehicles(models.Model):
    vehicle_id = models.AutoField(primary_key=True)
    license_plate = models.CharField(unique=True, max_length=20)
    type = models.CharField(max_length=50)
    capacity_kg = models.DecimalField(max_digits=10, decimal_places=2)
    status = models.CharField(max_length=11)
    assigned_driver = models.ForeignKey(Users, models.DO_NOTHING, db_column='assigned_driver', blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'vehicles'
        verbose_name_plural = 'Vehicles'


class WarehouseInventory(models.Model):
    pk = models.CompositePrimaryKey('warehouse_id', 'item_id')
    warehouse = models.ForeignKey('Warehouses', models.DO_NOTHING)
    item = models.ForeignKey(Items, models.DO_NOTHING)
    quantity_in_stock = models.IntegerField()
    last_updated = models.DateTimeField()

    class Meta:
        managed = True
        db_table = 'warehouse_inventory'
        verbose_name_plural = 'Warehouse Inventory'


class Warehouses(models.Model):
    warehouse_id = models.AutoField(primary_key=True)
    name = models.CharField(unique=True, max_length=100)
    location = models.CharField(max_length=200)
    latitude = models.DecimalField(max_digits=9, decimal_places=6)
    longitude = models.DecimalField(max_digits=9, decimal_places=6)
    capacity_kg = models.DecimalField(max_digits=10, decimal_places=2)
    contact_person = models.CharField(max_length=100, blank=True, null=True)
    is_active = models.IntegerField()

    class Meta:
        managed = True
        db_table = 'warehouses'
        verbose_name_plural = 'Warehouses'
