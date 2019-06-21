"""proyectosivarcar URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from core import views as core_views
from clienteapp import views as clienteapp_views
from vehiculoapp import views as vehiculoapp_views
from loginapp import views as loginapp_views
urlpatterns = [
    path('menucliente', clienteapp_views.menucliente, name="menucliente"),
    path('', clienteapp_views.buscarcliente, name="buscarcliente"),
    path('registrarcliente', clienteapp_views.registrarcliente, name="registrarcliente"),
    path('devoluciondevehiculo', vehiculoapp_views.devoluciondevehiculo, name="devoluciondevehiculo"),
    path('login', core_views.login, name= "login"),
    path('menuadministrador', core_views.menuadministrador, name = "menuadministrador"),
    path('administraralquiler', core_views.administraralquiler, name= "administraralquiler"),
    path('administrarvehiculo', vehiculoapp_views.administrarvehiculo, name = "administrarvehiculo"),
    path('buscaralquiler', core_views.buscaralquiler, name= "buscaralquiler"),
    path('editarvehiculo', vehiculoapp_views.editarvehiculo, name = "editarvehiculo"),
    path('registraralquiler', core_views.registraralquiler, name = "registraralquiler"),
    path('registrarvehiculo', vehiculoapp_views.registrarvehiculo, name= "registrarvehiculo"),
    path('seguro', core_views.seguro, name = "seguro"),
    path('admin/', admin.site.urls),
]
