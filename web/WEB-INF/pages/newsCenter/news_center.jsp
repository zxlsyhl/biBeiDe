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
                            <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-bottom:25px;">
                                <tr>
                                    <td width="42%" height="30" class="blackbt">
                                        最新咨询
                                    </td>
                                    <td width="58%">
                                        <div align="right">
                                            <img src="<%=request.getContextPath()%>/images/home_icon.gif"width="16" height="15" align="absmiddle"/>
                                            首页 -&gt;新闻中心
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#e0e0e0">
                                        <img src="<%=request.getContextPath()%>/images/redline.gif" width="100" height="1"/>
                                    </td>
                                </tr>
                            </table>
                            <div id="newsDiv">
                                <jsp:include page="/newsCenter/queryNewsCenter"/>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>
</html>


