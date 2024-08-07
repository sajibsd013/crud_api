# Generated by Django 4.0.4 on 2024-07-06 19:04

from django.db import migrations, models
import students.models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Students',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('StudentID', models.CharField(max_length=60)),
                ('Name', models.CharField(max_length=60)),
                ('Dept', models.CharField(max_length=60)),
                ('DOB', models.DateField()),
                ('Image', models.ImageField(null=True, upload_to=students.models.upload_image)),
            ],
            options={
                'verbose_name_plural': 'Students',
                'db_table': 'students',
            },
        ),
    ]
