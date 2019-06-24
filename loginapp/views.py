from django.shortcuts import render
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
from django.views.generic import CreateView
from django.urls import reverse_lazy
from .forms import RegistroForm

# Create your views here.
def login(request):
	return render (request, "loginapp/login.html")

class RegistroUsuario(CreateView):
	model = User
	template_name = "loginapp/login.html"
	form_class = RegistroForm
	success_url = reverse_lazy('vehiculo: vehiculoList')