<%--
  Created by IntelliJ IDEA.
  User: 123456
  Date: 2017/11/29
  Time: 20:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <!--
    <table width="100%" height="49" border="0" cellpadding="0" cellspacing="0"
           background="<%=request.getContextPath()%>/images/newproducts_bg.gif"
           style="margin-bottom:7px; padding-left:18px; padding-top:10px;">
        <tr>
            <td valign="top"><a href="javascript:void(0);"><strong>新产品</strong></a></td>
        </tr>
    </table>
    -->
    <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-bottom:18px;">
        <tr>
            <td height="39" background="<%=request.getContextPath()%>/images/left_btbg.gif" style="padding-left:8px;">
                <img src="<%=request.getContextPath()%>/images/arrow03.gif" width="17" height="17" align="absmiddle"/>
                <span class="whitebt">产品列表 </span>
            </td>
        </tr>
        <tr>
            <td style="border-top:#e0e0e0 1px solid; border-left:#e0e0e0 1px solid; border-right:#e0e0e0 1px solid;">
                <div id="list">
                    <ul>
                        <c:forEach var="productType" items="${productTypes}">
                            <li class="li1">
                                <a href="javascript:void(0);">${productType.type_name}</a>
                            </li>
                        </c:forEach>

                        <!--
                        <li class="li1">
                            <a href="products.asp-cateid=297.htm">Repair Kit</a>
                        </li>
                        <li class="li2">
                            <a href="products.asp-cateid=280.htm">Kassbohrer</a>
                        </li>

                        <li class="li2">
                            <a href="products.asp-cateid=281.htm">BPW</a>
                        </li>

                        <li class="li1">
                            <a href="products.asp-cateid=302.htm">Flange</a>
                        </li>
                        -->


                    </ul>
                </div>
            </td>
        </tr>
    </table>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td height="39" background="<%=request.getContextPath()%>/images/left_btbg.gif" style="padding-left:8px;">
                <img src="<%=request.getContextPath()%>/images/arrow03.gif" width="17" height="17" align="absmiddle"/>
                <span class="whitebt">CONTACT US </span>
            </td>
        </tr>
        <tr>
            <td style="border:#e0e0e0 1px solid;">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td>
                            <img src="<%=request.getContextPath()%>/images/contact_pic.gif" width="218" height="69"/>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding:5px 12px 15px 12px;"><strong>地址: </strong>${companyInfo.company_addr} <br/>
                            <strong>电话:</strong>${companyInfo.company_tel}  <br/>
                            <strong>传真 :</strong>${companyInfo.company_fax} <br/>
                            <strong>邮箱:</strong> <a href="mailto:${companyInfo.company_email1}">bbd@qq.com</a><br/>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
                                    href="mailto:${companyInfo.company_email2}"">bbdwh@qq.com</a><br/>
                            <strong>网址:</strong> <a href="/index/home">${companyInfo.company_url1}</a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>
</html>


