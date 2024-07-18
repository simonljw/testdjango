from django.shortcuts import render,HttpResponse
from TestModel import models 

def testmodel_book(request):
    books = models.Book.objects.all() 
    #books = models.Book.objects.filter(price__in=[200,300]) #filter() 方法基于双下划线的模糊查询（exclude 同理）。注意：filter 中运算符号只能使用等于号 = ，不能使用大于号 > ，小于号 < ，等等其他符号。__in 用于读取区间，= 号后面为列表 。
    ##__gt 大于号 ，= 号后面为数字。 __gte 大于等于，= 号后面为数字。__lt 小于，=号后面为数字。__lte 小于等于，= 号后面为数字。__range 在 ... 之间，左闭右闭区间，= 号后面为两个元素的列表 __contains 包含，= 号后面为字符串__icontains 不区分大小写的包含，= 号后面为字符串
    book_titles = "\n<br>".join([book.title for book in books])
    print(book_titles.replace("<br>", "\n"))
    return HttpResponse(f"<p>查找成功！</p>书名列表：<br>{book_titles}</p>")  #

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
    
    # def testmodel_book(request):
    # print(books)
    # print(books,type(books)) # QuerySet类型，类似于list，访问 url 时数据显示在命令行窗口中。
    # for book in books:
    #     print(book.title)

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
