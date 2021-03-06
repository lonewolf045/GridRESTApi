# Generated by Django 3.2.7 on 2021-09-28 06:05

import dbcomm.models
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Orders',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('order_id', models.CharField(max_length=150)),
                ('user_id', models.CharField(max_length=150)),
                ('item_id', models.CharField(max_length=150)),
                ('day_of_month', models.CharField(max_length=150)),
            ],
        ),
        migrations.CreateModel(
            name='Products',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('item_id', models.CharField(max_length=150)),
                ('major', models.CharField(max_length=150)),
                ('minor', models.CharField(max_length=150)),
                ('typeP', models.CharField(max_length=150)),
                ('name', models.CharField(max_length=150)),
                ('dprice', models.CharField(max_length=150)),
                ('oprice', models.CharField(max_length=150)),
                ('discount', models.CharField(default=0, max_length=150)),
                ('quantity', models.CharField(default=0, max_length=150)),
                ('sponsored', models.CharField(default=False, max_length=150)),
            ],
        ),
        migrations.CreateModel(
            name='User',
            fields=[
                ('email_id', models.EmailField(default='', max_length=254)),
                ('password', models.CharField(default='password', max_length=25)),
                ('user_id', models.CharField(default=dbcomm.models.random_string, max_length=24, primary_key=True, serialize=False)),
            ],
        ),
    ]
