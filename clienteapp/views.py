from django.shortcuts import render, HttpResponse
from .models import cliente

# Create your views here.
def registrarcliente(request):
    return render(request,"clienteapp/registrarcliente.html")

def buscarcliente(request):
    list_cliente = cliente.objects.all()
    return render(request,"clienteapp/buscarcliente.html",{'list_cliente':list_cliente})