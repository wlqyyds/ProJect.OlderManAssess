<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<html>
<head>
    <meta charset="utf-8">
    <title>添加读者</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui-v2.5.5/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css" media="all">
    <style>
        body {
            background-color: #ffffff;
        }
    </style>
</head>
<body class="layui-layout-body">

<div class="layui-upload" align="center">
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;" align="center">
        <legend>请选择您要上传的Excel文件</legend>
    </fieldset>

    <div style="margin-top: 30px" align="center">
        <button id="importData" class="layui-btn layui-btn-normal">导入</button>
    </div>
</div>


<script src="${pageContext.request.contextPath}/lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/lib/jquery-3.4.1/jquery-3.4.1.min.js"></script>

<script >

    ctxPath = /*[[@{/}]]*/ '';

    layui.use(["element", "layer", "upload"], function () {
        var layer = layui.layer
        ,upload = layui.upload;
        upload.render({ //允许上传的文件后缀
            elem: '#importData'
            ,url: '/member/upload/'
            ,accept: 'file' //普通文件
            ,exts: 'xlsx' //上传文件格式说
            ,done: function(res){
                layer.msg(res.msg,{
                    btn:['确定'],
                    btnAlign: 'c',
                    time:20000,
                    btn1:function (index,layero) {
                        location.reload();
                    }
                });
            }
        });
    });

</script>

</body>
</html>

