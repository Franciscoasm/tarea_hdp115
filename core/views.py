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

        