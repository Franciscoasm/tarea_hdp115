from django.shortcuts import render, HttpResponse

# Create your views here.
def menuadministrador(request):
	return render(request, "core/menuadministrador.html")

def administraralquiler(request):
	return render(request, "core/administraralquiler.html")

def buscaralquiler(request):
	return render(request, "core/buscaralquiler.html")

def registraralquiler(request):
	return render(request, "core/registraralquiler.html")

def seguro(request):
	return render(request, "core/seguro.html")


        