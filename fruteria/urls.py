
from django.contrib import admin
from django.urls import path

from fruteria.views import presentar_home , presentar_catalogo , presentar_contacto , presentar_about

urlpatterns = [
    path("home/", presentar_home ,  name='home'),
    path("catalogo/", presentar_catalogo ,  name='catalogo'),
    path("contacto/", presentar_contacto ,  name='contacto'),
    path("about/", presentar_about ,  name='about'),
]