<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>后台管理-公司信息修改</title>
    <meta name="description" content="武汉必备德汽配公司"/>
    <meta name="keywords" content="必备德"/>
    <link href="<%=request.getContextPath()%>/css/css.css" rel="stylesheet" type="text/css"/>
    <script language="javascript" src="<%=request.getContextPath()%>/js/jquery-3.2.1.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="<%=request.getContextPath()%>/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="<%=request.getContextPath()%>/ueditor/ueditor.all.min.js"></script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8"
            src="<%=request.getContextPath()%>/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<body>
<div>
    <form action="<%=request.getContextPath()%>/company/updateInfo" id="form1" method="post">
        <table>
            <tr>
                <td>
                    <strong>公司名称：</strong>
                    <input type="hidden" value="${companyInfoDetail.id}" id="id" name="id"/>
                    <input type="text" value="${companyInfoDetail.company_name}" name="companyName" id="companyName" size="50"/>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>公司地址：</strong>
                    <input type="text" value="${companyInfoDetail.company_addr}" name="companyAddr" id="companyAddr" size="50"/>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>联系电话：</strong>
                    <input type="text" value="${companyInfoDetail.company_tel}" name="companyTel" id="companyTel" size="50"/>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>传真：</strong>
                    <input type="text" value="${companyInfoDetail.company_fax}" name="companyFax" id="companyFax" size="50"/>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>邮政编码：</strong>
                    <input type="text" value="${companyInfoDetail.company_pc}" name="companyPc" id="companyPc" size="50"/>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>公司网址1：</strong>
                    <input type="text" value="${companyInfoDetail.company_url1}" name="companyUrl1" id="companyUrl1" size="50"/>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>公司邮箱1：</strong>
                    <input type="text" value="${companyInfoDetail.company_email1}" name="companyEmail1" id="companyEmail1" size="50"/>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>公司邮箱2：</strong>
                    <input type="text" value="${companyInfoDetail.company_email2}" name="companyEmail2" id="companyEmail2" size="50"/>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>简介：</strong>
                    <input type="text" value="${companyInfoDetail.company_simple}" name="companySimple" id="companySimple" size="50"/>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>详情：</strong>
                    <script id="editor" type="text/plain" style="width:1024px;height:600px;"></script>
                    <input type="hidden" name="companyDetail" id="companyDetail"/>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="button" value="提交" onclick="aboutUsUpdate();" class="btnclass"/>
                    &nbsp;&nbsp;
                    <input type="button" value="取消" onclick="location.href='<%=request.getContextPath()%>/manager/toManagerIndex';" class="btnclass"/>
                </td>
            </tr>
        </table>
    </form>

</div>
</body>
<script type="text/javascript">
    function aboutUsUpdate() {
        var companyDetail = UE.getEditor('editor').getContent();
        if (companyDetail == '') {
            alert("请填写详情信息");
            return;
        }
        $("#companyDetail").val(companyDetail);
        if($("#companyName").val()==''){
            alert("请填写名称");
            $("#companyName").onfocus();
            return;
        }
        if($("#companyAddr").val()==''){
            alert("请填写地址");
            $("#companyAddr").onfocus();
            return;
        }
        if($("#companyTel").val()==''){
            alert("请填写联系电话");
            $("#companyTel").onfocus();
            return;
        }
        if($("#companyFax").val()==''){
            alert("请填写传真");
            $("#companyFax").onfocus();
            return;
        }
        if($("#companyPc").val()==''){
            alert("请填写邮政编码");
            $("#companyPc").onfocus();
            return;
        }
        if($("#companyUrl1").val()==''){
            alert("请填写公司网址");
            $("#companyUrl1").onfocus();
            return;
        }
        if($("#companyEmail1").val()==''){
            alert("请填写公司邮箱1");
            $("#companyEmail1").onfocus();
            return;
        }
        if($("#companyEmail2").val()==''){
            alert("请填写公司有邮箱2");
            $("#companyEmail2").onfocus();
            return;
        }
        $("#form1").submit();
    }

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');
    setTimeout(function(){
        UE.getEditor('editor').setContent('${companyInfoDetail.company_detail}', '');
    },1000);

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


