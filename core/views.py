from django.shortcuts import render, HttpResponse

# Create your views here.
def menucliente(request):
    return render(request,"core/menucliente.html")

def devoluciondevehiculo(request):
    return render(request,"core/devoluciondevehiculo.html")

def login(request):
	return render (request, "core/login.html")

def menuadministrador(request):
	return render(request, "core/menuadministrador.html")

def administraralquiler(request):
	return render(request, "core/administraralquiler.html")

def administrarvehiculo(request):
	return render(request, "core/administrarvehiculo.html")

def buscaralquiler(request):
	return render(request, "core/buscaralquiler.html")

def editarvehiculo(request):
	return render(request, "core/editarvehiculo.html")

def registraralquiler(request):
	return render(request, "core/registraralquiler.html")

def registrarvehiculo(request):
	return render(request, "core/registrarvehiculo.html")

def seguro(request):
	return render(request, "core/seguro.html")


        