from django.conf.urls import url, include
from django.urls import path

from vehiculoapp.views import VehiculoList, VehiculoCrear, VehiculoEditar, VehiculoEliminar

urlpatterns = [
    url(r'^administrarVehiculo$', VehiculoList.as_view(), name = "vehiculoList"),
    url(r'^editarVehiculo/(?P<pk>\d+)/$', VehiculoEditar.as_view(), name = "editarVehiculo"),
    url(r'^eliminarVehiculo/(?P<pk>\d+)/$', VehiculoEliminar.as_view(), name = "eliminarVehiculo"),
    url(r'^nuevoVehiculo', VehiculoCrear.as_view(), name= "registrarVehiculo"),
]