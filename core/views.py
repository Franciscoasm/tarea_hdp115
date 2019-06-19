from django.shortcuts import render, HttpResponse

# Create your views here.
def registrarcliente(request):
    return render(request,"core/registrarcliente.html")

def buscarcliente(request):
    return render(request,"core/buscarcliente.html")

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
        