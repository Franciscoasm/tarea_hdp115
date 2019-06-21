from django.db import models

# Create your models here.
class cliente(models.Model):
    nombrecliente=models.CharField(max_length=30)
    apellidocliente=models.CharField(max_length=30)
    fechanacimiento=models.DateTimeField()
    direccion=models.TextField()
    telefono=models.CharField(max_length=15) 
    identificador=models.CharField(max_length=200) 