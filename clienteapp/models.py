from django.db import models

# Create your models here.
class Cliente(models.Model):
    nombre_cliente = models.CharField(max_length = 30)
    apellido_cliente = models.CharField(max_length = 30)
    fecha_nacimiento = models.DateField()
    direccion = models.TextField(max_length = 50)
    telefono = models.CharField(max_length=12) 
    dui = models.CharField(max_length = 9, unique = True) 

    def __str__(self):
        return '{}{}'.format(self.nombre_cliente, self.apellido_cliente)
