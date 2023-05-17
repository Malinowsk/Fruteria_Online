
from django.contrib import admin
from django.urls import path
from profiles.views import Registration , login_view, CustomLogoutView, MiPerfilUpdateView,\
    add_avatar

urlpatterns = [
    path('Registration/',Registration, name="Registration"),
    path('login/', login_view, name="login"),
    path('logout/', CustomLogoutView.as_view(), name="logout"),
    path('edit-profile/', MiPerfilUpdateView.as_view(), name="edit_profile"),
    path('add-avatar/', add_avatar, name="add_avatar"),
]