from django.conf.urls import url, include
from django.urls import path

from loginapp.views import RegistroUsuario

urlpatterns = [
	url(r'^registrar', RegistroUsuario.as_view(), name = 'registrar')
]