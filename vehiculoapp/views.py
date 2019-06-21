from django.shortcuts import render, HttpResponse
from .models import Vehiculo

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
