from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.views.generic import TemplateView

from .models import Cliente

from clienteapp.models import *
from clienteapp.forms import ClienteForm

from django.urls import reverse_lazy
from django.views.generic import ListView, CreateView, UpdateView, DeleteView

# Create your views here.

def menuCliente(request):
    return render(request,"clienteapp/menucliente.html")


class ClienteList(ListView):
	model = Cliente
	template_name = 'clienteapp/buscarcliente.html'



class ClienteBusq(TemplateView):
	model = Cliente

	def post(self, request, *args, **kwargs):
		buscar= request.POST['buscalo']
		clientesbusq = Cliente.objects.filter(nombre_cliente__contains = buscar)
		print(clientesbusq)
		return render(request, 'clienteapp/resultadobusqueda.html', {'clientesbusq':clientesbusq})









class ClienteCrear(CreateView):
	"""docstring for VehiculoCrear"""
	model = Cliente
	form_class = ClienteForm
	template_name = 'clienteapp/registrarcliente.html'
	success_url = reverse_lazy('cliente:clienteList')

class ClienteEditar(UpdateView):
	model = Cliente
	form_class = ClienteForm
	template_name = 'clienteapp/registrarcliente.html'
	success_url = reverse_lazy('cliente:clienteList')

class ClienteEliminar(DeleteView):
	model = Cliente
	form_class = ClienteForm
	template_name = 'clienteapp/editarcliente.html'
	success_url = reverse_lazy('cliente:clienteList')