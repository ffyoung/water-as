<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018-10-08
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%--用户注册系统——注册说明资料--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>用户注册系统-PageEnding</title>
    <link rel="stylesheet" href="../frame/layui/css/layui.css">
    <link rel="stylesheet" href="../frame/static/css/style.css">
    <link rel="icon" href="../frame/static/image/code.png">
    <style>
        .fileinput-button {
            position: relative;
            display: inline-block;
            overflow: hidden;
        }

        .fileinput-button input{
            position:absolute;
            right: 0px;
            top: 0px;
            opacity: 0;
            -ms-filter: 'alpha(opacity=0)';
            font-size: 200px;
        }
    </style>
</head>
<body>

<div style="margin-top: inherit;margin-left: 490px;display: block;">
    <form class="layui-form" action="">
        <%--三级水权交易平台--%>
        <div style="
        margin-bottom: 20px;
        margin-top: 30px;
        background-color: rgba(0,176,240,0.9);
        width: 1100px;
        font-size: 86px;
        color: #ffffff;
        margin-left: -200px;
        padding: 10px;
        text-align:center
        ">
            三级水权交易系统平台
        </div>
        <%--用户注册系统--%>
        <div style="
           margin-bottom: 20px;
           background-color: rgba(255,192,0,0.9);
           width:243px;
           font-size: 40px;
           color: white;
           margin-left: 250px;
           padding: 10px;
">
            用户注册系统
        </div>


        <div style="margin-left: 139px">
            <%--注册说明--%>
            <div class="layui-form-item">
                <div class="layui-inline">
                    <div class="layui-input-block">
                        <textarea readonly style="margin-left:-56px;margin-top:40px;font-size:16px;resize: none; width: 370px;height: 110px;overflow: hidden;color: rgba(16,31,255,0.9)">

            请到注册邮箱接收注册授权信息后完成后续资料填报工作。注册申请最迟在三个工作日内完成注册授权。
                        </textarea>
                    </div>
                </div>
            </div>
            <%-------------------------------------BOTTON--------------------------------------------------------------%>
            <div class="layui-form-item" style="margin-left: 110px;">
                <%--确认--%>
                <div class="layui-input-inline">
                    <a class="layui-btn layui-btn-primary" style="margin-left:20px;color: rgba(16,31,255,0.9)">确认</a>
                </div>
                <%--进入邮箱--%>
                <div class="layui-input-inline">
                    <a href="/" class="layui-btn layui-btn-primary" style="margin-left:-40px;color: rgba(16,31,255,0.9)">进入邮箱</a>
                </div>
            </div>

        </div>
        <!-- 通用-970*90 -->
        <div>
            <ins class="adsbygoogle" style="display:inline-block;width:970px;height:90px" data-ad-client="ca-pub-6111334333458862" data-ad-slot="6835627838"></ins>
        </div>

        <script src="../frame/layui/layui.js" charset="utf-8"></script>
        <script>
            layui.use(['form', 'layedit', 'laydate'], function(){
                var form = layui.form
                    ,layer = layui.layer
                    ,layedit = layui.layedit
                    ,laydate = layui.laydate
                    , $ = layui.jquery;

                //日期
                laydate.render({
                    elem: '#date'
                });
                laydate.render({
                    elem: '#date1'
                });

                //创建一个编辑器
                var editIndex = layedit.build('LAY_demo_editor');

                //自定义验证规则
                form.verify({
                    title: function(value){
                        if(value.length < 5){
                            return '标题至少得5个字符啊';
                        }
                    }
                    ,pass: [/(.+){6,12}$/, '密码必须6到12位']
                    ,content: function(value){
                        layedit.sync(editIndex);
                    }
                });

                //监听指定开关
                form.on('switch(switchTest)', function(data){
                    layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
                        offset: '6px'
                    });
                    layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
                });

                //监听提交
                form.on('submit(demo1)', function(data){
                    layer.alert(JSON.stringify(data.field), {
                        title: '最终的提交信息'
                    });
                    return false;
                });



            });

            function count() {

                var form = layui.form
                    , $ = layui.jquery;

                $("#img_a").remove();
                $("#show").show();
                var r= new FileReader();
                f=document.getElementById('file').files[0];
                r.readAsDataURL(f);
                r.onload=function  (e) {
                    document.getElementById('show').src=this.result;
                };
            }




            //    ----------------------------------------------------------------------------------------------------------------

            // $("form").submit(function(){
            //     event.preventDefault();
            //     var formData = new FormData(this);
            //     $.ajax({
            //         url:"xxx.html",
            //         data:formData,
            //         dataType:'json',
            //         type:'post',
            //         processData: false,
            //         contentType: false,
            //         success:function(res){
            //             alert(res.msg);
            //             $("html").trigger('click');
            //         }
            //     });
            //     return false;
            // });


        </script>
</body>
</html>
