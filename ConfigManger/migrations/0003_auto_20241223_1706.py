# Generated by Django 3.2.1 on 2024-12-23 17:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ConfigManger', '0002_alter_tv_name'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tv',
            name='name',
            field=models.CharField(default='斗罗大陆', max_length=255, unique=True, verbose_name='片名'),
        ),
        migrations.AlterField(
            model_name='tv',
            name='tvt_type',
            field=models.CharField(choices=[('动漫', '动漫'), ('美剧', '美剧'), ('国产电视剧', '国产电视剧')], default=0, max_length=20, verbose_name='电视类型'),
        ),
    ]
