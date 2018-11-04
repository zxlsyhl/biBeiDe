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
                                    <td width="42%" height="30" class="blackbt">Equipment</td>
                                    <td width="58%">
                                        <div align="right"><img src="<%=request.getContextPath()%>/images/home_icon.gif"
                                                                tppabs="http://www.cn-aodi.com<%=request.getContextPath()%>/images/home_icon.gif"
                                                                width="16" height="15" align="absmiddle"/> Home -&gt;
                                            Equipment
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#e0e0e0"><img src="<%=request.getContextPath()%>/images/redline.gif"
                                                                           tppabs="http://www.cn-aodi.com<%=request.getContextPath()%>/images/redline.gif"
                                                                           width="100" height="1"/></td>
                                </tr>
                            </table>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td>
                                        <div align="center"><img src="<%=request.getContextPath()%>/images/equipment01-m.jpg"
                                                                 tppabs="http://www.cn-aodi.com<%=request.getContextPath()%>/images/equipment01-m.jpg"
                                                                 width="350" height="233"/></div>
                                    </td>
                                    <td>
                                        <div align="center"><img src="<%=request.getContextPath()%>/images/equipment02-m.jpg"
                                                                 tppabs="http://www.cn-aodi.com<%=request.getContextPath()%>/images/equipment02-m.jpg"
                                                                 width="350" height="233"/></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div align="center"><strong>Dust testing machine</strong></div>
                                    </td>
                                    <td>
                                        <div align="center"><strong>High and low temperature testing machine</strong>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30">
                                        <div align="center"></div>
                                    </td>
                                    <td>
                                        <div align="center"></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div align="center"><img src="<%=request.getContextPath()%>/images/equipment03-m.jpg"
                                                                 tppabs="http://www.cn-aodi.com<%=request.getContextPath()%>/images/equipment03-m.jpg"
                                                                 width="350" height="233"/></div>
                                    </td>
                                    <td>
                                        <div align="center"><img src="<%=request.getContextPath()%>/images/equipment04-m.jpg"
                                                                 tppabs="http://www.cn-aodi.com<%=request.getContextPath()%>/images/equipment04-m.jpg"
                                                                 width="350" height="233"/></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div align="center"><strong>Salt bath test machine</strong></div>
                                    </td>
                                    <td>
                                        <div align="center"><strong>CNC</strong></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <div align="center"><img src="<%=request.getContextPath()%>/images/equipment05-m.jpg"
                                                                 tppabs="http://www.cn-aodi.com<%=request.getContextPath()%>/images/equipment05-m.jpg"
                                                                 width="350" height="263"/></div>
                                    </td>
                                    <td>
                                        <div align="center"><img src="<%=request.getContextPath()%>/images/equipment06-m.jpg"
                                                                 tppabs="http://www.cn-aodi.com<%=request.getContextPath()%>/images/equipment06-m.jpg"
                                                                 width="350" height="263"/></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div align="center"><strong>Gear double meshing tester</strong></div>
                                    </td>
                                    <td>
                                        <div align="center"><strong>Projector</strong></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center"><img src="<%=request.getContextPath()%>/images/Equipment _1.jpg"
                                                            tppabs="http://www.cn-aodi.com<%=request.getContextPath()%>/images/Equipment _1.jpg"
                                                            width="350" height="325"/></td>
                                    <td align="center"><img src="<%=request.getContextPath()%>/images/Equipment _3.jpg"
                                                            tppabs="http://www.cn-aodi.com<%=request.getContextPath()%>/images/Equipment _3.jpg"
                                                            width="350" height="325"/></td>
                                </tr>
                                <tr>
                                    <td align="center"><strong>Equipment </strong></td>
                                    <td align="center"><strong>Equipment </strong></td>
                                </tr>
                                <tr>
                                    <td align="center"><img src="<%=request.getContextPath()%>/images/Equipment _2.jpg"
                                                            tppabs="http://www.cn-aodi.com<%=request.getContextPath()%>/images/Equipment _2.jpg"
                                                            width="350" height="327"/></td>
                                    <td align="center">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center"><strong>Equipment </strong></td>
                                    <td align="center">&nbsp;</td>
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


