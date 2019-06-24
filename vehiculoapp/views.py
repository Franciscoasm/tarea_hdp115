from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.views.generic import TemplateView

from vehiculoapp.models import *
from vehiculoapp.forms import IngresarVehiculoForm

from django.urls import reverse_lazy
from django.views.generic import ListView, CreateView, UpdateView, DeleteView

# Create your views here.

def devoluciondevehiculo(request):
    return render(request,"vehiculoapp/devoluciondevehiculo.html")


def editarvehiculo(request):
	return render(request, "vehiculoapp/editarvehiculo.html")

def registrarvehiculo(request):
	return render(request, "vehiculoapp/registrarvehiculo.html")

#def ingresarVehiculoViews(request): #Formulario para ingresar vehiculo
#	if request.method == 'POST':
#		form = IngresarVehiculoForm(request.POST)
#		if form.is_valid():
#			form.save()
#		return redirect('vehiculoapp:ingresarVehiculoViews') 
#	else:
#		form = IngresarVehiculoForm()
#	return render(request, 'vehiculoapp/registrarvehiculo.html', {'form':form})
#
#def editarVehiculoViews(request): #Formulario para editar vehiculo
#	vehiculo = Vehiculo.objects.get(id = id_vehiculo)
#	if request.method == 'GET':
#		form = IngresarVehiculoForm(instance = vehiculo) 
#	else:
#		form = IngresarVehiculoForm(request.POST, instance = vehiculo)
#		if form.is_valid():
#			form.save()
#		return redirect('vehiculoapp:editarVehiculoViews')
#	return render(request, 'vehiculoapp/editarvehiculo.html', {'form':form})

class VehiculoList(ListView):
	model = Vehiculo
	template_name = 'vehiculoapp/administrarvehiculo.html'

class VehiculoList2(ListView):
	model = Vehiculo
	template_name = 'vehiculoapp/administrarvehiculocliente.html'

class VehiculoCrear(CreateView):
	"""docstring for VehiculoCrear"""
	model = Vehiculo
	form_class = IngresarVehiculoForm
	template_name = 'vehiculoapp/registrarvehiculo.html'
	success_url = reverse_lazy('vehiculo:vehiculoList')

class VehiculoEditar(UpdateView):
	model = Vehiculo
	form_class = IngresarVehiculoForm
	template_name = 'vehiculoapp/registrarvehiculo.html'
	success_url = reverse_lazy('vehiculo:vehiculoList')

class VehiculoEliminar(DeleteView):
	model = Vehiculo
	form_class = IngresarVehiculoForm
	template_name = 'vehiculoapp/editarvehiculo.html'
	success_url = reverse_lazy('vehiculo:vehiculoList')


class VehiculoBusq(TemplateView):
	model = Vehiculo

	def post(self, request, *args, **kwargs):
		buscar= request.POST['buscalo']
		vehiculobusq = Vehiculo.objects.filter(marca_Vehiculo__contains = buscar)
		print(vehiculobusq)
		return render(request, 'vehiculoapp/resultadoadministrarvehiculo.html', {'vehiculobusq':vehiculobusq})

class VehiculoBusqCliente(TemplateView):
	model = Vehiculo

	def post(self, request, *args, **kwargs):
		buscar= request.POST['buscalo']
		vehiculobusq = Vehiculo.objects.filter(marca_Vehiculo__contains = buscar)
		print(vehiculobusq)
		return render(request, 'vehiculoapp/resultadoadministrarvehiculocliente.html', {'vehiculobusq':vehiculobusq})