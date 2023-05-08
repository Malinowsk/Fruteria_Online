
from django.contrib import admin
from django.urls import path

from fruteria.views import presentar_home , presentar_catalogo , presentar_contacto , presentar_about , presentar_detail , presentar_mensaje, add_fruit, show_cart, delete_fruit, edit_fruit

urlpatterns = [
    path("", presentar_home ,  name='home'),
    path("catalogo/", presentar_catalogo ,  name='catalogo'),
    path("contacto/", presentar_contacto ,  name='contacto'),
    path("about/", presentar_about ,  name='about'),
    path("detail/<id>/<mensaje>", presentar_detail ,  name='detail'),
    path("mensaje/", presentar_mensaje ,  name='mensaje'),
    path("cart/add/<fruit_id>", add_fruit ,  name='cart_add'),
    path("cart/delete/<fruit_id>", delete_fruit ,  name='cart_delete'),
    path("cart/edit/<id>/<mensaje>", presentar_detail ,  name='cart_edit'),
    path("cart/edit-confirm/<fruit_id>", edit_fruit ,  name='cart_Edit_confirm'),
    
    path("cart/", show_cart ,  name='cart'),
]