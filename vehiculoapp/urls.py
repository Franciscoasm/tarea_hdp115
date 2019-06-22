from django.conf.urls import url, include

from vehiculoapp.views import *

urlpatterns = [
	path('editarvehiculo', vehiculoapp_views.editarvehiculo, name= "editarvehiculo"),
    path('registrarvehiculo', vehiculoapp_views.registrarvehiculo, name= "registrarvehiculo"),
    path('ingresarVehiculoViews', vehiculoapp_views.ingresarVehiculoViews, name= "ingresarVehiculoViews"),
    path('', vehiculoapp_views.editarVehiculoViews, name= "editarVehiculoViews"),
]