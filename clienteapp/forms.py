from django import forms
from clienteapp.models import Cliente #importacion del modelo

class ClienteForm(forms.ModelForm):

	class Meta:
		model = Cliente

		fields = [
			'nombre_cliente',
    		'apellido_cliente',
    		'fecha_nacimiento',
    		'direccion',
    		'telefono',
    		'dui',
		]
		labels = {#dicicionario
			'nombre_cliente': 'Nombre del cliente',
    		'apellido_cliente': 'Apellido del cliente',
    		'fecha_nacimiento': 'Fecha de nacimiento',
    		'direccion': 'direccion',
    		'telefono': 'Telefono',
    		'dui': 'Dui',
		}
		widgets = {
			'nombre_cliente': forms.TextInput(attrs={'class':'form-left-to-w3l', 'placeholder':'Nombre'}),
    		'apellido_cliente': forms.TextInput(attrs={'class':'form-left-to-w3l', 'placeholder':'Apellido'}),
    		'fecha_nacimiento': forms.TextInput(attrs={'type':'date', 'class':'form-left-to-w3l'}),
    		'direccion':forms.TextInput(attrs={'class':'form-left-to-w3l', 'placeholder':'Direccion'}),
    		'telefono': forms.TextInput(attrs={'class':'form-left-to-w3l', 'placeholder':'Telefono'}),
    		'dui': forms.TextInput(attrs={'class':'form-left-to-w3l', 'placeholder':'Ingresar DUI'}),
		}
