

from django.shortcuts import render


def runoob(request):
    # views_list = ["test1","tset2","test3"]
    # return render(request, "runoob.html", {"views_list": views_list})
    views_list = ["test1","tset2","test3"]
    File_size = 2048
    import datetime
    now_time=datetime.datetime.now()
    views_str = "<a href='https://2140707164simon.blogspot.com'>跳转至个人博客</a>"
    views_num = 88
    views_list_for= ["菜鸟教程","菜鸟教程1","菜鸟教程2","菜鸟教程3",]
    views_dict = {"name":"liujinwu","age":21}
    return render(request, "runoob.html", {"views_list": views_list,"File_size":File_size,
                                           "time":now_time,"boke":views_str,"num":views_num
                                           ,"views_list_for":views_list_for,"views_dict":views_dict})

    # return  render(request,"runoob.html", {"name":name})

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
