<%--
  Created by IntelliJ IDEA.
  User: 123456
  Date: 2017/11/29
  Time: 20:20
  To change this template use File | Settings | File Templates.
--%>
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
    <script language="javascript" src="<%=request.getContextPath()%>/js/pub.js"></script>
</head>


<div>
    <table width="1002" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF"
           style="padding:10px 6px 25px 6px; margin-top:10px;">
        <tr>
            <td>
                <table width="990" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="220" valign="top">
                            <div>
                                <!-- products list start-->
                                <jsp:include page="/product/productsTypeList"/>
                                <!-- products list end-->
                            </div>

                        </td>
                        <td width="10"></td>
                        <td width="760" valign="top">
                            <div id="productsDiv">
                                <jsp:include page="/product/productsList"/>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>
</html>

