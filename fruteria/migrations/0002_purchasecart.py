# Generated by Django 4.2 on 2023-05-03 12:59

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('fruteria', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='PurchaseCart',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('quantity', models.IntegerField()),
                ('estado', models.CharField(max_length=256)),
                ('purchase_code', models.CharField(blank=True, max_length=256, null=True)),
                ('fruit', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to='fruteria.fruit')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.RESTRICT, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
