from django.db import models

# Create your models here.
class Rol(models.Model):
 	nombre = models.CharField(max_length = 15)
 		 
class Usuario(models.Model):
	rol = models.OneToOneField(Rol, on_delete = models.CASCADE)
	nombre = models.CharField(max_length = 15)
	clave = models.CharField(max_length = 15)
