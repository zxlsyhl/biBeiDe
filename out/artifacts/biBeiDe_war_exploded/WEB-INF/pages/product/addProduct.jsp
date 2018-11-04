<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>后台管理-新增产品</title>
    <meta name="description" content="武汉必备德汽配公司"/>
    <meta name="keywords" content="必备德"/>
    <link href="<%=request.getContextPath()%>/css/css.css" rel="stylesheet" type="text/css"/>
    <script language="javascript" src="<%=request.getContextPath()%>/js/jquery-3.2.1.js"></script>
    <script language="javascript" src="<%=request.getContextPath()%>/js/pub.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="<%=request.getContextPath()%>/ueditor/ueditor_img.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="<%=request.getContextPath()%>/ueditor/ueditor.all.min.js"></script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8"
            src="<%=request.getContextPath()%>/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<body>
<div>
    <form action="<%=request.getContextPath()%>/product/addProduct" id="form1" method="post">
        <table>
            <tr>
                <td>
                    <strong>产品类型：</strong>
                    <select name="typeId" class="selectClass" id="typeId">
                        <option>请选择产品类型</option>
                        <c:forEach var="productType" items="${productTypes}">
                            <option value="${productType.id}">${productType.type_name}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>产品名称：</strong>
                    <input type="text" value="" name="productName" id="productName" size="50"/>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>产品型号：</strong>
                    <input type="text" value="" name="productModelNum" id="productModelNum" size="50"/>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>产品图片：</strong>
                    <script id="editor" type="text/plain" style="width:724px;height:300px;"></script>
                    <input type="hidden" name="productImg" id="productImg"/>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>产品描述：</strong><br/>
                    <textarea rows="5" cols="100" name="productDesc" id="productDesc"></textarea>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="button" value="提交" onclick="addProduct();" class="btnclass"/>
                    &nbsp;&nbsp;
                    <input type="button" value="取消" onclick="location.href='<%=request.getContextPath()%>/manager/toManagerIndex';" class="btnclass"/>
                </td>
            </tr>
        </table>
    </form>

</div>
</body>
<script type="text/javascript">
    function addProduct() {
        var imgContent = UE.getEditor('editor').getContent();
        if (imgContent == '') {
            alert("请选择上传图片");
            return;
        }
        var reg = "";
        $("#productImg").val(imgContent);
        if($("#typeId").val()==''){
            alert("请选择产品类型");
            $("#typeId").onfocus();
            return;
        }
        if($("#productName").val()==''){
            alert("请填写产品名称");
            $("#productName").onfocus();
            return;
        }
        if($("#productModelNum").val()==''){
            alert("请填写产品型号");
            $("#productModelNum").onfocus();
            return;
        }
        /*
        if($("#productDesc").val()==''){
            alert("请填写产品描述");
            $("#typeId").onfocus();
            return;
        }*/
        $("#form1").submit();
    }

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');
    function isFocus(e) {
        alert(UE.getEditor('editor').isFocus());
        UE.dom.domUtils.preventDefault(e)
    }
    function setblur(e) {
        UE.getEditor('editor').blur();
        UE.dom.domUtils.preventDefault(e)
    }

</script>
</html>


