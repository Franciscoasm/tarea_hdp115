from django import forms
from clienteapp.models import Cliente #importacion del modelo


class ClienteForm(forms.ModelForm):

	class Meta:
		model = Cliente

		fields = [
			'nombre_usuario',
    		'nombre_cliente',
    		'apellido_cliente',
    		'fecha_nacimiento',
    		'direccion',
    		'telefono',
    		'dui',
    		'password',

		]
		labels = {#dicicionario
			'nombre_usuario' :'Nombre de usuario',
    		'nombre_cliente': 'Nombre del cliente',
    		'apellido_cliente': 'Apellido',
    		'fecha_nacimiento': 'Fecha de nacimiento',
    		'direccion': 'direccion',
    		'telefono': 'Telefono',
    		'dui': 'Dui',
    		'password': 'Contra',
		}
		widgets = {
			'nombre_usuario': forms.TextInput(attrs={'class':'form-left-to-w3l', 'placeholder':'Nombre de usuario'}),
    		'nombre_cliente': forms.TextInput(attrs={'class':'form-left-to-w3l', 'placeholder':'Nombres'}),
    		'apellido_cliente': forms.TextInput(attrs={'class':'form-left-to-w3l', 'placeholder':'Apellidos'}),
    		'fecha_nacimiento': forms.TextInput(attrs={'type': 'date','class':'form-left-to-w3l'}),
    		'direccion': forms.TextInput(attrs={'class':'form-left-to-w3l', 'placeholder':'Direccion'}),
    		'telefono': forms.TextInput(attrs={'class':'form-left-to-w3l', 'placeholder':'Telefono'}),
    		'dui': forms.TextInput(attrs={'class':'form-left-to-w3l', 'placeholder':'Dui'}),
    		'password': forms.TextInput(attrs={'type': 'password','class':'form-left-to-w3l', 'placeholder':'Password'}),
		}