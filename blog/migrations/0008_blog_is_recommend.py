# Generated by Django 2.0 on 2018-11-19 04:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0007_auto_20180224_0212'),
    ]

    operations = [
        migrations.AddField(
            model_name='blog',
            name='is_recommend',
            field=models.BooleanField(default=False),
        ),
    ]