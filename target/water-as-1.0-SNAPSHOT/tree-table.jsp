<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018-09-13
  Time: 10:26
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
    <title></title>
    <link rel="stylesheet" href="frame/layui/css/layui.css">
    <link rel="stylesheet" href="frame/static/css/style.css">
    <link rel="icon" href="frame/static/image/code.png">
</head>
<body class="body">

<div class="layui-row layui-col-space10">
    <div class="layui-col-xs12 layui-col-sm2 layui-col-md2">
        <!-- tree -->
        <ul id="tree" class="tree-table-tree-box"></ul>
    </div>
    <div class="layui-col-xs12 layui-col-sm10 layui-col-md10">
        <!-- 工具集 -->
        <div class="my-btn-box">
            <span class="fl">
                <a class="layui-btn layui-btn-danger" id="btn-delete-all">批量删除</a>
                <a class="layui-btn btn-default btn-add" id="btn-add-article">发布文章</a>
            </span>
            <span class="fr">
                <span class="layui-form-label">搜索条件：</span>
                <div class="layui-input-inline">
                    <input type="text" autocomplete="off" placeholder="请输入搜索条件" class="layui-input">
                </div>
                <button class="layui-btn mgl-20">查询</button>
            </span>
        </div>
        <!-- table -->
        <%--<div id="dateTable"></div>--%>
        <div id="MyTable"></div>
        <%--<iframe id="Myiframe" src="/test">--%>
        <%--</iframe>--%>
    </div>
</div>


<script type="text/javascript" src="frame/layui/layui.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script type="text/javascript">

    // layui方法
    layui.use(['tree', 'table', 'vip_table', 'layer'], function () {

        // 操作对象
        var table = layui.table
                , vipTable = layui.vip_table
                , layer = layui.layer
                , $ = layui.jquery;


        // 表格渲染
        var tableIns = table.render({
            elem: '#dateTable'                  //指定原始表格元素选择器（推荐id选择器）
            , height: vipTable.getFullHeight()    //容器高度
            , cols: [[                  //标题栏
                {checkbox: true, sort: true, fixed: true, space: true}
                , {field: 'id', title: 'A', width: 80}
                , {field: 'account', title: 'B', width: 120}
                , {field: 'auth_group_name', title: 'C', width: 120}
                , {field: 'last_login_time', title: 'D', width: 180}
                , {field: 'last_login_ip', title: 'E', width: 180}
                , {field: 'create_time', title: 'F', width: 180}
                , {field: 'status', title: 'G', width: 70}
                , {fixed: 'right', title: 'H', width: 150, align: 'center', toolbar: '#barOption'} //这里的toolbar值是模板元素的选择器
            ]]
            , id: 'dataCheck'
            , url: './../json/data_table.json'
            , method: 'get'
            , page: true
            , limits: [30, 60, 90, 150, 300]
            , limit: 30 //默认采用30
            , loading: false
            , done: function (res, curr, count) {
                //如果是异步请求数据方式，res即为你接口返回的信息。
                //如果是直接赋值的方式，res即为：{data: [], count: 99} data为当前页数据、count为数据总长度
                console.log(res);

                //得到当前页码
                console.log(curr);

                //得到数据总量
                console.log(count);
            }
        });

        // 获取选中行
        table.on('checkbox(dataCheck)', function (obj) {
            console.log(obj.checked); //当前是否选中状态
            console.log(obj.data); //选中行的相关数据
            console.log(obj.type); //如果触发的是全选，则为：all，如果触发的是单选，则为：one
        });

        // 树        更多操作请查看 http://www.layui.com/demo/tree.html

        $(document).ready(function () {

            var n;

            //记载Menu列表的表单
            $.ajax(
                {
                    url : "menu/menuList",
                    type : 'POST',
                    dataType : "json",
                    cache : false,
                    success : function (data) {

                        // console.log(data);


                        // --------------------Start---------------------
                        layui.tree({
                            elem: '#tree' //传入元素选择器
                            , click: function (item) { //点击节点回调
                                console.log("item:"+item);
                                layer.msg('当前节名称：' + item.name + item.url);

                                var mdata = {
                                    menuId : item.id
                                }
                                var url =
                                $.ajax({
                                    url : '/info/list',
                                    method : 'post',
                                    data : mdata,
                                    dataType : 'html',
                                    success:function (data) {
                                        console.log(data);
                                        $("#MyTable").html(data);
                                    }
                                });

                                // 加载中...
                                var loadIndex = layer.load(2, {shade: false});
                                // 关闭加载
                                layer.close(loadIndex);
                                // 刷新表格
                                // tableIns.reload();
                            }
                            ,
                                nodes: data
                        });
                        //--------------------end---------------------
                    }
                }
            );



        });

        // layui.tree({
        //     elem: '#tree' //传入元素选择器
        //     , click: function (item) { //点击节点回调
        //         layer.msg('当前节名称：' + item.name);
        //         // 加载中...
        //         var loadIndex = layer.load(2, {shade: false});
        //         // 关闭加载
        //         layer.close(loadIndex);
        //         // 刷新表格
        //         tableIns.reload();
        //     }
        //     , nodes: [{ //节点
        //         name: '父节点1'
        //         , children: [{
        //             name: '子节点11'
        //             , children: [{
        //                 name: '子节点111'
        //             }]
        //         }, {
        //             name: '子节点12'
        //         }]
        //     }, {
        //         name: '父节点2'
        //         , children: [{
        //             name: '子节点21'
        //             , children: [{
        //                 name: '子节点211'
        //             }]
        //         }]
        //     }]
        // });

        // you code ...

        $("#myButton").click(function () {

            var username ="rock";
            var password ="123";

            var tdata ={
                username:username,
                password:password
            }

            $.ajax(
                {
                    url : "/test",
                    type : 'POST',
                    dataType : "json",
                    data : tdata,
                    cache : false,
                    success : function (data) {
                        console.log(data);
                        var sm = data.mPs + data.mUs;
                        console.log(sm);
                        $("#layOne").val(sm);
                    }
                }
            );


        });


    });
</script>
<!-- 表格操作按钮集 -->
<script type="text/html" id="barOption">
    <a class="layui-btn layui-btn-mini" lay-event="detail">查看</a>
    <a class="layui-btn layui-btn-mini layui-btn-normal" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-mini layui-btn-danger" lay-event="del">删除</a>
</script>
</body>
</html>