from django.shortcuts import render,HttpResponse
from TestModel import models 



def runoob(request):
    views_list = ["test1","tset2","test3"]
    File_size = 2048
    import datetime
    now_time=datetime.datetime.now()
    views_str = "<a href='https://github.com/simonljw'>跳转至github</a>"
    views_str1 = "<a href='https://2140707164simon.blogspot.com'>跳转至个人博客</a>"
    views_num = 88
    views_list_for= ["菜鸟教程","菜鸟教程1","菜鸟教程2","菜鸟教程3",]
    views_dict = {"name":"liujinwu","age":21}
    return render(request, "runoob.html", {"views_list": views_list,"File_size":File_size,
                                           "time":now_time,"github":views_str,"boke":views_str1,"num":views_num
                                           ,"views_list_for":views_list_for,"views_dict":views_dict})
# testdjango/views.py
from django.shortcuts import render
from django.contrib.auth.decorators import login_required

@login_required  # 确保用户已登录才能访问
def home(request):
    return render(request, 'home.html')  # 渲染主页模板
   
    # testdjango/views.py



    # books = models.Book.objects.exclude(pk=5)
    # print(books)
    # print("//////////////////////////////////////")
    # books = models.Book.objects.exclude(publish='菜鸟出版社', price=300)
    # print(books, type(books))  # QuerySet类型，类似于list。
    # return HttpResponse("<p>查找成功！</p>")

    # books = models.Book.objects.filter(pk=5)
    # print(books)
    # print("//////////////////////////////////////")
    # books = models.Book.objects.filter(publish='菜鸟出版社', price=300)
    # print(books, type(books))  # QuerySet类型，类似于list。
    # print(books,)
    # for book in books:
    #     print(book.title)
    # return HttpResponse("<p>查找成功！</p>")


# def testmodel_book(request):
#     book = models.Book(title="菜鸟教程",price=300,publish="菜鸟出版社",pub_date="2008-8-8") 
#     book.save()
#     return HttpResponse("<p>数据添加成功！</p>")

# def testmodel_book(request):
#     books = models.Book.objects.create(title="如来神掌",price=200,publish="功夫出版社",pub_date="2010-10-10") 
#     print(books, type(books)) # Book object (18) 
#     return HttpResponse("<p>数据添加成功！</p>")







# def runoob(request):
#     context          = {}
#     context['hello'] = 'Hello World!'
#     return render(request, 'runoob.html', context)


# def runoob(request):
#   views_name = "test ok!"
#   return  render(request,"runoob.html", {"name":views_name})














# import mysql.connector # type: ignore

# # 连接数据库
# db = mysql.connector.connect(
#     host="localhost",
#     user="164",
#     password="123456",
#     database="runoob"
# )

# cursor = db.cursor()

# # 执行查询
# cursor.execute("SELECT * FROM 报废资产 WHERE `入账日期` < '2014-07-10'")

# # 遍历结果集并打印每一行
# print("资产名称","使用人","存放地点","使用年限","预计使用到期日","数量","资产原值","入账时间")
# for row in cursor.fetchall():
#     print(row)

# # 关闭数据库连接
# db.close()
