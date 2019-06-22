from django import forms
from vehiculoapp.models import Vehiculo #importacion del modelo

class IngresarVehiculoForm(forms.ModelForm):

	class Meta:
		model = Vehiculo

		fields = [
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
			'funciones',
			'estado',
		]
		labels = {#dicicionario
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
			'funciones': 'Funciones',
			'estado': 'Estado del vehiculo',
		}
		widgets = {
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
			'funciones': forms.Textarea(attrs={'class':'form-group'}),
			'estado': forms.Select(attrs={'class':'form-control buttom'}),
		}
