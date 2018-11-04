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
    <table width="1002" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td colspan="6"></td>
        </tr>
        <tr title="最新产品">
            <c:forEach items="${productList}" var="product">
                <td width="167" height="121" valign="top"
                    background="<%=request.getContextPath()%>/images/featured_middlebg.gif"
                    style="border-right:#8a9192 1px solid;">
                    <div align="center">
                        <a href="javascript:void(0);"
                           style="width:102px;height: 100px;border: 0px;">${product.product_img}</a><br/>
                        <strong>${product.product_model_num} ${product.product_name}</strong>
                    </div>
                </td>
            </c:forEach>
        </tr>
        <tr>
            <td colspan="6"><img src="<%=request.getContextPath()%>/images/featured_down.gif" width="1002" height="14"/>
            </td>
        </tr>
    </table>
    <table width="1002" border="0" align="center" cellpadding="0" cellspacing="0" class="contentbg">
        <tr>
            <td>
                <table width="962" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td width="250" valign="top">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td>
                                        <font style="font-size: 18px; color:#3b4249;">关于必备德</font>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="h19" style="padding-top:8px;">
                                        ${companyInfo.company_simple}......<br/>
                                        <img src="<%=request.getContextPath()%>/images/index_factory.jpg" width="239"
                                             height="98"
                                             style="border:#afafaf 1px solid; margin-top:5px;"/>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="45">&nbsp;</td>
                        <td width="365" valign="top">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td>
                                        <!--<img src="<%=request.getContextPath()%>/images/index_content_bt2.gif" width="139" height="20"/>-->

                                        <font style="font-size: 18px; color:#3b4249;">新闻咨询</font>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-top:8px;">
                                        <div class="news">
                                            <ul>
                                                <c:forEach items="${newsCenterList}" var="newCenter">
                                                    <li>
                                                        <a href="javascript:void(0);"
                                                           onclick="$('#mainPage').load('<%=request.getContextPath()%>/newsCenter/newSCenterDetail?id=${newCenter.id}');">${newCenter.news_title}</a>
                                                        <img src="<%=request.getContextPath()%>/images/new.gif"
                                                             width="23" height="11"/>
                                                    </li>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="45">&nbsp;</td>
                        <td width="257" valign="top">
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        <!--<img src="<%=request.getContextPath()%>/images/index_content_bt3.gif" width="119" height="20"/>-->
                                        <font style="font-size: 18px; color:#3b4249;">联系方式</font>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="200" valign="top" style="padding-top:8px;">
                                        <ul>
                                            <li>地址: ${companyInfo.company_addr}<br/>
                                                电话: ${companyInfo.company_tel}
                                            </li>
                                            <li>传真: ${companyInfo.company_fax}</li>
                                        </ul>
                                        <ul>
                                            <li>网站: ${companyInfo.company_url1}</li>
                                            <li>邮箱:
                                                <a href="mailto:${companyInfo.company_name}"><span class="redlink">biBeiDe@163.com</span></a>
                                                <br/>
                                            </li>
                                        </ul>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>
</html>


