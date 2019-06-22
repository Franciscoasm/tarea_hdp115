from django.db import models

# Create your models here.

class Transmicion(models.Model):
	tipo_Transmicion = models.CharField(max_length = 15)

	def __str__(self):
		return '{}'.format(self.tipo_Transmicion)


class Tipo_Vehiculo(models.Model):
	tipo_Vehiculo = models.CharField(max_length = 20)

	def __str__(self):
		return '{}'.format(self.tipo_Vehiculo)


class Tipo_Combustible(models.Model):
	tipo_Combustible = models.CharField(max_length = 20)

	def __str__(self):
		return '{}'.format(self.tipo_Combustible)


class Estado_Vehiculo(models.Model):
	estado = models.CharField(max_length = 20)

	def __str__(self):
		return '{}'.format(self.estado)


class Vehiculo(models.Model):
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
	estado = models.ForeignKey(Estado_Vehiculo, on_delete = models.CASCADE)
	modelo_Vehiculo = models.CharField(max_length = 20)
	precio = models.DecimalField(max_digits = 5, decimal_places = 2)