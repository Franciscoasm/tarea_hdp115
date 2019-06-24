from django.conf.urls import url, include
from django.urls import path

from vehiculoapp.views import VehiculoList, VehiculoCrear, VehiculoEditar, VehiculoEliminar, VehiculoBusq, VehiculoList2,VehiculoBusqCliente

urlpatterns = [
    url(r'^administrarVehiculo$', VehiculoList.as_view(), name = "vehiculoList"),
    url(r'^administrarVehiculoCliente$', VehiculoList2.as_view(), name = "vehiculoList2"),
    url(r'^editarVehiculo/(?P<pk>\d+)/$', VehiculoEditar.as_view(), name = 'editarVehiculo'),
    url(r'^eliminarVehiculo/(?P<pk>\d+)/$', VehiculoEliminar.as_view(), name = 'eliminarVehiculo'),
    url(r'^nuevoVehiculo', VehiculoCrear.as_view(), name= "registrarVehiculo"),
    url(r'^resultadoadministrarvehiculo$', VehiculoBusq.as_view(), name = "resultadoadministrarvehiculo"),
    url(r'^resultadoadministrarvehiculocliente$', VehiculoBusqCliente.as_view(), name = "resultadoadministrarvehiculocliente"),
]