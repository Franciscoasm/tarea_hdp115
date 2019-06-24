from django.shortcuts import render, redirect
from django.http import HttpResponseRedirect
from django.views.generic import TemplateView

from .models import Alquiler, Cliente, Vehiculo
from vehiculoapp.views import VehiculoEditar
from .forms import *
from django.urls import reverse_lazy
from django.views.generic import ListView, CreateView, UpdateView, DeleteView
from .forms import AlquilerForm


# Create your views here.

def menuAdministrador(request):
	return render(request, "core/menuadministrador.html")


def buscarAlquiler(request):
	return render(request, "core/buscaralquiler.html")


def registrarAlquiler(request):
	return render(request, "core/registraralquiler.html")

def seguro(request):
	return render(request, "core/seguro.html")

def menuAlquiler(request):
	return render(request, "core/menualquiler.html")

class AlquilerCreateView(CreateView):
	model = Alquiler
    form_class = AlquilerForm
    template_name = 'core/registraralquiler.html'
	success_url = reverse_lazy('alquiler:buscarAlquiler')


class SuccessView(TemplateView):
    template_name = 'success.html'


class AlquilerBusq(TemplateView):
	model = Alquiler
#	template_name = 'core/resultadobuscaralquiler.html'
	def post(self, request, *args, **kwargs):
		buscar= request.POST['buscalo']
		alquilerbusq = Alquiler.objects.filter(id__contains = buscar)
		print(alquilerbusq)
		return render(request, 'core/resultadobuscaralquiler.html', {'alquilerbusq':alquilerbusq})


