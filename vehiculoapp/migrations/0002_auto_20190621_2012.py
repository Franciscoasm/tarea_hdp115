# Generated by Django 2.0.2 on 2019-06-21 20:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('vehiculoapp', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='vehiculo',
            name='capacidad_maletero',
            field=models.IntegerField(),
        ),
    ]