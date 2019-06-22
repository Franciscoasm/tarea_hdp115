# Generated by Django 2.0.2 on 2019-06-22 03:25

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Estado_Vehiculo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('estado', models.CharField(blank=True, max_length=20, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Marca_Vehiculo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('marca_Vehiculo', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Modelo_Vehiculo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('modelo_Vehiculo', models.CharField(max_length=50)),
                ('marca_Vehiculo', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='vehiculoapp.Marca_Vehiculo')),
            ],
        ),
        migrations.CreateModel(
            name='Tipo_Combustible',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tipo_Combustible', models.CharField(max_length=20)),
            ],
        ),
        migrations.CreateModel(
            name='Tipo_Vehiculo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tipo_Vehiculo', models.CharField(max_length=20)),
            ],
        ),
        migrations.CreateModel(
            name='Transmicion',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tipo_Transmicion', models.CharField(max_length=15)),
            ],
        ),
        migrations.CreateModel(
            name='Vehiculo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('numero_puertas', models.IntegerField()),
                ('capacidad_personas', models.IntegerField()),
                ('color', models.CharField(max_length=20)),
                ('placa', models.CharField(max_length=7)),
                ('funciones', models.TextField()),
                ('capacidad_maletero', models.IntegerField()),
                ('anio', models.IntegerField()),
                ('precio', models.DecimalField(decimal_places=2, max_digits=5)),
                ('estado', models.OneToOneField(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='vehiculoapp.Estado_Vehiculo')),
                ('marca_Vehiculo', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='vehiculoapp.Marca_Vehiculo')),
                ('modelo_Vehiculo', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='vehiculoapp.Modelo_Vehiculo')),
                ('tipo_Combustible', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='vehiculoapp.Tipo_Combustible')),
                ('tipo_Transmicion', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='vehiculoapp.Transmicion')),
                ('tipo_Vehiculo', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='vehiculoapp.Tipo_Vehiculo')),
            ],
        ),
    ]
