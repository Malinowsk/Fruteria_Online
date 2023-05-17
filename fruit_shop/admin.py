from django.contrib import admin

# Register your models here.

from fruit_shop.models import Fruit , PurchaseCart


admin.site.register(Fruit)
admin.site.register(PurchaseCart)