# Generated by Django 2.0.2 on 2019-06-20 18:39

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('clienteapp', '0002_auto_20190620_1214'),
    ]

    operations = [
        migrations.AddField(
            model_name='cliente',
            name='ididentificador',
            field=models.CharField(blank=True, max_length=100, null=True, unique=True),
        ),
    ]
