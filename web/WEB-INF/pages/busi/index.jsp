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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>武汉必备德汽配公司</title>
    <meta name="description" content="武汉必备德汽配公司"/>
    <meta name="keywords" content="必备德"/>
    <link href="<%=request.getContextPath()%>/css/css.css" rel="stylesheet" type="text/css" />
    <script language="javascript" src="<%=request.getContextPath()%>/js/jquery-3.2.1.js"></script>
    <script language="javascript" src="<%=request.getContextPath()%>/js/pub.js"></script>
</head>
<script language="javascript">
    function toMenu(menuUrl){
        $("#mainPage").empty();
        $("#mainPage").load("<%=request.getContextPath()%>/index/"+menuUrl);
        $("#nav li").each(function(){
            //alert(menuUrl);
            var lia = $(this).find("a");
            var liaId = $(this).find("a").attr("id");
            $(lia).removeClass("liaHover");
            $(lia).addClass("lia");
            if(liaId==menuUrl){
                $(lia).removeClass("lia");
                $(lia).addClass("liaHover");
            }
        });
    }

</script>
<body id="nav_index">
    <table width="1002" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td height="95">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td rowspan="2"><img src="<%=request.getContextPath()%>/images/new_logo.png" width="670" height="95" /></td>
                <td></td>
            </tr>
            <tr>
                <td><img src="<%=request.getContextPath()%>/images/top_tel.gif" width="332" height="45" /></td>
            </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td height="48" background="<%=request.getContextPath()%>/images/menu_bg.gif">
            <div id="nav">
                <ul>
                    <li><a id="home" href="javascript:void(0);" onclick="toMenu('home');" class="liaHover">首页</a></li>
                    <li><a id="aboutUs" href="javascript:void(0);" onclick="toMenu('aboutUs');">关于我们</a></li>
                    <li><a id="products" href="javascript:void(0);" onclick="toMenu('products');">产品</a></li>
                    <li><a id="honors" href="javascript:void(0);" onclick="toMenu('honors');">荣誉</a></li>
                    <li><a id="equipment" href="javascript:void(0);" onclick="toMenu('equipment');">资产</a></li>
                    <li><a id="newsCenter" href="javascript:void(0);" onclick="toMenu('newsCenter');">最新资讯</a></li>
                    <li><a id="feedback" href="javascript:void(0);" onclick="toMenu('feedback');">反馈</a></li>
                    <li><a id="contactUs" href="javascript:void(0);" onclick="toMenu('contactUs');">联系我们</a></li>
                </ul>
            </div>
        </td>
    </tr>
    <tr>
        <td height="40" background="<%=request.getContextPath()%>/images/search_bg.gif"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
            <form id="srh_form" name="form1" method="post">
                <tr>
                    <td width="58%" class="searchwhite">欢迎来到 <strong><span class="en">必备德</span></strong></td>
                    <td width="40%"><div align="right"><span class="searchwhite"><strong>查找:</strong></span>
                        <input name="srh" id="srh" type="text" class="search" value="" size="35"/></div></td>
                    <td width="2%"><input type="image" src="<%=request.getContextPath()%>/images/search.gif" width="60" height="30" /></td>
                </tr></form>
        </table>
            <script language="javascript">
                chk_search("cn", "srh_form", "srh", "", "");
            </script></td>
    </tr>
</table>
<div id="mainPage">
    <!--
     -->
    <jsp:include page="/index/home"/>
</div>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td background="<%=request.getContextPath()%>/images/foot_line.gif">
            <img src="<%=request.getContextPath()%>/images/foot_line.gif" width="1" height="2" />
        </td>
    </tr>
    <tr>
        <td><table width="960" border="0" align="center" cellpadding="0" cellspacing="0" style="padding:6px 0px;">
            <tr>
                <td width="621">
                    <a href="javascript:void(0);" onclick="toMenu('home');">首页</a> | <a href="javascript:void(0);" onclick="toMenu('aboutUs');">关于我们</a> | <a href="javascript:void(0);" onclick="toMenu('products');">产品</a> | <a href="javascript:void(0);" onclick="toMenu('honors');">荣誉</a> | <a href="javascript:void(0);" onclick="toMenu('newsCenter');">最新资讯</a> | <a href="javascript:void(0);" onclick="toMenu('feedback');">反馈</a> | <a href="javascript:void(0);" onclick="toMenu('contactUs');">联系我们</a><br />
                    Copyright&copy;2012-2013 <strong>武汉必备德汽配有限公司 </strong>&nbsp;
                </td>
                <td width="276"><div align="right">设计 &amp; 服务 提供 <a href="mailto:zhangxiaolong_sy@163.com">Qianxinxiulian.</a></div></td>
            </tr>
        </table></td>
    </tr>
</table>
</body>
</html>


