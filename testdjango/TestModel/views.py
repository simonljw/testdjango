from django.shortcuts import render

#Create your views here.
# TestModel/views.py

# from django.shortcuts import render
# from django.http import HttpResponse
# from .models import ScrapAsset

# def scrap_assets(request):
#     # 获取所有报废资产
#     scrap_assets = ScrapAsset.objects.all()
    
#     # 准备要输出的 HTML 内容
#     context = {
#         'scrap_assets': scrap_assets
#     }
    
#     # 渲染模板并返回响应
#     return render(request, 'scrap_assets.html', context)
