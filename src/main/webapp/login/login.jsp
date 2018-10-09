<%@ page import="org.springframework.http.HttpRequest" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018-09-10
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() +"://"+ request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>登录</title>
    <link rel="stylesheet" href="../frame/layui/css/layui.css">
    <link rel="stylesheet" href="../frame/static/css/style.css">
    <link rel="icon" href="../frame/static/image/code.png">
</head>
<body>
<div class="login-main">
    <header class="layui-elip">后台登录</header>
    <form class="layui-form">
        <div class="layui-input-inline">
            <input type="text" id="username" name="username" required lay-verify="required" placeholder="账号/邮箱" autocomplete="off"
                   class="layui-input" value="rock">
        </div>
        <div class="layui-input-inline">
            <input type="password" id="password" name="password" required lay-verify="required" placeholder="密码" autocomplete="off"
                   class="layui-input" value="1234">
        </div>
        <div class="layui-input-inline login-btn">
            <input type="button" class="layui-btn" id="login_button" value="登录" onclick="login()" />
        </div>
        <hr/>
        <p><a href="javascript:;" class="fl">立即注册</a><a href="javascript:;" class="fr">忘记密码？</a></p>
    </form>
</div>

<script src="../frame/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['form'], function () {

        // 操作对象
        var form = layui.form
            , $ = layui.jquery;



        $(document).ready(function () {
            // login();
        });


    });



    function login() {

        var form = layui.form
            , $ = layui.jquery;

       var username = $("#username").val();
       var password = $("#password").val();

       turl = "/user/login";
       tdata={
           username:username,
           password:password
       }
       $.ajax({
           url : turl,
           type : 'POST',
           data : tdata,
           cache : false,
           success : function (data) {

               console.log(data);
                console.log(Boolean(data.success));
               if(data.success > 0){
                   console.log("false");
               }else {
                   window.location.href = "<%=basePath%>";
               }
           }
       });
    }
</script>
</body>
</html>
