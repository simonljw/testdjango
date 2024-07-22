# app01/views.py
from django.shortcuts import redirect, render, HttpResponse
from TestModel.My_forms import EmpForm
from TestModel import models
from django.core.exceptions import ValidationError
# Create your views here.


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