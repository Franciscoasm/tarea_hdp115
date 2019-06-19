from django.shortcuts import render, HttpResponse

# Create your views here.
def registrarcliente(request):
    return render(request,"clienteapp/registrarcliente.html")