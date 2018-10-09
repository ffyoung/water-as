<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018-09-15
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>表格</title>
    <link rel="stylesheet" href="/frame/layui/css/layui.css">
    <link rel="stylesheet" href="/frame/static/css/style.css">
    <link rel="icon" href="/frame/static/image/code.png">
</head>
<body class="body">


<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>用水配额</legend>
</fieldset>

<table  id="MyQutable" class="layui-table">
    <colgroup>
        <col width="100">
        <col width="100">
        <col width="100">
        <col width="100">
        <col width="100">
        <col width="100">
    </colgroup>
    <thead>
    <tr>
        <th>省份</th>
        <th>生活用水</th>
        <th>农业用水</th>
        <th>生态用水</th>
        <th>工业用水</th>
        <th>配额总值</th>
        <%--<th>操作</th>--%>
    </tr>
    </thead>
    <tbody>

    <tr>
        <td>河南省</td>
        <td id="domestic_water" onclick="ShowElement(this)">${quota.domesticWater}</td>
        <td id="agricultural_water" onclick="ShowElement(this)">${quota.agriculturalWater}</td>
        <td id="ecological_water" onclick="ShowElement(this)">${quota.ecologicalWater}</td>
        <td id="industrial_water" onclick="ShowElement(this)">${quota.industrialWater}</td>
        <td>${quota.domesticWater
        +quota.agriculturalWater
        +quota.ecologicalWater
        +quota.industrialWater}</td>
        <%--<td ><a class="layui-btn layui-btn-mini">编辑</a></td>--%>
    </tr>
    </tbody>
</table>

<script type="text/javascript" src="/frame/layui/layui.js"></script>
<script type="text/javascript">
    // you code ...
    function ShowElement(element) {
        var oldhtml = element.innerHTML;
        //如果已经双击过，内容已经存在input，不做任何操作
        if(oldhtml.indexOf('type="text"') > 0){
            return;
        }
        //创建新的input元素
        var newobj = document.createElement('input');
        //为新增元素添加类型
        newobj.type = 'text';
        //为新增元素添加value值
        newobj.value = oldhtml;
        newobj.name = element.id;
        //为新增元素添加光标离开事件
        newobj.onblur = function() {
            //当触发时判断新增元素值是否为空，为空则不修改，并返回原有值
            if(this.value && this.value.trim()!==""){
                if(this.value == oldhtml){
                    element.innerHTML = oldhtml;
                }else {
                    element.innerHTML = this.value;

                    var $ = layui.jquery,
                        layer = layui.layer,
                        ele = layui.element;


                    var mdata = {
                        mkey : this.name,
                        mvalue : this.value
                        };
                    $.ajax({

                        url : "/quota/update",
                        data : mdata,
                        type : 'POST',
                        dataType : "json",
                        success : function (data) {

                            // 切换到当前选项卡
                            // 窗体对象
                            // var ifr = $(document).find('.my-body .layui-tab-content .layui-tab-item iframe').eq(1537412128642);
                            // // 刷新当前页
                            // ifr.attr('src', ifr.attr('src'));
                            // // 切换到当前选项卡
                            // ele.tabChange('card', 1537412128642);

                            layer.msg("修改参数成功！");
                        }
                    });
                }

            } else {
                element.innerHTML = oldhtml;
            }
        }
        //设置该标签的子节点为空
        element.innerHTML = '';
        //添加该标签的子节点，input对象
        element.appendChild(newobj);
        //设置选择文本的内容或设置光标位置（两个参数：start,end；start为开始位置，end为结束位置；如果开始位置和结束位置相同则就是光标位置）
        newobj.setSelectionRange(0, oldhtml.length);
        //设置获得光标
        newobj.focus();

    }

    layui.use(['layer','element'], function () {

        // 操作对象
        var layer       = layui.layer
            ,$          = layui.jquery;

    });







</script>
</body>
</html>
