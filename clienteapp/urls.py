from django.conf.urls import url, include
from django.urls import path

from clienteapp.views import ClienteList, ClienteCrear, ClienteEditar, ClienteEliminar, menuCliente,ClienteBusq

urlpatterns = [
	url(r'^menuCliente$', menuCliente, name="menucliente"),
    url(r'^buscarCliente$', ClienteList.as_view(), name = "clienteList"),
    url(r'^nuevoCliente$', ClienteCrear.as_view(), name = "nuevoCliente"),
    url(r'^editarCliente/(?P<pk>\d+)/$', ClienteEditar.as_view(), name = "editarCliente"),
    url(r'^resultadoBusqueda$', ClienteBusq.as_view(), name = "resultadoBusqueda"),
]