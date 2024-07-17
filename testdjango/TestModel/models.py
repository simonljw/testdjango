# # models.py
from django.db import models
 
class Test(models.Model):
    name = models.CharField(max_length=20)

class Contact(models.Model):
    name   = models.CharField(max_length=200)
    age    = models.IntegerField(default=0)
    email  = models.EmailField()
    def __unicode__(self):
        return self.name
 
class Tag(models.Model):
    contact = models.ForeignKey(Contact, on_delete=models.CASCADE,)
    name    = models.CharField(max_length=50)
    def __unicode__(self):
        return self.name
# TestModel/models.py

# from django.db import models

# class ScrapAsset(models.Model):
#     asset_name = models.CharField(max_length=100, verbose_name='资产名称')
#     user = models.CharField(max_length=50, verbose_name='使用人')
#     location = models.CharField(max_length=100, verbose_name='存放地点')
#     lifespan = models.IntegerField(verbose_name='使用年限')
#     expiration_date = models.DateField(verbose_name='预计使用到期日')
#     quantity = models.IntegerField(verbose_name='数量')
#     original_value = models.DecimalField(max_digits=10, decimal_places=2, verbose_name='资产原值（元）')
#     entry_date = models.DateField(verbose_name='入账日期')

#     def __str__(self):
#         return self.asset_name

#     class Meta:
#         verbose_name = '报废资产'
#         verbose_name_plural = '报废资产'
