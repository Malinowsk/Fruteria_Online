from django.contrib import admin

# Register your models here.

from fruteria.models import Fruit , PurchaseCart


admin.site.register(Fruit)
admin.site.register(PurchaseCart)