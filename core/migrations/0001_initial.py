# Generated by Django 2.0.2 on 2019-06-19 16:44

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='cliente',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombrecliente', models.CharField(max_length=200)),
                ('apellidocliente', models.CharField(max_length=200)),
                ('fechanacimiento', models.DateTimeField()),
                ('direccion', models.TextField()),
                ('telefono', models.CharField(max_length=200)),
                ('identificador', models.CharField(max_length=200)),
            ],
        ),
    ]
