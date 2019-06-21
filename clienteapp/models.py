from django.db import models

# Create your models here.
class cliente(models.Model):
    ididentificador = models.CharField(max_length=100, null=True, blank=True, unique=True)
    nombrecliente = models.CharField(max_length=30)
    apellidocliente = models.CharField(max_length=30)
    fechanacimiento = models.DateTimeField()
    direccion = models.TextField()
    telefono = models.CharField(max_length=15) 
    identificador = models.CharField(max_length=200) 

    class Meta:
        ordering=["-ididentificador"]

    def __str__(self):
        return self.nombrecliente
