from django.shortcuts import render, redirect
from django.http import HttpResponse

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

class ClienteCrear(CreateView):
	"""docstring for VehiculoCrear"""
	model = Cliente
	form_class = ClienteForm
	template_name = 'clienteapp/registrarcliente.html'
	success_url = reverse_lazy('login')

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