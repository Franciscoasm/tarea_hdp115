from django.db import models

# Create your models here.
class Vehiculo(models.Model):
	marca_Vehiculo = models.CharField(max_length=30)
	tipo_Vehiculo = models.CharField(max_length=30)
	tipo_Combustible = models.CharField(max_length=30)
	tipo_Transmicion = models.CharField(max_length=30)
	numero_puertas = models.IntegerField()
	capacidad_personas = models.IntegerField()
	color = models.CharField(max_length = 20)
	placa = models.CharField(max_length = 7)
	funciones = models.TextField()
	capacidad_maletero = models.IntegerField()
	anio = models.IntegerField()
	estado = models.CharField(max_length=30)
	modelo_Vehiculo = models.CharField(max_length=30)
	precio = models.CharField(max_length=30)

