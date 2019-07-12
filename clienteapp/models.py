from django.db import models


# Create your models here.
class Cliente(models.Model):
    nombre_usuario = models.CharField(max_length = 10, unique = True)
    nombre_cliente = models.CharField(max_length = 30)
    apellido_cliente = models.CharField(max_length = 30)
    fecha_nacimiento = models.DateField()
    direccion = models.TextField(max_length = 50)
    telefono = models.PositiveIntegerField() 
    dui = models.PositiveIntegerField(max_length = 9, unique = True)
    password = models.TextField(max_length = 15)

    def __str__(self):
        return '{}{}'.format(self.nombre_cliente, self.apellido_cliente)