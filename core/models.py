from django.db import models

from clienteapp.models import Cliente
from vehiculoapp.models import Vehiculo

class Alquiler(models.Model):
	id_vehiculo = models.OneToOneField(Vehiculo, on_delete = models.CASCADE)
	id_cliente = models.ForeignKey(Cliente, on_delete = models.CASCADE)
	fecha_alquiler = models.DateField()
	fecha_devolucion = models.DateField()
	total_pagar = models.DecimalField(max_digits = 5, decimal_places = 2)
	estado_alquiler = models.TextField(max_length = 15)