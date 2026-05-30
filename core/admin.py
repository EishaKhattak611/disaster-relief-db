from django.contrib import admin
from .models import (
    Users, Warehouses, DisasterZones, Vehicles,
    Categories, Items,
    DispatchLogs, DispatchLineItems, AuditLogs
)

admin.site.register(Users)
admin.site.register(Warehouses)
admin.site.register(DisasterZones)
admin.site.register(Vehicles)
admin.site.register(Categories)
admin.site.register(Items)
admin.site.register(DispatchLogs)
admin.site.register(DispatchLineItems)
admin.site.register(AuditLogs)
