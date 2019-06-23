from django.shortcuts import render, redirect
from django.http import HttpResponseRedirect
from django.views.generic import TemplateView

from .models import Alquiler, Cliente, Vehiculo
from vehiculoapp.views import VehiculoEditar
from core.forms import *
from django.urls import reverse_lazy
from django.views.generic import ListView, CreateView, UpdateView, DeleteView


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

class SolicitudAlquiler(CreateView):
	model = Alquiler
	template_name = 'core/registraralquiler.html'
	form_class = IngresarVehiculoForm
	second_form_class = ClienteForm
	success_url = reverse_lazy('alquiler:buscarAlquiler')

	def get_context_data(self, **kwargs):
		context = super(SolicitudAlquiler, self).get_context_data(**kwargs)
		if 'form' not in context:
			context['form'] = self.form_class(self.request.POST)
		if 'form2' not in context:
			context['form'] = self.second_form_class(self.request.POST)
		return context

	def post(self, request, *args, **kwargs):
		self.object = self.get_object
		form = self.form_class(request.GET)
		form2 = self.second_form_class(request.POST)
		if form.is_valid() and form2.is_valid():
			alquiler = form.save()
			alquiler.Cliente = form2.save()
			alquiler.save()
			return HttpResponseRedirect(self.get_succes_url())
		else:
			return self.render_to_response(self.get_context_data(form = form, form2 = form2))

class VehiculoEditar(UpdateView):
	model = Vehiculo
	form_class = IngresarVehiculoForm
	template_name = 'core/registraralquiler.html'
	success_url = reverse_lazy('alquiler:buscarAlquiler')


class AlquilerBusq(TemplateView):
	model = Alquiler
#	template_name = 'core/resultadobuscaralquiler.html'
	def post(self, request, *args, **kwargs):
		buscar= request.POST['buscalo']
		alquilerbusq = Alquiler.objects.filter(id__contains = buscar)
		print(alquilerbusq)
		return render(request, 'core/resultadobuscaralquiler.html', {'alquilerbusq':alquilerbusq})


