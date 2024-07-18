from django.db import models
class Book(models.Model): 
    id = models.AutoField(primary_key=True) # id 会自动创建,可以手动写入
    title = models.CharField(max_length=32) # 书籍名称
    price = models.DecimalField(max_digits=5, decimal_places=2) # 书籍价格 
    publish = models.CharField(max_length=32) # 出版社名称 
    pub_date = models.DateField() # 出版时间


class Test(models.Model):
    name = models.CharField(max_length=20)


# class Contact(models.Model):
#     name   = models.CharField(max_length=200)
#     age    = models.IntegerField(default=0)
#     email  = models.EmailField()
#     def __unicode__(self):
#         return self.name
 
# class Tag(models.Model):
#     contact = models.ForeignKey(Contact, on_delete=models.CASCADE,)
#     name    = models.CharField(max_length=50)
#     def __unicode__(self):
#         return self.name




