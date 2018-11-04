<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>武汉必备德汽配公司</title>
    <meta name="description" content="武汉必备德汽配公司"/>
    <meta name="keywords" content="必备德"/>
    <link href="<%=request.getContextPath()%>/css/css.css" rel="stylesheet" type="text/css"/>
</head>
<div class="page">
    <center>
        <div class='viciao'>
            <table cellpadding='0' cellspacing='0' border='0' class='TurnPageCss'>
                <tr>
                    <td width='' height='' align='center'>
                        <span class='disabled' onclick="doSubmitPage(1);" style="cursor:pointer;">首页</span>
                        <span class='disabled' onclick="doSubmitPage(${pageModel.totalPage});" style="cursor:pointer;">尾页</span>
                        共 <sapn style="color: red;"><b>${pageModel.totalNum}</b></sapn>条记录, 页数: <b>
                        <sapn style="color: red;">${pageModel.pageNo}</sapn>/${pageModel.totalPage}</b>
                        <!--
                        <span class='current'>1</span>
                        <a href="products.asp-page=2.htm">2</a>
                        <a href="products.asp-page=3.htm">3</a>
                        <a href="products.asp-page=4.htm">4</a>
                        <a href="products.asp-page=5.htm">5</a>
                        -->
                        <c:if test="${pageModel.pageNo>1}">
                            <a href="javascript:void(0);" onclick="doSubmitPage(${pageModel.pageNo-1});">上一页</a>
                        </c:if>
                        <c:if test="${pageModel.pageNo < pageModel.totalPage}">
                            <a href="javascript:void(0);" onclick="doSubmitPage(${pageModel.pageNo+1});">下一页</a>
                        </c:if>
                        <input type="text" id="toPageNo" size="3" onblur="if($(this).val()>${pageModel.totalPage}){alert('不能大于最大页数');$(this).val('1');}"/>
                        <a href="javascript:void(0);" onclick="doSubmitPage($('#toPageNo').val());">跳转到</a>
                    </td>
                </tr>
            </table>
        </div>
    </center>
</div>


</html>


