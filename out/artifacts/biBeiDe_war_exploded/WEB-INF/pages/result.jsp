<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>后台管理-结果页面</title>
    <meta name="description" content="武汉必备德汽配公司"/>
    <meta name="keywords" content="必备德"/>
</head>
<script language="javascript">

</script>
<body>
    操作结果：<strong>${resultDesc}</strong><br/>
    <a href="<%=request.getContextPath()%>${handelUrl}">${handelDesc}</a>
    <c:choose>
        <c:when test="${resultCode=='0'}">

        </c:when>
        <c:otherwise>

        </c:otherwise>
    </c:choose>
    <br/>
    <c:if test="${managerId!='' && managerId!=null}">
        <a href="<%=request.getContextPath()%>/manager/toManagerIndex" >回到管理首页</a>
    </c:if>
</body>
</html>


