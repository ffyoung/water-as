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
    <link rel="stylesheet" href="frame/layui/css/layui.css">
    <link rel="stylesheet" href="frame/static/css/style.css">
    <link rel="icon" href="frame/static/image/code.png">
</head>
<body class="body">


<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>默认表格</legend>
</fieldset>

<table class="layui-table">
    <colgroup>
        <col width="150">
        <col width="150">
        <col width="200">
        <col>
    </colgroup>
    <thead>
    <tr>
        <th>户主</th>
        <th>人口数目</th>
        <th>农田（亩）</th>
        <th>生态面积（m²）</th>
        <th>工厂占地面积（m²）</th>
    </tr>
    </thead>
    <tbody>

    <tr>
        <td>${headlist.hzName}</td>
        <td>${headlist.tp}</td>
        <td>${headlist.land}</td>
        <td>${headlist.waterEco}</td>
        <td>10</td>
    </tr>
    </tbody>
</table>







<script type="text/javascript" src="frame/layui/layui.js"></script>
<script type="text/javascript">
    // you code ...


</script>
</body>
</html>
