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
    <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-bottom:10px;">
        <tr>
            <td>
            </td>
        </tr>
    </table>
    <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-bottom:25px;">
        <tr>
            <td width="42%" height="30" class="blackbt">Products</td>
            <td width="58%">
                <div align="right">
                    <img src="<%=request.getContextPath()%>/images/home_icon.gif" width="16"
                         height="15" align="absmiddle"/>
                    首页 -&gt; 产品 -&gt;
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="2" bgcolor="#e0e0e0">
                <img src="<%=request.getContextPath()%>/images/redline.gif" width="100"
                     height="1"/>
            </td>
        </tr>
    </table>
    <c:set var="productListLength" value="${fn:length(productList)}"></c:set>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <c:forEach var="product" items="${productList}" varStatus="productInx">
            <c:if test="${productInx.index%3==0 }">
                <tr>
            </c:if>
            <td>
                <table width="235" border="0" align="left" cellpadding="0" cellspacing="0">
                    <tr>
                        <td style="border:#e0e0e0 1px solid;">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td height="170">
                                        <div align="center">
                                            <a href="javascript:void(0);">
                                                    ${product.product_img}
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="50" valign="top" class="productsarrow"
                                        style="padding-left:10px;">
                                        <strong><a href="javascript:void(0);"class="en">${product.product_model_num}</a></strong>
                                        <br/><a href="javascript:void(0);">${product.product_name}</a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img src="<%=request.getContextPath()%>/images/products_shadow1.gif"
                                 width="235" height="10"/>
                        </td>
                    </tr>
                </table>
            </td>
            <c:if test="${(productInx.index+1)%3==0 || productListLength == (productInx.index+1)}">
                </tr>
            </c:if>
        </c:forEach>
        <tr>
            <td height="25">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <jsp:include page="../page.jsp"/>


</div>
<script type="application/javascript">
    function doSubmitPage(pageNo){
        var url = "<%=request.getContextPath()%>/product/productsList?totalNum=${pageModel.totalNum}&totalPage=${pageModel.totalPage}&pageNo="+pageNo;
        if($("#productsDiv")!=undefined){
            $("#productsDiv").load(url);
        }
        else{
            location.href=url;
        }
    }

</script>
</html>


