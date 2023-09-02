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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css" media="all">
    <%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui-v2.5.5/css/layui.css" media="all">--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css" media="all">
    <%--    <script src="${pageContext.request.contextPath}/lib/layui-v2.5.5/layui.js" charset="utf-8"></script>--%>
    <script src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/js/echarts.min.js"></script>
</head>
<body>
<div class="layui-main" style="height: 50%">
    <!--表单，查询出的数据在这里显示-->
    <table class="layui-hide" id="currentTableId" lay-filter="currentTableFilter"></table>

    <script type="text/html" id="currentTableBar">
        <a class="layui-btn layui-btn-xs" lay-event="more">查看详情<i class="layui-icon layui-icon-down"></i></a>
    </script>

</div>
<div class="layui-main" style="height: 400px">
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-primary demo1">
            切换数据表
            <i class="layui-icon layui-icon-down layui-font-12"></i>
        </button>
    </div>

    <div id="b1" style="height: 100%"></div>
</div>
<script>

    var hrChart = echarts.init(document.getElementById("b1"))

    function hrFunb1(x_data, y_data) {
        hrChart.dispose();
        hrChart = echarts.init(document.getElementById("b1"))
        hrChart.setOption(
            {
                title: {
                    text: '日常生活活动表'
                },
                color: ['#3398DB'],
                tooltip: {
                    trigger: 'axis',
                    axisPointer: { // 坐标轴指示器，坐标轴触发有效
                        type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
                    }
                },
                legend: {
                    data: ['心率值']
                },
                grid: {
                    left: '3%',
                    right: '20%',
                    bottom: '20%',
                    containLabel: true
                },
                xAxis: [{
                    type: 'category',
                    data: x_data,
                }],
                yAxis: [{ // 纵轴标尺固定
                    type: 'value',
                    scale: true,
                    name: '评分',
                    max: 3,
                    min: 0,
                    splitNumber: 3,
                    boundaryGap: [0.2, 0.2]
                }],
                series: [{
                    name: '总分',
                    type: 'line',
                    data: y_data
                }]
            }, true);
    }

    function hrFunb2(x_data, y_data) {
        hrChart.dispose();
        hrChart = echarts.init(document.getElementById("b1"))
        hrChart.setOption(
            {
                title: {
                    text: '精神状态表'
                },
                color: ['#3398DB'],
                tooltip: {
                    trigger: 'axis',
                    axisPointer: { // 坐标轴指示器，坐标轴触发有效
                        type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
                    }
                },
                legend: {
                    data: ['心率值']
                },
                grid: {
                    left: '3%',
                    right: '20%',
                    bottom: '20%',
                    containLabel: true
                },
                xAxis: [{
                    type: 'category',
                    data: x_data,
                }],
                yAxis: [{ // 纵轴标尺固定
                    type: 'value',
                    scale: true,
                    name: '评分',
                    max: 3,
                    min: 0,
                    splitNumber: 3,
                    boundaryGap: [0.2, 0.2]
                }],
                series: [{
                    name: '总分',
                    type: 'line',
                    data: y_data
                }]
            }, true);
    }

    function hrFunb3(x_data, y_data) {
        hrChart.dispose();
        hrChart = echarts.init(document.getElementById("b1"))
        hrChart.setOption(
            {
                title: {
                    text: "感知觉与沟通"
                },
                color: ['#3398DB'],
                tooltip: {
                    trigger: 'axis',
                    axisPointer: { // 坐标轴指示器，坐标轴触发有效
                        type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
                    }
                },
                legend: {
                    data: ['心率值']
                },
                grid: {
                    left: '3%',
                    right: '20%',
                    bottom: '20%',
                    containLabel: true
                },
                xAxis: [{
                    type: 'category',
                    data: x_data,
                }],
                yAxis: [{ // 纵轴标尺固定
                    type: 'value',
                    scale: true,
                    name: '评分',
                    max: 3,
                    min: 0,
                    splitNumber: 3,
                    boundaryGap: [0.2, 0.2]
                }],
                series: [{
                    name: '总分',
                    type: 'line',
                    data: y_data
                }]
            }, true);
    }

    function hrFunb4(x_data, y_data) {
        hrChart.dispose();
        hrChart = echarts.init(document.getElementById("b1"))
        hrChart.setOption(
            {
                title: {
                    text: "社会参与表"
                },
                color: ['#3398DB'],
                tooltip: {
                    trigger: 'axis',
                    axisPointer: { // 坐标轴指示器，坐标轴触发有效
                        type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
                    }
                },
                legend: {
                    data: ['心率值']
                },
                grid: {
                    left: '3%',
                    right: '20%',
                    bottom: '20%',
                    containLabel: true
                },
                xAxis: [{
                    type: 'category',
                    data: x_data,
                }],
                yAxis: [{ // 纵轴标尺固定
                    type: 'value',
                    scale: true,
                    name: '评分',
                    max: 3,
                    min: 0,
                    splitNumber: 3,
                    boundaryGap: [0.2, 0.2]
                }],
                series: [{
                    name: '总分',
                    type: 'line',
                    data: y_data
                }]
            }, true);
    }

    layui.use(['dropdown', 'form', 'table', 'tree', 'util'], function () {
        var $ = layui.jquery,
            form = layui.form,
            table = layui.table,
            layer = layui.layer,
            util = layui.util,
            dropdown = layui.dropdown;

        dropdown.render({
            elem: '.demo1'
            , data: [{
                title: '日常生活活动'
                , id: 100
            }, {
                title: '精神状态'
                , id: 101
            }, {
                title: '感知觉与沟通'
                , id: 102
            }, {
                title: '社会参与'
                , id: 103
            }]
            , click: function (obj) {
                if (obj.id == 100) {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/getViewBaseByIdcard?idcard=" +${idcard},
                        data: {},
                        type: 'POST',
                        success: function (data) {
                            console.log(JSON.stringify(data))
                            hrFunb1(data.xValues, data.b1yValuse);
                        }
                    })
                } else if (obj.id == 101) {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/getViewBaseByIdcard?idcard=" +${idcard},
                        data: {},
                        type: 'POST',
                        success: function (data) {
                            console.log(JSON.stringify(data))
                            hrFunb2(data.xValues, data.b2yValuse);
                        }
                    })
                } else if (obj.id == 102) {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/getViewBaseByIdcard?idcard=" +${idcard},
                        data: {},
                        type: 'POST',
                        success: function (data) {
                            console.log(JSON.stringify(data))
                            hrFunb3(data.xValues, data.b3yValuse);
                        }
                    })
                } else if (obj.id == 103) {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/getViewBaseByIdcard?idcard=" +${idcard},
                        data: {},
                        type: 'POST',
                        success: function (data) {
                            console.log(JSON.stringify(data))
                            hrFunb4(data.xValues, data.b4yValuse);
                        }
                    })
                }

            }
        });

        table.render({
            elem: '#currentTableId',
            url: '${pageContext.request.contextPath}/res/queryByIdcard?idcard=' +${idcard},//查询数据
            toolbar: '#toolbarDemo',
            defaultToolbar: ['filter', 'exports', 'print', {
                title: '提示',
                layEvent: 'LAYTABLE_TIPS',
                icon: 'layui-icon-tips'
            }],
            cols: [[
                {field: 'id', width: 100, title: '评估编号'},
                {field: 'name', width: 100, title: '姓名'},
                {field: 'ins', width: 120, title: '机构'},
                {field: 'age', width: 100, title: '年龄'},
                {field: 'fres', width: 150, title: '首次评估等级'},
                {field: 'sres', width: 150, title: '最终等级'},
                {field: 'order', width: 150, title: '评估次序'},
                {title: '操作', minWidth: 50, toolbar: '#currentTableBar', align: "center"}
            ]],
            limits: [10, 15, 20, 25, 50, 100],
            limit: 15,  <!--默认显示15条-->
            page: true,
            skin: 'line',
            id: 'testReload'
        });

        $.ajax({
            url: "${pageContext.request.contextPath}/getViewBaseByIdcard?idcard=" +${idcard},
            data: {},
            type: 'POST',
            success: function (data) {
                console.log(JSON.stringify(data))
                hrFunb1(data.xValues, data.b1yValuse);
            }
        })

        var $ = layui.$, active = {
            reload: function () {
                var id = $('#id').val();
                var cname = $('#cname').val();

                console.log(name)
                //执行重载
                table.reload('testReload', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    , where: {
                        id: id,
                        cname: cname
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
                    title: '文件内容',
                    type: 2,
                    shade: 0.2,
                    maxmin: true,
                    shadeClose: true,
                    area: ['50%', '50%'],
                    content: '${pageContext.request.contextPath}/queryCourseInfoById?id=' + data.id,
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
            } else if (obj.event === 'querySelected') {  // 监听修改操作
                var index = layer.open({
                    title: '已选课人名单',
                    type: 2,
                    shade: 0.2,
                    maxmin: true,
                    shadeClose: true,
                    area: ['30%', '80%'],
                    content: '${pageContext.request.contextPath}/querySelected?id=' + data.id,
                });
                $(window).on("resize", function () {
                    layer.full(index);
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

        table.on('tool(currentTableFilter)', function (obj) {
            var that = this
                , datas = obj.data;
            if (obj.event === 'more') {
                //更多下拉菜单
                dropdown.render({
                    elem: that
                    , show: true //外部事件触发即显示
                    , data: [{
                        title: '日常生活活动表'
                        , id: 'b1'
                    }, {
                        title: '精神状态表'
                        , id: 'b2'
                    }, {
                        title: '感知觉与沟通表'
                        , id: 'b3'
                    }, {
                        title: '社会参与表'
                        , id: 'b4'
                    }]
                    , click: function (data, othis) {
                        //根据 id 做出不同操作
                        if (data.id === 'b1') {
                            var index = layer.open({
                                title: '日常生活活动表',
                                type: 2,
                                shade: 0.2,
                                maxmin: true,
                                shadeClose: true,
                                area: ['100%', '100%'],
                                content: '${pageContext.request.contextPath}/res/queryB1All?id=' + datas.id,
                            });
                            $(window).on("resize", function () {
                                layer.full(index);
                            });
                        } else if (data.id === 'b2') {
                            var index = layer.open({
                                title: '精神状态表',
                                type: 2,
                                shade: 0.2,
                                maxmin: true,
                                shadeClose: true,
                                area: ['100%', '100%'],
                                content: '${pageContext.request.contextPath}/res/queryB2All?id=' + datas.id,
                            });
                            $(window).on("resize", function () {
                                layer.full(index);
                            });
                        } else if (data.id === 'b3') {
                            var index = layer.open({
                                title: '感知觉与沟通表',
                                type: 2,
                                shade: 0.2,
                                maxmin: true,
                                shadeClose: true,
                                area: ['100%', '100%'],
                                content: '${pageContext.request.contextPath}/res/queryB3All?id=' + datas.id,
                            });
                            $(window).on("resize", function () {
                                layer.full(index);
                            });
                        } else if (data.id === 'b4') {
                            var index = layer.open({
                                title: '社会参与表',
                                type: 2,
                                shade: 0.2,
                                maxmin: true,
                                shadeClose: true,
                                area: ['100%', '100%'],
                                content: '${pageContext.request.contextPath}/res/queryB4All?id=' + datas.id,
                            });
                            $(window).on("resize", function () {
                                layer.full(index);
                            });
                        }
                    }
                    , align: 'right' //右对齐弹出（v2.6.8 新增）
                    , style: 'box-shadow: 1px 1px 10px rgb(0 0 0 / 12%);' //设置额外样式
                });
            }
        });

    });

</script>
</body>

</html>
