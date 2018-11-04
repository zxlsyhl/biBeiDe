<%--
  Created by IntelliJ IDEA.
  User: 123456
  Date: 2017/11/29
  Time: 20:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>武汉必备德汽配公司</title>
    <meta name="description" content="武汉必备德汽配公司"/>
    <meta name="keywords" content="必备德"/>
    <link href="<%=request.getContextPath()%>/css/css.css" rel="stylesheet" type="text/css"/>
    <script language="javascript" src="<%=request.getContextPath()%>/js/pub.js"></script>
</head>
<div class="news">
    <ul style="width: 100%;">
        <c:forEach items="${newsCenterList}" var="newCenter">
            <li>
                <a href="javascript:void(0);" onclick="$('#mainPage').load('<%=request.getContextPath()%>/newsCenter/newSCenterDetail?id=${newCenter.id}');">${newCenter.news_title}</a>
                <img src="<%=request.getContextPath()%>/images/new.gif" width="23" height="11"/>
            </li>
        </c:forEach>
    </ul>
</div>
<jsp:include page="../page.jsp"/>
<script type="application/javascript">
    function doSubmitPage(pageNo){
        var url = "<%=request.getContextPath()%>/newsCenter/queryNewsCenter?totalNum=${pageModel.totalNum}&totalPage=${pageModel.totalPage}&pageNo="+pageNo;
        if($("#newsDiv")!=undefined){
            $("#newsDiv").load(url);
        }
        else{
            location.href=url;
        }
    }
</script>
</html>


