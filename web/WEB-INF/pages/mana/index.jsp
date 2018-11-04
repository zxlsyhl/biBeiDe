<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>后台管理-首页</title>
    <meta name="description" content="武汉必备德汽配公司"/>
    <meta name="keywords" content="必备德"/>
    <link href="<%=request.getContextPath()%>/css/css.css" rel="stylesheet" type="text/css"/>
    <script language="javascript" src="<%=request.getContextPath()%>/js/jquery-3.2.1.js"></script>
</head>
<body>
<div>
    <strong>欢迎进入管理页面</strong>&nbsp;&nbsp;<span style="color:#c71585">帐号：${managerId}</span>
    <a href="<%=request.getContextPath()%>/manager/loginOut" style="color: #00b7ee;">退出</a>
    <br/>
    <a href="<%=request.getContextPath()%>/product/toAddProductType">添加产品类型</a><br/>
    <a href="<%=request.getContextPath()%>/product/toAddProduct">添加产品</a><br/>
    <a href="<%=request.getContextPath()%>/newsCenter/toNewsCenterAdd">添加新闻</a><br/>
    <a href="<%=request.getContextPath()%>/company/toUpdateInfo">更新公司信息</a><br/>
    <a href="javascript:void(0);" onclick="window.open('<%=request.getContextPath()%>/index/toOne')">打开首页</a><br/>
</div>
</body>
</html>


