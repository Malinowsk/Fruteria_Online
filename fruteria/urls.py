
from django.contrib import admin
from django.urls import path

from fruteria.views import presentar_home , presentar_catalogo , presentar_contacto , presentar_about , presentar_detail , presentar_mensaje, add_fruit

urlpatterns = [
    path("", presentar_home ,  name='home'),
    path("catalogo/", presentar_catalogo ,  name='catalogo'),
    path("contacto/", presentar_contacto ,  name='contacto'),
    path("about/", presentar_about ,  name='about'),
    path("detail/<id>", presentar_detail ,  name='detail'),
    path("mensaje/", presentar_mensaje ,  name='mensaje'),
    path("cart/add/<fruit_id>", add_fruit ,  name='cart_add'),
]