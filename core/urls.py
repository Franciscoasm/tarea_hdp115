from django.conf.urls import url, include
from django.urls import path

from core.views import *

urlpatterns = [
	url(r'^menuAlquiler',menuAlquiler, name="menuAlquiler"),
	url(r'^menuAdministrador$', menuAdministrador, name = "menuAdministrador"),
	url(r'^buscarAlquiler', buscarAlquiler, name= "buscarAlquiler"),
	url(r'^resultadoBusquedaAlquiler$', AlquilerBusq.as_view(), name = "resultadoBusquedaAlquiler"),
	url(r'^registrarAlquiler', SolicitudAlquiler.as_view(), name = "registrarAlquiler"),
	url(r'^seguro', seguro, name = "seguro"),
]