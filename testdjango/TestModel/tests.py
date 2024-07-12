from django.test import TestCase

# # Create your tests here.

# testdb.py

# from django.http import HttpResponse
# from TestModel.models import ScrapAsset

# # 数据库操作
# def testdb(request):
#     # 初始化
#     response = ""
#     response1 = ""
    
#     # 通过objects这个模型管理器的all()获得所有数据行，相当于SQL中的SELECT * FROM
#     listAssets = ScrapAsset.objects.all()
        
#     # 输出所有数据
#     for asset in listAssets:
#         response1 += f"{asset.asset_name} - 使用人: {asset.user} - 存放地点: {asset.location}<br>"
    
#     response = response1
#     return HttpResponse("<p>" + response + "</p>")
