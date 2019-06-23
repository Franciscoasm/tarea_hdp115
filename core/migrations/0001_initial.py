from django.db import migrations, models
import django.db.models.deletion

class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('clienteapp', '0001_initial'),
        ('vehiculoapp', '0004_auto_20190622_2152'),
        ('vehiculoapp', '0004_auto_20190622_2152'),
        ('clienteapp', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Alquiler',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fecha_alquiler', models.DateField()),
                ('fecha_devolucion', models.DateField()),
                ('total_pagar', models.DecimalField(decimal_places=2, max_digits=5)),
                ('estado_alquiler', models.TextField(max_length=15)),
                ('id_cliente', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='clienteapp.Cliente')),
                ('id_vehiculo', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='vehiculoapp.Vehiculo')),
            ],
        ),
    ]
