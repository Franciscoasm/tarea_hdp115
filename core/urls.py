from django.conf.urls import url, include
from django.urls import path

from core.views import *

urlpatterns = [
	url(r'^menuAlquiler',menualquiler, name="menuAlquiler"),
	url(r'^menuAdministrador$', menuadministrador, name = "menuAdministrador"),
	url(r'^buscarAlquiler', buscaralquiler, name= "buscarAlquiler"),
	url(r'^registrarAlquiler', registraralquiler, name = "registrarAlquiler"),
	url(r'^seguro', seguro, name = "seguro"),
]