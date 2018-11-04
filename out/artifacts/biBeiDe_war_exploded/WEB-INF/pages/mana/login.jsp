<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>后台管理-登录</title>
    <meta name="description" content="武汉必备德汽配公司"/>
    <meta name="keywords" content="必备德"/>
    <script language="javascript" src="<%=request.getContextPath()%>/js/jquery-3.2.1.js"></script>
</head>
<style>
    body, p, div, ul, li, h1, h2, h3, h4, h5, h6 {
        margin: 0;
        padding: 0;
    }

    body {
        background: #E9E9E9;
    }

    #loginlogin {
        width: 400px;
        height: 250px;
        background: #FFF;
        margin: 200px auto;
        position: relative;
    }

    #login h1 {
        text-align: center;
        position: absolute;
        left: 120px;
        top: -40px;
        font-size: 21px;
    }

    #login form p {
        text-align: center;
    }

    #managerId {
        background: url(<%=request.getContextPath()%>/images/user.png) rgba(0, 0, 0, .1) no-repeat;
        width: 200px;
        height: 30px;
        border: solid #ccc 1px;
        border-radius: 3px;
        padding-left: 32px;
        margin-top: 50px;
        margin-bottom: 30px;
    }

    #password {
        background: url(<%=request.getContextPath()%>/images/pwd.png) rgba(0, 0, 0, .1) no-repeat;
        width: 200px;
        height: 30px;
        border: solid #ccc 1px;
        border-radius: 3px;
        padding-left: 32px;
        margin-bottom: 30px;
    }

    .submit {
        width: 100px;
        height: 30px;
        background: rgba(0, 0, 0, .1);
        border: solid #ccc 1px;
        border-radius: 3px;
    }

    .submit:hover {
        cursor: pointer;
        background: #D8D8D8;
    }
</style>
<body>
<div id="login">
    <h1>登录管理</h1>
    <form id="form1" action="<%=request.getContextPath()%>/manager/loginManagerIn" method="post">
        <p><input type="text" name="managerId" id="managerId" placeholder="用户名"/></p>
        <p><input type="password" name="passwordQipe" id="password" placeholder="密码"/></p>
        <p><input id="submit" type="submit" class="submit" value="登录"/>&nbsp;&nbsp;<input type="reset" class="submit" value="重置"/>
        </p>
    </form>
</div>
<script type="application/javascript">
    $(function () {
        $(document).keydown(function (event) {
            if (event.keyCode == 13) {
                $("#submit").click();
            }
        });
</script>
</body>
</html>


