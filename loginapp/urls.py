from django.conf.urls import url, include
from django.urls import path
from django.contrib.auth.views import LoginView, LogoutView

from loginapp.views import RegistroUsuario, login_request
urlpatterns = [
	#url(r'^$', LoginView.as_view()),
	url(r'^login', login_request, name = 'login'),
	#url(r'^$', LoginView.as_view(template_name = 'loginapp/login.html'), name = 'login'),
    #url(r'^$', LogoutView.as_view(template_name = 'loginapp/login.html'), name = 'logout'),
	url(r'^registrar', RegistroUsuario.as_view(), name = 'registrar'),
]