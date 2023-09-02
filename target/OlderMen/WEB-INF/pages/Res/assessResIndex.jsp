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

<div class="layuimini-main">


    <div class="layui-col-md2">
        <div id="test1" class="demo-tree demo-tree-box"></div>

    </div>
    <div class="layui-col-md10">
        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">

            <div class="demoTable">
                <div class="layui-form">
                    <div class="layui-form-item">
                        <div class="layui-input-inline" style="width: 80px">
                            &nbsp;
                        </div>
                        <div class="layui-input-inline" style="width: 100px">
                            <select name="ty1" id="ty1" lay-filter="ty1">
                                <option value="0" selected>姓名</option>
                                <option value="1">机构</option>
                                <option value="2">年龄</option>
                                <option value="3">评估人</option>
                                <option value="4">提供者</option>
                            </select>
                        </div>
                        <div class="layui-input-inline" style="width: 500px">
                            <input type="text" name="txt1" id="txt1" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-input-inline" style="width: 80px">
                            <select name="extent1" id="extent1" lay-filter="extent1">
                                <option value="0">精准</option>
                                <option value="1">模糊</option>
                            </select>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <div class="layui-input-inline" style="width: 80px">
                            <select name="link1" id="link1" lay-filter="link1">
                                <option value="0" selected>AND</option>
                                <option value="1">OR</option>
                            </select>
                        </div>
                        <div class="layui-input-inline" style="width: 100px">
                            <select name="ty2" id="ty2" lay-filter="ty2">
                                <option value="0">姓名</option>
                                <option value="1" selected>机构</option>
                                <option value="2">年龄</option>
                                <option value="3">评估人</option>
                                <option value="4">提供者</option>
                            </select>
                        </div>
                        <div class="layui-input-inline" style="width: 500px">
                            <input type="text" name="txt2" id="txt2" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-input-inline" style="width: 80px">
                            <select name="extent2" id="extent2" lay-filter="iextent2">
                                <option value="0">精准</option>
                                <option value="1">模糊</option>
                            </select>
                        </div>

                    </div>
                    <div class="layui-form-item">
                        <div class="layui-input-inline" style="width: 80px">
                            <select name="link2" id="link2" lay-filter="link2">
                                <option value="0" selected>AND</option>
                                <option value="1">OR</option>
                            </select>
                        </div>
                        <div class="layui-input-inline" style="width: 100px">
                            <select name="ty3" id="ty3" lay-filter="ty3">
                                <option value="0">姓名</option>
                                <option value="1">机构</option>
                                <option value="2" selected>年龄</option>
                                <option value="3">评估人</option>
                                <option value="4">提供者</option>
                            </select>
                        </div>
                        <div class="layui-input-inline" style="width: 500px">
                            <input type="text" name="txt3" id="txt3" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-input-inline" style="width: 80px">
                            <select name="extent3" id="extent3" lay-filter="ins">
                                <option value="0">精准</option>
                                <option value="1">模糊</option>
                            </select>

                        </div>
                        <button class="layui-btn" data-type="reload">搜索</button>
                    </div>

                </div>
            </div>

            <!--表单，查询出的数据在这里显示-->
            <table class="layui-hide" id="currentTableId" lay-filter="currentTableFilter"></table>
            <script type="text/html" id="currentTableBar">
                <a class="layui-btn layui-btn-normal layui-btn-xs data-count-edit" lay-event="SeeRes">查看详细</a>
            </script>
        </div>
    </div>
</div>

<script>
    layui.use(['form', 'table', 'tree', 'util', 'element'], function () {
        var $ = layui.jquery,
            form = layui.form,
            table = layui.table,
            tree = layui.tree,
            layer = layui.layer,
            util = layui.util,
            upload = layui.upload,
            element = layui.element;

        $('.site-demo-active').on('click', function () {
            var othis = $(this), type = othis.data('type');
            active[type] ? active[type].call(this, othis) : '';
        });

        function getData() {
            var data = [];
            $.ajax({
                url: "${pageContext.request.contextPath}/finalRes/selectTree",    //后台数据请求地址
                type: "get",
                async: false,
                success: function (resut) {
                    data = resut;
                }
            });
            return data;
        }

        tree.render({
            elem: '#test1'
            , data: getData()
            , click: function (obj) {
                var data = obj.data
                var title = data.title;
                var father = data.father;
                console.log(name)
                //执行重载
                table.reload('testReload', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    , where: {
                        title: title,
                        father: father

                    }
                }, 'data');
            }
        });


        table.render({
            elem: '#currentTableId',
            url: '${pageContext.request.contextPath}/finalRes/findAll',//查询数据
            toolbar: '#toolbarDemo',
            defaultToolbar: ['filter', 'exports', 'print', {
                title: '提示',
                layEvent: 'LAYTABLE_TIPS',
                icon: 'layui-icon-tips'
            }],
            cols: [[
                {field: 'idcard', width: 150, title: '身份证'},
                {field: 'name', width: 150, title: '姓名'},
                {field: 'ins', width: 150, title: '机构'},
                {field: 'age', width: 150, title: '年龄'},
                {field: 'subname', width: 150, title: '信息提供者'},
                {title: '操作', minWidth: 50, toolbar: '#currentTableBar', align: "center"}
            ]],
            limits: [10, 15, 20, 25, 50, 100],
            limit: 15,  <!--默认显示15条-->
            page: true,
            skin: 'line',
            id: 'testReload'
        });


        var $ = layui.$, active = {
            reload: function () {
                var ty1 = $('#ty1').val();
                var txt1 = $('#txt1').val();
                var extent1 = $('#extent1').val();
                var link1 = $('#link1').val();
                var ty2 = $('#ty2').val();
                var txt2 = $('#txt2').val();
                var extent2 = $('#extent2').val();
                var link2 = $('#link2').val();
                var ty3 = $('#ty3').val();
                var txt3 = $('#txt3').val();
                var extent3 = $('#extent3').val();
                console.log(name)
                //执行重载
                table.reload('testReload', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    , where: {
                        ty1: ty1,
                        txt1: txt1,
                        extent1: extent1,
                        link1: link1,
                        ty2: ty2,
                        txt2: txt2,
                        extent2: extent2,
                        link2: link2,
                        ty3: ty3,
                        txt3: txt3,
                        extent3: extent3
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
            if (obj.event === 'SeeRes') {  // 监听修改操作
                var index = layer.open({
                    title: '详细结果',
                    type: 2,
                    shade: 0.2,
                    maxmin: true,
                    shadeClose: true,
                    area: ['100%', '100%'],
                    content: '${pageContext.request.contextPath}/res/AssessResMain?idcard='+data.idcard,
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
