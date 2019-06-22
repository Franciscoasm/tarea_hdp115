from django.shortcuts import render, HttpResponse
from .models import Vehiculo

from vehiculoapp.forms import IngresarVehiculoForm
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

def ingresarVehiculoViews(request): #Formulario para ingresar vehiculo
	if request.method == 'POST':
		form = IngresarVehiculoForm(request.POST)
		if form.is_valid():
			form.save()
		return redirect('vehiculoapp/registrarvehiculo.html') 
	else:
		form = IngresarVehiculoForm()
	return render(request, 'vehiculoapp/registrarvehiculo.html', {'form':form})

def editarVehiculoViews(request): #Formulario para editar vehiculo
	if request.method == 'POST':
		form = IngresarVehiculoForm(request.POST)
		if form.is_valid():
			form.save()
		return redirect('vehiculoapp:Vehiculo') 
	else:
		form = IngresarVehiculoForm()
	return render(request, 'vehiculoapp/editarvehiculo.html', {'form':form})