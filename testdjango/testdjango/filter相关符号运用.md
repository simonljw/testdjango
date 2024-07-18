filter() 方法基于双下划线的模糊查询（exclude 同理）。

注意：filter 中运算符号只能使用等于号 = ，不能使用大于号 > ，小于号 < ，等等其他符号。

__in 用于读取区间，= 号后面为列表 。

实例
from django.shortcuts import render,HttpResponse
from app01 import models
def add_book(request):
    # 查询价格为200或者300的数据
    books = models.Book.objects.filter(price__in=[200,300])
    return HttpResponse("<p>查找成功！</p>")


__gt 大于号 ，= 号后面为数字。

# 查询价格大于200的数据 
books = models.Book.objects.filter(price__gt=200)


__gte 大于等于，= 号后面为数字。
# 查询价格大于等于200的数据 
books = models.Book.objects.filter(price__gte=200)


__lt 小于，=号后面为数字。

# 查询价格小于300的数据 
books=models.Book.objects.filter(price__lt=300)


__lte 小于等于，= 号后面为数字。

# 查询价格小于等于300的数据 
books=models.Book.objects.filter(price__lte=300)


__range 在 ... 之间，左闭右闭区间，= 号后面为两个元素的列表。

books=models.Book.objects.filter(price__range=[200,300])


__contains 包含，= 号后面为字符串。

books=models.Book.objects.filter(title__contains="菜")


__icontains 不区分大小写的包含，= 号后面为字符串。

books=models.Book.objects.filter(title__icontains="python") # 不区分大小写


__startswith 以指定字符开头，= 号后面为字符串。

books=models.Book.objects.filter(title__startswith="菜")


__endswith 以指定字符结尾，= 号后面为字符串。

books=models.Book.objects.filter(title__endswith="教程")


__year 是 DateField 数据类型的年份，= 号后面为数字。

books=models.Book.objects.filter(pub_date__year=2008) 


__month 是DateField 数据类型的月份，= 号后面为数字。

books=models.Book.objects.filter(pub_date__month=10) 


__day 是DateField 数据类型的天数，= 号后面为数字。

books=models.Book.objects.filter(pub_date__day=01)
