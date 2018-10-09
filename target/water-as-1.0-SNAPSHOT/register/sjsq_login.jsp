<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018-10-08
  Time: 9:22
  To change this template use File | Settings | File Templates.
--%>
<%--登录界面--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
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


<div style="margin-top: inherit;margin-left: 670px;display: block;">
    <form class="layui-form" method="get" action="" autocomplete="off">
        <%--字体交易平台--%>
        <div style="margin-bottom: 92px;
        margin-top: 100px;
        background-color: rgba(0,176,240,0.9);
        width: 1100px;
        font-size: 86px;
        color: #ffffff;
        margin-left: -400px;
        padding: 10px;
        text-align:center
        ">
            三级水权交易系统平台
        </div>
        <%--账号--%>
        <div class="layui-form-item">
            <label class="layui-form-label">用户名：</label>

            <div class="layui-input-inline">
                <input type="text" name="username" class="layui-input" lay-verify="account" placeholder="账号" autocomplete="off"
                       autocomplete="on" maxlength="20"/>
            </div>
        </div>
        <%--密码--%>
        <div class="layui-form-item">
            <label class="layui-form-label">密码：</label>

            <div class="layui-input-inline">
                <input type="password" name="password" class="layui-input"  placeholder="密码"
                       maxlength="20"/>
            </div>
        </div>
        <%--手机号--%>
        <div class="layui-form-item">
            <label class="layui-form-label">手机号：</label>

            <div class="layui-input-inline">
                <input type="text" name="phone" class="layui-input"  placeholder="手机号"
                       maxlength="20"/>
            </div>
        </div>
        <%--验证码--%>
        <div class="layui-form-item">
            <label class="layui-form-label">登录验证：</label>
            <input type="text" name="code" class="layui-input-inline layui-input" placeholder="验证码" />
            <button class="layui-btn layui-inline" >短信</button>
            <%--<img src="../frame/static/image/v.png" alt="">--%>
        </div>
        <%--平台选择&角色选择--%>
        <div class="layui-form-item"  style="margin-left: -150px">
            <div class="layui-inline">
                <label class="layui-form-label">平台选择：</label>
                <div class="layui-input-inline">
                    <select name="select1">
                        <option>请选择平台</option>
                        <option value="平台A">平台A</option>
                        <option value="平台B">平台B</option>
                        <option value="平台C">平台C</option>
                        <option value="平台D">平台D</option>
                    </select>
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">角色选择：</label>
                <div class="layui-input-inline">
                    <select name="select1">
                        <option>请选择角色</option>
                        <option value="管理员">管理员</option>
                        <option value="操作员">操作员</option>
                        <option value="员工">员工</option>
                    </select>
                </div>
            </div>
        </div>
        <%--用户注册&登录&退出&忘记密码--%>
        <div class="layui-form-item">
            <a  href="/registerOne" type="reset" class="layui-btn" style="color: rgba(0,176,240,0.9);
            background-color:rgba(149,166,162,0.5);" ><b>用户注册</b></a>
            <button type="reset" class="layui-btn  btn-submit">登录</button>
            <button type="button" class="layui-btn btn-submit">退出</button>
            <a type="reset" class="layui-btn" style="color: rgba(0,176,240,0.9);
            background-color:rgba(149,166,162,0.5);" ><b>忘记密码</b></a>
        </div>
        <%--APP二维码登录--%>
        <div class="layui-inline" style="width: 200px;height: auto; margin-left: -410px;margin-top: -400px;">
            <img  src="/frame/layui/images/img/erweima.png">
            <label style="color:rgba(0,176,240,0.9) ">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  App二维码 系统登录</label>
        </div>

        <%--微信二维码登录--%>
        <div class="layui-inline" style="width: 200px;height: auto; margin-left: 680px;margin-top: -400px;">
            <img  src="/frame/layui/images/img/erweima.png">
            <label style="color:rgba(0,176,240,0.9) ">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;微信验证登录</label>
        </div>
    </form>
</div>

<script type="text/javascript" src="../frame/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['form', 'layer'], function () {

        // 操作对象
        var form = layui.form
            , layer = layui.layer
            , $ = layui.jquery;

        // 验证
        form.verify({
            account: function (value) {
                if (value == "") {
                    return "请输入用户名";
                }
            },
            password: function (value) {
                if (value == "") {
                    return "请输入密码";
                }
            },
            code: function (value) {
                if (value == "") {
                    return "请输入验证码";
                }
            }
        });

        // 提交监听
        form.on('submit(sub)', function (data) {
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            });
            return false;
        });

        // you code ...
    })

</script>
</body>
</html>
