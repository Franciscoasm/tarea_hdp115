from django.conf.urls import url, include
from django.urls import path

from vehiculoapp.views import VehiculoList

urlpatterns = [
    url(r'^administrarVehiculo$', VehiculoList.as_view(), name = "vehiculoList"),
]