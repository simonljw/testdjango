# app01/views.py
from django.shortcuts import redirect, render, HttpResponse
from TestModel.My_forms import EmpForm
from TestModel import models
from django.core.exceptions import ValidationError
# Create your views here.
from django.db.models import Avg,Max,Min,Count,Sum  #   引入函数

def testmodel_emp(request):
    if request.method == "GET":
        form = EmpForm()  # 初始化form对象
        return render(request, "testmodel_emp.html", {"form":form})
    else:
        form = EmpForm(request.POST)  # 将数据传给form对象
        if form.is_valid():  # 进行校验
            data = form.cleaned_data
            data.pop("r_salary")
            models.Emp.objects.create(**data)
            return redirect("/index/")
        else:  # 校验失败
            clear_errors = form.errors.get("__all__")  # 获取全局钩子错误信息
            return render(request, "testmodel_emp.html", {"form": form, "clear_errors": clear_errors})


def testmodel_book(request):
    books = models.Book.objects.all() 
    #books = models.Book.objects.filter(price__in=[200,300]) #filter() 方法基于双下划线的模糊查询（exclude 同理）。注意：filter 中运算符号只能使用等于号 = ，不能使用大于号 > ，小于号 < ，等等其他符号。__in 用于读取区间，= 号后面为列表 。
    ##__gt 大于号 ，= 号后面为数字。 __gte 大于等于，= 号后面为数字。__lt 小于，=号后面为数字。__lte 小于等于，= 号后面为数字。__range 在 ... 之间，左闭右闭区间，= 号后面为两个元素的列表 __contains 包含，= 号后面为字符串__icontains 不区分大小写的包含，= 号后面为字符串
    # book_titles = "\n<br>".join([book.title for book in books])
    # print(book_titles.replace("<br>", "\n"))
    # return HttpResponse(f"<p>查找成功！</p>书名列表：<br>{book_titles}</p>")  #
    res = models.Publish.objects.values("name").annotate(in_price = Min("book__price"))
    print(res)
    return HttpResponse('ok')  #

    # def testmodel_book(request):
    # print(books)
    # print(books,type(books)) # QuerySet类型，类似于list，访问 url 时数据显示在命令行窗口中。
    # for book in books:
    #     print(book.title)

# def testmodel_book(request):
#     #  获取出版社对象
#     pub_obj = models.Publish.objects.filter(pk=1).first()
#     #  给书籍的出版社属性publish传出版社对象
#     book = models.Book.objects.create(title="菜鸟教程", price=200, pub_date="2010-10-10", publish=pub_obj)
#     print(book, type(book))
#     return HttpResponse(book)
