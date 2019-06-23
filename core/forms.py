from django import forms
from clienteapp.models import Cliente #importacion del modelo
from vehiculoapp.models import Vehiculo #importacion del modelo

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
            'apellido_cliente': 'Apellido',
            'fecha_nacimiento': 'Fecha de nacimiento',
            'direccion': 'direccion',
            'telefono': 'Telefono',
            'dui': 'Dui',
        }
        widgets = {
            'nombre_cliente': forms.TextInput(attrs={'class':'form-left-to-w3l', 'placeholder':'Nombres'}),
            'apellido_cliente': forms.TextInput(attrs={'class':'form-left-to-w3l', 'placeholder':'Apellidos'}),
            'fecha_nacimiento': forms.TextInput(attrs={'type': 'date','class':'form-left-to-w3l'}),
            'direccion': forms.TextInput(attrs={'class':'form-left-to-w3l', 'placeholder':'Direccion'}),
            'telefono': forms.TextInput(attrs={'class':'form-left-to-w3l', 'placeholder':'Telefono'}),
            'dui': forms.TextInput(attrs={'class':'form-left-to-w3l', 'placeholder':'Dui'}),
        }


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
            'marca_Vehiculo': forms.TextInput(attrs={'class':'form-left-to-w3l', 'disabled': 'True'}),
            'tipo_Vehiculo': forms.Select(attrs={'class':'form-control buttom', 'disabled': 'True'}),
            'tipo_Transmicion': forms.Select(attrs={'class':'form-control buttom', 'disabled': 'True'}),
            'anio': forms.TextInput(attrs={'class':'form-left-to-w3l', 'disabled': 'True'}),
            'numero_puertas': forms.TextInput(attrs={'class':'form-left-to-w3l', 'disabled': 'True'}),
            'modelo_Vehiculo': forms.TextInput(attrs={'class':'form-left-to-w3l', 'disabled': 'True'}),
            'color': forms.TextInput(attrs={'class':'form-left-to-w3l', 'disabled': 'True'}),
            'capacidad_personas': forms.TextInput(attrs={'class':'form-left-to-w3l', 'disabled': 'True'}),
            'capacidad_maletero': forms.TextInput(attrs={'class':'form-left-to-w3l', 'disabled': 'True'}),
            'placa': forms.TextInput(attrs={'class':'form-left-to-w3l', 'disabled': 'True'}),
            'tipo_Combustible': forms.Select(attrs={'class':'form-control buttom', 'disabled': 'True'}),
            'precio': forms.TextInput(attrs={'class':'form-left-to-w3l', 'disabled': 'True'}),
            'funciones': forms.Textarea(attrs={'class':'form-group', 'disabled': 'True'}),
            'estado': forms.Select(attrs={'class':'form-control buttom', 'disabled': 'True'}),
        }