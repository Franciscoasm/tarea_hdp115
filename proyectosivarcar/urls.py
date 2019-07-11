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
from django.conf.urls import url, include
from django.contrib import admin
from django.contrib.auth import login
from django.contrib.auth.views import LoginView, LogoutView, login
from django.urls import path
from core import views as core_views
from clienteapp import views as clienteapp_views
from vehiculoapp import views as vehiculoapp_views
from loginapp import views as loginapp_views
urlpatterns = [
    #path('buscarcliente', clienteapp_views.buscarcliente, name="buscarcliente"),
    #path('registrarcliente', clienteapp_views.registrarcliente, name="registrarcliente"),
    #path('devoluciondevehiculo', vehiculoapp_views.devoluciondevehiculo, name="devoluciondevehiculo"),
    #path('login', loginapp_views.login, name= "login"),
    url(r'^vehiculo/', include (('vehiculoapp.urls', 'vehiculo'), namespace = 'vehiculo')),
    url(r'^cliente/', include (('clienteapp.urls', 'cliente'), namespace = 'cliente')),
    url(r'^alquiler/', include (('core.urls', 'alquiler'), namespace = 'alquiler')),
    url(r'^login/', include(('loginapp.urls', 'login'), namespace = 'login')),
    #url(r'^$', login, {'template_name':'loginapp/login.html'}, name = 'login'),
    url(r'^$', LoginView.as_view(template_name = 'loginapp/login.html'), name = 'login'),
    #url(r'^$', LogoutView.as_view(template_name = 'loginapp/login.html'), name = 'logout'),
   #path('editarvehiculo', vehiculoapp_views.editarvehiculo, name = "editarvehiculo"),
   # path('', vehiculoapp_views.ingresarVehiculoViews, name= "ingresarVehiculoViews"),
   # path('editarVehiculoView', vehiculoapp_views.editarVehiculoViews, name= "editarVehiculoViews"),
    path('admin/', admin.site.urls),
]