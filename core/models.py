from django.db import models

from clienteapp.models import Cliente
from vehiculoapp.models import *

class Alquiler(models.Model):
	marca_Vehiculo = models.CharField(max_length = 20)
	tipo_Vehiculo = models.ForeignKey(Tipo_Vehiculo, on_delete = models.CASCADE)
	tipo_Combustible = models.ForeignKey(Tipo_Combustible, on_delete = models.CASCADE)
	tipo_Transmicion = models.ForeignKey(Transmicion, on_delete = models.CASCADE)
	numero_puertas = models.IntegerField()
	capacidad_personas = models.IntegerField()
	color = models.CharField(max_length = 20)
	placa = models.CharField(max_length = 7)
	funciones = models.TextField()
	capacidad_maletero = models.IntegerField()
	anio = models.IntegerField()
	modelo_Vehiculo = models.CharField(max_length = 20)
	precio = models.DecimalField(max_digits = 5, decimal_places = 2)
	nombre_cliente = models.CharField(max_length = 30)
	apellido_cliente = models.CharField(max_length = 30)
	fecha_nacimiento = models.DateField()
	direccion = models.TextField(max_length = 50)
	telefono = models.CharField(max_length=12) 
	dui = models.CharField(max_length = 9, unique = True)
	fecha_alquiler = models.DateField()
	fecha_devolucion = models.DateField()
	total_pagar = models.DecimalField(max_digits = 5, decimal_places = 2)