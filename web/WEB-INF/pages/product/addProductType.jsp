<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>后台管理-新增产品类型</title>
    <meta name="description" content="武汉必备德汽配公司"/>
    <meta name="keywords" content="必备德"/>
    <link href="<%=request.getContextPath()%>/css/css.css" rel="stylesheet" type="text/css"/>
    <script language="javascript" src="<%=request.getContextPath()%>/js/jquery-3.2.1.js"></script>
</head>
<body>
<div>
    <form action="<%=request.getContextPath()%>/product/addProductType" id="form1" method="post">
        <table>
            <tr>
                <td>
                    <strong>产品类型名称：</strong>
                    <input type="text" value="" name="typeName" id="typeName"/>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>产品类型描述：</strong>
                    <input type="text" value="" name="typeDesc" id="typeDesc" size="50"/>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="button" value="提交" onclick="addProductType();" class="btnclass"/>&nbsp;&nbsp;
                    <input type="button" value="取消" onclick="location.href='<%=request.getContextPath()%>/manager/toManagerIndex';" class="btnclass"/>
                </td>
            </tr>
        </table>
    </form>

</div>
</body>
<script type="text/javascript">
    function addProductType() {
        if($("#typeName").val()==''){
            alert("请填写产品类型名称");
            $("#typeName").onfocus();
            return;
        }
        /*
        if($("#typeDesc").val()==''){
            alert("请填写产品类型描述");
            $("#typeDesc").onfocus();
            return;
        }*/
        $("#form1").submit();
    }
</script>
</html>


