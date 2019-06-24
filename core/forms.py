from django import forms
from django.forms import ModelForm

from clienteapp.models import Cliente #importacion del modelo
from vehiculoapp.models import Vehiculo #importacion del modelo
from .models import Alquiler

class AlquilerForm(forms.ModelForm):

	class Meta:
		model = Alquiler

		fields = [
    		'nombre_cliente',
    		'apellido_cliente',
    		'fecha_nacimiento',
    		'direccion',
    		'telefono',
    		'dui',
            'marca_Vehiculo',
			'tipo_Vehiculo',
			'tipo_Transmicion',
			'anio',
			'numero_puertas',
			'modelo_Vehiculo',
			'color',
			'capacidad_personas',
			'capacidad_maletero',
			'placa',
			'tipo_Combustible',
			'precio',
			'fecha_alquiler',
			'fecha_devolucion',
			'total_pagar',

		]
		labels = {#dicicionario
    		'nombre_cliente': 'Nombre del cliente',
    		'apellido_cliente': 'Apellido',
    		'fecha_nacimiento': 'Fecha de nacimiento',
    		'direccion': 'direccion',
    		'telefono': 'Telefono',
    		'dui': 'Dui',
            'marca_Vehiculo': 'Marca',
			'tipo_Vehiculo' : 'Tipo de vehiculo',
			'tipo_Transmicion': 'Transmicion',
			'anio': 'Anio',
			'numero_puertas': 'Numero de puertas',
			'modelo_Vehiculo': 'Modelo de vehiculo',
			'color': 'Color',
			'capacidad_personas': 'Capacidad de personas',
			'capacidad_maletero': 'Capacidad de maletero',
			'placa': 'Numero de placa',
			'tipo_Combustible': 'Tipo de combustible',
			'precio': 'Precio diario',
			'fecha_alquiler': 'Fecha Alquiler',
			'fecha_devolucion': 'Fecha Devolucion',
			'total_pagar': 'Total pagar',

		}
		widgets = {
    		'nombre_cliente': forms.TextInput(attrs={'class':'form-left-to-w3l', 'placeholder':'Nombres'}),
    		'apellido_cliente': forms.TextInput(attrs={'class':'form-left-to-w3l', 'placeholder':'Apellidos'}),
    		'fecha_nacimiento': forms.TextInput(attrs={'type': 'date','class':'form-left-to-w3l'}),
    		'direccion': forms.TextInput(attrs={'class':'form-left-to-w3l', 'placeholder':'Direccion'}),
    		'telefono': forms.TextInput(attrs={'class':'form-left-to-w3l', 'placeholder':'Telefono'}),
    		'dui': forms.TextInput(attrs={'class':'form-left-to-w3l', 'placeholder':'Dui'}),
            'marca_Vehiculo': forms.TextInput(attrs={'class':'form-left-to-w3l'}),
			'tipo_Vehiculo': forms.Select(attrs={'class':'form-control buttom'}),
			'tipo_Transmicion': forms.Select(attrs={'class':'form-control buttom'}),
			'anio': forms.TextInput(attrs={'class':'form-left-to-w3l'}),
			'numero_puertas': forms.TextInput(attrs={'class':'form-left-to-w3l'}),
			'modelo_Vehiculo': forms.TextInput(attrs={'class':'form-left-to-w3l'}),
			'color': forms.TextInput(attrs={'class':'form-left-to-w3l'}),
			'capacidad_personas': forms.TextInput(attrs={'class':'form-left-to-w3l'}),
			'capacidad_maletero': forms.TextInput(attrs={'class':'form-left-to-w3l'}),
			'placa': forms.TextInput(attrs={'class':'form-left-to-w3l'}),
			'tipo_Combustible': forms.Select(attrs={'class':'form-control buttom'}),
			'precio': forms.TextInput(attrs={'class':'form-left-to-w3l'}),
			'fecha_alquiler': forms.TextInput(attrs={'type': 'date','class':'form-left-to-w3l'}),
			'fecha_devolucion': forms.TextInput(attrs={'type': 'date','class':'form-left-to-w3l'}),
			'total_pagar': forms.TextInput(attrs={'class':'form-left-to-w3l'}),
		}