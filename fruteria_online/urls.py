
from django.contrib import admin
from django.urls import path , include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('fruteria.urls')),
    path('perfiles/', include('perfiles.urls')),
]
