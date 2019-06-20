from django.shortcuts import render

# Create your views here.

def devoluciondevehiculo(request):
    return render(request,"vehiculoapp/devoluciondevehiculo.html")

def administrarvehiculo(request):
	return render(request, "vehiculoapp/administrarvehiculo.html")

def editarvehiculo(request):
	return render(request, "vehiculoapp/editarvehiculo.html")

def registrarvehiculo(request):
	return render(request, "vehiculoapp/registrarvehiculo.html")
