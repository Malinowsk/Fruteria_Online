
from django.contrib import admin
from django.urls import path

from fruteria.views import show_home , show_catalog , show_contacto , show_about , show_detail , show_mensaje, add_fruit, show_cart, delete_fruit, edit_fruit, get_purchase

urlpatterns = [
    path("", show_home ,  name='home'),
    path("catalog/", show_catalog ,  name='catalog'),
    path("contacto/", show_contacto ,  name='contacto'),
    path("about/", show_about ,  name='about'),
    path("detail/<id>", show_detail ,  name='detail'),
    path("mensaje/", show_mensaje ,  name='mensaje'),
    path("cart/add/<fruit_id>", add_fruit ,  name='cart_add'),
    path("cart/delete/<fruit_id>", delete_fruit ,  name='cart_delete'),
    path("cart/edit/<id>", show_detail ,  name='cart_edit'),
    path("cart/edit-confirm/<fruit_id>", edit_fruit ,  name='cart_Edit_confirm'),
    path("cart/", show_cart ,  name='cart'),
    path("cart/to-buy", get_purchase ,  name='cart_purchase'),
]