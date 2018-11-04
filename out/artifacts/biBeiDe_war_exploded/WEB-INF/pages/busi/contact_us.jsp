<%--
  Created by IntelliJ IDEA.
  User: 123456
  Date: 2017/11/29
  Time: 20:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                            <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-bottom:10px;">
                                <tr>
                                    <td>
                                        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
                                                codebase="swflash.cab#version=7,0,19,0"
                                                tppabs="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
                                                width="760" height="250">
                                            <param name="movie" value="<%=request.getContextPath()%>/images/pagebanner.swf"
                                                   tppabs="http://www.cn-aodi.com<%=request.getContextPath()%>/images/pagebanner.swf"/>
                                            <param name="quality" value="high"/>
                                            <embed src="<%=request.getContextPath()%>/images/pagebanner.swf"
                                                   tppabs="http://www.cn-aodi.com<%=request.getContextPath()%>/images/pagebanner.swf" quality="high"
                                                   pluginspage="http://www.macromedia.com/go/getflashplayer"
                                                   type="application/x-shockwave-flash" width="760"
                                                   height="250"></embed>
                                        </object>
                                    </td>
                                </tr>
                            </table>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-bottom:25px;">
                                <tr>
                                    <td width="42%" height="30" class="blackbt">Contact Us</td>
                                    <td width="58%">
                                        <div align="right"><img src="<%=request.getContextPath()%>/images/home_icon.gif"
                                                                tppabs="http://www.cn-aodi.com<%=request.getContextPath()%>/images/home_icon.gif"
                                                                width="16" height="15" align="absmiddle"/> Home -&gt;
                                            Contact Us
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#e0e0e0"><img src="<%=request.getContextPath()%>/images/redline.gif"
                                                                           tppabs="http://www.cn-aodi.com<%=request.getContextPath()%>/images/redline.gif"
                                                                           width="100" height="1"/></td>
                                </tr>
                            </table>
                            <table width="680" height="395" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="78%" valign="top"><span class="contactbt">Zhejiang Aodi Machinery Manufacturing Co., Ltd.</span><br/>
                                        <div class="contact">
                                            <ul>
                                                <li>Add: Automobile & Motorcycle Industrial Zone, Yuhuan, Zhejiang,
                                                    China
                                                </li>
                                                <li>Tel: +86-576-87286058 87286157</li>
                                                <li>Fax: +86-576-87286087</li>
                                                <li>P.C: 317600</li>
                                                <li>URL: www.cn-aodi.com&nbsp;&nbsp;&nbsp;&nbsp;www.zjaodi.com</li>
                                                <li>E-mail: <a href="mailto:aodi@zjaodi.com"><span class="redlink">aodi@zjaodi.com</span></a>&nbsp;&nbsp;&nbsp;&nbsp;<a
                                                        href="mailto:info@tzanjie.com"><span class="redlink">info@tzanjie.com</span></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <p>&nbsp;</p></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>
</html>


