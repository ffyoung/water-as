<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018-10-08
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%--用户注册系统——姓名、身份证、身份证居住地--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>用户注册系统-Page1st</title>
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
        <%--姓名--%>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label" >姓名*</label>
                <div class="layui-input-inline">
                    <input type="text" name="phone" lay-verify="phone" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>

        <%--身份证--%>
        <div class="layui-form-item">
            <label class="layui-form-label" >验证身份证*</label>
            <div class="layui-input-block">
                <input type="text" name="identity" lay-verify="identity" placeholder="" autocomplete="off" class="layui-input">
            </div>
        </div>

        <%--身份证居住地--%>
        <div class="layui-form-item">
            <label class="layui-form-label">身份证居住地*</label>
            <div class="layui-input-inline">
                <select name="quiz1">
                    <option value="">请选择省</option>
                    <option value="浙江" selected="">浙江省</option>
                    <option value="你的工号">江西省</option>
                    <option value="你最喜欢的老师">福建省</option>
                </select>
            </div>
            <div class="layui-input-inline">
                <select name="quiz2">
                    <option value="">请选择市</option>
                    <option value="杭州">杭州</option>
                    <option value="宁波" disabled="">宁波</option>
                    <option value="温州">温州</option>
                    <option value="温州">台州</option>
                    <option value="温州">绍兴</option>
                </select>
            </div>
            <div class="layui-input-inline">
                <select name="quiz3">
                    <option value="">请选择县/区</option>
                    <option value="西湖区">西湖区</option>
                    <option value="余杭区">余杭区</option>
                    <option value="拱墅区">临安市</option>
                </select>
            </div>
            <%--<div class="layui-form-mid layui-word-aux">此处只是演示联动排版，并未做联动交互</div>--%>
        </div>

        <%--乡&村&组--%>
        <div class="layui-form-item">
            <%--乡--%>
            <div class="layui-inline">
                <label class="layui-form-label">乡（镇、社区）</label>
                <div class="layui-input-inline">
                    <input type="tel" name="phone" lay-verify="phone" autocomplete="off" class="layui-input">
                </div>
            </div>
            <%--村--%>
            <div class="layui-inline">
                <label class="layui-form-label">村（小区）</label>
                <div class="layui-input-inline">
                    <input type="text" name="email" lay-verify="email" autocomplete="off" class="layui-input">
                </div>
            </div>
                <%--组--%>
            <div class="layui-inline">
                <label class="layui-form-label">组（楼及门牌号）</label>
                <div class="layui-input-inline">
                    <input type="text" name="email" lay-verify="email" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <%--图片上传正面手持身份证合照--%>
        <div class="layui-form-item">
            <div class="layui-input-inline" style="margin-right: 75px">
                <img id="show" alt=""  style="width: 200px;height: auto;display: block"/>
                <img id="img_a"  src="../frame/layui/images/img/sfzhz.png" style="width: 200px;height: auto;display: block" />

                <span class="fileinput-button">
                    <span>上传</span>
                    <input id="file" type="file" name="goods_img" onchange="count()"/>
                </span>
            </div>

            <%--身份证正面照--%>
            <div class="layui-input-inline" style="margin-right: 75px">
                <img id="show1" alt=""  style="width: 200px;height: auto;display: block"/>
                <img id="img_a1"  src="../frame/layui/images/img/sfzzm.png" style="width: 200px;height: auto;display: block" />

                <span class="fileinput-button">
                <span>上传</span>
                <input id="file1" type="file" name="goods_img" onchange="count()"/>
            </span>
            </div>
            <%--身份证反面照--%>
            <div class="layui-input-inline">
                <img id="show2" alt=""  style="width: 200px;height: auto;display: block"/>
                <img id="img_a2"  src="../frame/layui/images/img/sfzfm.png" style="width: 200px;height: auto;display: block" />

                <span class="fileinput-button">
                <span>上传</span>
                <input id="file2" type="file" name="goods_img" onchange="count()"/>
            </span>
            </div>
        </div>

        <div class="layui-form-item" style="margin-left: 115px;margin-top: 25px">
            <%--上一页按钮--%>
            <div class="layui-input-inline">
                <a class="layui-btn layui-btn-primary" style="color: rgba(16,31,255,0.9)">上一页</a>
            </div>
            <%--继续按钮--%>
            <div class="layui-input-inline">
                <a href="/registerTwo" class="layui-btn layui-btn-primary" style="color: rgba(16,31,255,0.9)">继续</a>
            </div>
            <%--退出按钮--%>
            <div class="layui-input-inline">
                <button class="layui-btn layui-btn-primary" style="color: rgba(16,31,255,0.9)">退出</button>
            </div>
        </div>

    <%--<div class="layui-form-item">--%>
        <%--<div class="layui-inline">--%>
            <%--<label class="layui-form-label">验证手机</label>--%>
            <%--<div class="layui-input-inline">--%>
                <%--<input type="tel" name="phone" lay-verify="phone" autocomplete="off" class="layui-input">--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="layui-inline">--%>
            <%--<label class="layui-form-label">验证邮箱</label>--%>
            <%--<div class="layui-input-inline">--%>
                <%--<input type="text" name="email" lay-verify="email" autocomplete="off" class="layui-input">--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>


</form>

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
