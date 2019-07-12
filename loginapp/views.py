from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth import login, logout, authenticate
from django.contrib import messages
from django.views.generic import CreateView
from django.urls import reverse_lazy
from .forms import RegistroForm

# Create your views here.
def logout_request(request):
	logout(request)
	messages.info(request, "Sesion cerrada exitosamente")
	return redirect("/")

#Creo que no es necesario esto
#def login_request(request):
	#if request.method == "POST":
	#	form = AuthenticationForm(request, data=request.POST)
	#	if form.is_valid():
	#		username = form.cleaned_data.get('username')
	#		password = form.cleaned_data.get('password')
		#	user = authenticate(username = username, password = password)
		#	if user is not None:
		#		login(request, user)
		#		messages.info(request, f'Has iniciado sesion como {username}')
		#		return redirect('alquiler:menuAdministrador')
		#	else:
			#	messages.error(request, "Usuario o contraseña invalidos")
		#else:
		#	messages.error(request, "Usuario o contraseña invalidos")

#	form = AuthenticationForm()
#	return render(request, "loginapp/login.html", {"form":form})

#Esto si es necesario
class RegistroUsuario(CreateView):
	model = User
	template_name = "loginapp/registrar.html"
	form_class = RegistroForm
	#return redirect('/')
	#success_url = reverse_lazy('vehiculo: vehiculoList')
	success_url = reverse_lazy('login')