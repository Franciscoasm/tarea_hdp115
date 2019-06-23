from django.shortcuts import render, redirect
from django.http import HttpResponse

from vehiculoapp.models import *
from vehiculoapp.forms import IngresarVehiculoForm

from django.urls import reverse_lazy
from django.views.generic import ListView, CreateView, UpdateView, DeleteView

# Create your views here.

def devoluciondevehiculo(request):
    return render(request,"vehiculoapp/devoluciondevehiculo.html")

def administrarvehiculo(request):
	list_vehiculo = Vehiculo.objects.all()
	return render(request, "vehiculoapp/administrarvehiculo.html",{'list_vehiculo':list_vehiculo})

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