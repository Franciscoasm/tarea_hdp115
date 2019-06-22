from django.contrib import admin


from vehiculoapp.models import *

# Register your models here.

admin.site.register(Transmicion)
admin.site.register(Tipo_Vehiculo)
admin.site.register(Marca_Vehiculo)
admin.site.register(Tipo_Combustible)
admin.site.register(Estado_Vehiculo)
admin.site.register(Vehiculo)