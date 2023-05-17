from django.db import models
from django.contrib.auth.models import User
from decimal import Decimal


class Fruit(models.Model):
    name = models.CharField(max_length=256)
    photo = models.TextField()
    detail = models.CharField(max_length=256)
    description =models.TextField()
    price = models.DecimalField(max_digits=7, decimal_places=2)
    max_quantity = models.IntegerField() 


    def __str__(self):
        return f"{self.name} | {self.detail} | ${self.price} Kg"
    

class PurchaseCart(models.Model):
    user = models.ForeignKey(User, on_delete=models.RESTRICT)
    fruit = models.ForeignKey(Fruit, on_delete=models.RESTRICT) 
    quantity = models.IntegerField() 
    state = models.CharField(max_length=256)
    purchase_code= models.CharField(max_length=256, blank=True, null=True)

    def __str__(self):
        return f"{self.user.username} | {self.fruit.name} | {self.fruit.detail} | cant= {self.quantity}"

    def total_price(self):
            return Decimal(self.fruit.price) * Decimal(self.quantity)
