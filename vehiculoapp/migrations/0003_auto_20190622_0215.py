# Generated by Django 2.0.2 on 2019-06-22 02:15

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('vehiculoapp', '0002_auto_20190621_2012'),
    ]

    operations = [
        migrations.AlterField(
            model_name='vehiculo',
            name='estado',
            field=models.OneToOneField(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='vehiculoapp.Estado_Vehiculo'),
        ),
    ]