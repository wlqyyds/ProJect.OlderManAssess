<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%--<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>信息管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui-v2.5.5/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css" media="all">
    <script src="${pageContext.request.contextPath}/lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
</head>
<body>

<div class="layuimini-row">
    <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
        <ul class="layui-tab-title">
            <li class="layui-this">未评价</li>
            <li>已评价</li>
        </ul>
        <div class="layui-tab-content" style="height: 100px;">
            <div class="layui-tab-item layui-show">
                <div class="demoTable">
                    <div class="layui-form-item layui-form ">
                        姓名：
                        <div class="layui-inline">
                            <input class="layui-input" name="name" id="name" autocomplete="off">
                        </div>
                        身份证：
                        <div class="layui-inline">
                            <input class="layui-input" name="idcard" id="idcard" autocomplete="off">
                        </div>
                        社保号：
                        <div class="layui-inline">
                            <input class="layui-input" name="ssnum" id="ssnum" autocomplete="off">
                        </div>
                        <button class="layui-btn" data-type="reload">搜索</button>
                    </div>
                </div>


                <!--表单，查询出的数据在这里显示-->
                <table class="layui-hide" id="currentTableId" lay-filter="currentTableFilter"></table>
                <script type="text/html" id="currentTableBar">
                    <a class="layui-btn layui-btn-normal layui-btn-xs data-count-edit" lay-event="update">评定</a>
                </script>
            </div>
            <div class="layui-tab-item">
                <div class="demoTable">
                    <div class="layui-form-item layui-form ">
                        姓名：
                        <div class="layui-inline">
                            <input class="layui-input" name="name" id="name02" autocomplete="off">
                        </div>
                        身份证：
                        <div class="layui-inline">
                            <input class="layui-input" name="idcard" id="idcard02" autocomplete="off">
                        </div>
                        社保号：
                        <div class="layui-inline">
                            <input class="layui-input" name="ssnum" id="ssnum02" autocomplete="off">
                        </div>
                        <button class="layui-btn" data-type="reload">搜索</button>
                    </div>
                </div>


                <!--表单，查询出的数据在这里显示-->
                <table class="layui-hide" id="currentTableId02" lay-filter="currentTableFilter"></table>
                <script type="text/html" id="currentTableBar02">
                    <a class="layui-btn layui-btn-normal layui-btn-xs data-count-edit" lay-event="update02">再次评定</a>
                </script>
            </div>

        </div>
    </div>
</div>

<script>


    layui.use('element', function () {
        var $ = layui.jquery
            , element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块
        $('.site-demo-active').on('click', function () {
            var othis = $(this), type = othis.data('type');
            active[type] ? active[type].call(this, othis) : '';
        });

    });

    layui.use(['form', 'table', 'tree', 'util'], function () {
        var $ = layui.jquery,
            form = layui.form,
            table = layui.table,
            layer = layui.layer,
            util = layui.util,
            upload = layui.upload



        table.render({
            elem: '#currentTableId',
            url: '${pageContext.request.contextPath}/findAll2',//查询数据
            toolbar: '#toolbarDemo',
            defaultToolbar: ['filter', 'exports', 'print', {
                title: '提示',
                layEvent: 'LAYTABLE_TIPS',
                icon: 'layui-icon-tips'
            }],
            cols: [[
                {type: "checkbox", width: 50},
                {field: 'name', width: 150, title: '姓名'},
                {field: 'sex', width: 150, title: '性别'},
                {field: 'idcard', width: 200, title: '身份证号'},
                {field: 'ssnum', width: 150, title: '社保号'},
                {field: 'nation', width: 150, title: '民族'},
                {field: 'edu', width: 150, title: '文化程度'},
                {field: 'mar', width: 150, title: '婚姻状况'},
                {field: 'stay', width: 150, title: '居住情况'},
                {field: 'stay', width: 150, title: '居住情况'},
                {
                    field: 'state', width: 100, title: '评估状态',
                    templet: function (d) {
                        //得到当前行数据，并拼接成自定义模板
                        return '<span style="color: #c00;">' + '未评定' + '</span>'

                    }
                },
                {title: '操作', minWidth: 50, toolbar: '#currentTableBar', align: "center"}
            ]],
            limits: [10, 15, 20, 25, 50, 100],
            limit: 15,  <!--默认显示15条-->
            page: true,
            skin: 'line',
            id: 'testReload01'
        });

        table.render({
            elem: '#currentTableId02',
            url: '${pageContext.request.contextPath}/findAll3',//查询数据
            toolbar: '#toolbarDemo',
            defaultToolbar: ['filter', 'exports', 'print', {
                title: '提示',
                layEvent: 'LAYTABLE_TIPS',
                icon: 'layui-icon-tips'
            }],
            cols: [[
                {type: "checkbox", width: 50},
                {field: 'name', width: 150, title: '姓名'},
                {field: 'sex', width: 150, title: '性别'},
                {field: 'idcard', width: 200, title: '身份证号'},
                {field: 'ssnum', width: 150, title: '社保号'},
                {field: 'nation', width: 150, title: '民族'},
                {field: 'edu', width: 150, title: '文化程度'},
                {field: 'mar', width: 150, title: '婚姻状况'},
                {field: 'stay', width: 150, title: '居住情况'},
                {
                    field: 'state', width: 100, title: '评估状态',
                    templet: function (d) {
                        //得到当前行数据，并拼接成自定义模板
                        return '<span style="color: #32CD32;">' + '已评定' + '</span>'

                    }
                },
                {title: '操作', minWidth: 50, toolbar: '#currentTableBar02', align: "center"}
            ]],
            limits: [10, 15, 20, 25, 50, 100],
            limit: 15,  <!--默认显示15条-->
            page: true,
            skin: 'line',
            id: 'testReload02'
        });

        var $ = layui.$, active = {
            reload: function () {
                var Name = $('#name').val();
                var Idcard = $('#idcard').val();
                var Ssnum = $('#ssnum').val();
                /*var type = $('#type').val();*/
                console.log(name)
                //执行重载
                table.reload('testReload01', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    , where: {
                        name: Name,
                        idcard: Idcard,
                        ssnum: Ssnum,

                    }
                }, 'data');
            }
        };

        var $ = layui.$, active = {
            reload: function () {
                var Name = $('#name02').val();
                var Idcard = $('#idcard02').val();
                var Ssnum = $('#ssnum02').val();
                /*var type = $('#type').val();*/
                console.log(name)
                //执行重载
                table.reload('testReload02', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    , where: {
                        name: Name,
                        idcard: Idcard,
                        ssnum: Ssnum,

                    }
                }, 'data');
            }
        };

        $('.demoTable .layui-btn').on('click', function () {
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });

        /**
         * tool操作栏监听事件
         */
        table.on('tool(currentTableFilter)', function (obj) {
            var data = obj.data;
            if (obj.event === 'update') {  // 监听修改操作
                var index = layer.open({
                    title: '评估列表',
                    type: 2,
                    shade: 0.2,
                    maxmin: true,
                    shadeClose: true,
                    area: ['100%', '100%'],
                    content: '${pageContext.request.contextPath}/AssessMain?idcard=' + data.idcard,
                });
                $(window).on("resize", function () {
                    layer.full(index);
                });
            } else if (obj.event === 'update02') {  // 监听修改操作
                var index = layer.open({
                    title: '评估列表',
                    type: 2,
                    shade: 0.2,
                    maxmin: true,
                    shadeClose: true,
                    area: ['100%', '100%'],
                    content: '${pageContext.request.contextPath}/AssessMain?idcard=' + data.idcard,
                });
                $(window).on("resize", function () {
                    layer.full(index);
                });
            } else if (obj.event === 'delete') {  // 监听删除操作
                layer.confirm('确定是否删除', function (index) {
                    //调用删除功能
                    deleteInfoByIds(data.id, index);
                    layer.close(index);
                });
            }
        });

        //监听表格复选框选择
        table.on('checkbox(currentTableFilter)', function (obj) {
            console.log(obj)
        });

        /**
         * 获取选中记录的id信息
         */
        function getCheackId(data) {
            var arr = new Array();
            for (var i = 0; i < data.length; i++) {
                arr.push(data[i].id);
            }
            //拼接id,变成一个字符串
            return arr.join(",");
        };


        /**
         * 提交删除功能
         */
        function deleteInfoByIds(ids, index) {
            //向后台发送请求
            $.ajax({
                url: "deleteReader",
                type: "POST",
                data: {ids: ids},
                success: function (result) {
                    if (result.code == 0) {//如果成功
                        layer.msg('删除成功', {
                            icon: 6,
                            time: 500
                        }, function () {
                            parent.window.location.reload();
                            var iframeIndex = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(iframeIndex);
                        });
                    } else {
                        layer.msg("删除失败");
                    }
                }
            })
        };

        /**
         * toolbar栏监听事件
         */
        table.on('toolbar(currentTableFilter)', function (obj) {
            if (obj.event === 'add') {  // 监听添加操作
                var index = layer.open({
                    title: '单个信息添加',
                    type: 2,
                    shade: 0.2,
                    maxmin: true,
                    shadeClose: true,
                    area: ['100%', '100%'],
                    content: '${pageContext.request.contextPath}/OrderManAdd',
                });
                $(window).on("resize", function () {
                    layer.full(index);
                });
            } else if (obj.event === 'adds') {
                layer.open({
                    type: 2,
                    title: 'Excel上传',
                    shadeClose: true,
                    shade: 0.8,
                    area: ['500px', '50%'],
                    content: '${pageContext.request.contextPath}/upload',
                    btn: ['确定', '取消'],
                    yes: function (index) {
                        var formSubmit = layer.getChildFrame('form', index);
                        var submited = formSubmit.find('button')[0];
                        submited.click();
                        $('.layui-laypage-btn').click();
                    }
                });
            } else if (obj.event === 'delete') {
                /*
                  1、提示内容，必须删除大于0条
                  2、获取要删除记录的id信息
                  3、提交删除功能 ajax
                */
                //获取选中的记录信息
                var checkStatus = table.checkStatus(obj.config.id);
                var data = checkStatus.data;
                if (data.length == 0) {//如果没有选中信息
                    layer.msg("请选择要删除的记录信息");
                } else {
                    //获取记录信息的id集合,拼接的ids
                    var ids = getCheackId(data);
                    layer.confirm('确定是否删除', function (index) {
                        //调用删除功能
                        deleteInfoByIds(ids, index);
                        layer.close(index);
                    });
                }
            }
        });

    });
</script>
</body>

</html>
