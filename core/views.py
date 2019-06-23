from django.shortcuts import render, redirect
from django.http import HttpResponse



from django.urls import reverse_lazy
from django.views.generic import ListView, CreateView, UpdateView, DeleteView


# Create your views here.

def menuadministrador(request):
	return render(request, "core/menuadministrador.html")


def buscaralquiler(request):
	return render(request, "core/buscaralquiler.html")

def registraralquiler(request):
	return render(request, "core/registraralquiler.html")

def seguro(request):
	return render(request, "core/seguro.html")

def menualquiler(request):
	return render(request, "core/menualquiler.html")


        