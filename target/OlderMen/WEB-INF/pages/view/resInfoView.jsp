<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css" media="all">
    <script src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/js/echarts.min.js"></script>
</head>
<body>
<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
    <ul class="layui-tab-title">
        <li class="layui-this">总体能力分析</li>
        <li>能力趋势分析</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <div id="main" style="height: 100%"></div>
        </div>
        <div class="layui-tab-item">
            <div class="demoTable">
                <div class="layui-form" style="text-align: center">
                    <div class="layui-input-inline" style="width: 80px">
                        <select name="link1" id="link1" lay-filter="link1">
                            <option value="0" selected>姓名</option>
                        </select>
                    </div>
                    <div class="layui-input-inline">
                        <select name="name" lay-verify="required" lay-search="">
                            <option value="">直接选择或搜索选择</option>
                            <c:forEach var="name" items="${names}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <button class="layui-btn layui-btn-normal" lay-submit lay-filter="saveBtn">查询</button>
                </div>
            </div>
            <div class="layui-btn-container" align="left">
                <button class="layui-btn layui-btn-primary demo1">
                    切换数据表
                    <i class="layui-icon layui-icon-down layui-font-12"></i>
                </button>
            </div>

            <div id="b1" style="height: 100%"></div>

        </div>
    </div>
</div>

<script>

    var datas

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

    layui.use(['form', 'util', 'element', 'dropdown'], function () {
        util = layui.util,
            element = layui.element,
            form = layui.form,
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
                        url: "${pageContext.request.contextPath}/getViewBase",
                        data: datas,
                        type: 'POST',
                        success: function (data) {
                            console.log(JSON.stringify(data))
                            hrFunb1(data.xValues, data.b1yValuse);
                        }
                    })
                } else if (obj.id == 101) {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/getViewBase",
                        data: datas,
                        type: 'POST',
                        success: function (data) {
                            console.log(JSON.stringify(data))
                            hrFunb2(data.xValues, data.b2yValuse);
                        }
                    })
                } else if (obj.id == 102) {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/getViewBase",
                        data: datas,
                        type: 'POST',
                        success: function (data) {
                            console.log(JSON.stringify(data))
                            hrFunb3(data.xValues, data.b3yValuse);
                        }
                    })
                } else if (obj.id == 103) {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/getViewBase",
                        data: datas,
                        type: 'POST',
                        success: function (data) {
                            console.log(JSON.stringify(data))
                            hrFunb4(data.xValues, data.b4yValuse);
                        }
                    })
                }

            }
        });

        form.on('submit(saveBtn)', function (data) {
            datas = data.field;//form单中的数据信息
            //向后台发送数据提交添加
            $.ajax({
                url: "${pageContext.request.contextPath}/getViewBase",
                data: datas,
                type: 'POST',
                success: function (data) {
                    console.log(JSON.stringify(data))
                    hrFunb1(data.xValues, data.b1yValuse);
                }
            })
            return false;
        });
        // tab位置
        var $ = layui.jquery; //Tab的切换功能，切换事件监听等，需要依赖element模块

        $('.site-demo-active').on('click', function () {
            var othis = $(this), type = othis.data('type');
            active[type] ? active[type].call(this, othis) : '';
        });

        //Hash地址的定位
        var layid = location.hash.replace(/^#test=/, '');
        element.tabChange('test', layid);

        element.on('tab(test)', function (elem) {
            location.hash = 'test=' + $(this).attr('lay-id');
        });
    });
</script>
<script>
    var chartDom = document.getElementById('main');
    var myChart = echarts.init(chartDom);
    setTimeout(function () {
        option = {
            legend: {},
            tooltip: {
                trigger: 'axis',
                showContent: false
            },
            dataset: {
                source: [
                    ['product', '州绿林养老院', '恒生堂养老院'],
                    ['能力完好', 0, 2],
                    ['轻度失能', 1, 1],
                    ['中度失能', 4, 1],
                    ['重度失能', 0, 0]
                ]
            },
            xAxis: {type: 'category'},
            yAxis: {gridIndex: 0},
            grid: {top: '55%'},
            series: [
                {
                    type: 'bar',
                    label: {
                        show: true,
                        position: 'right',
                        valueAnimation: true
                    },
                    seriesLayoutBy: 'row',
                    emphasis: {focus: 'series'}
                },
                {
                    type: 'bar',
                    label: {
                        show: true,
                        position: 'right',
                        valueAnimation: true
                    },
                    // smooth: true,
                    seriesLayoutBy: 'row',
                    emphasis: {focus: 'series'}
                },
                {
                    type: 'bar',
                    label: {
                        show: true,
                        position: 'right',
                        valueAnimation: true
                    },
                    // smooth: true,
                    seriesLayoutBy: 'row',
                    emphasis: {focus: 'series'}
                },
                {
                    type: 'bar',
                    label: {
                        show: true,
                        position: 'right',
                        valueAnimation: true
                    },
                    // smooth: true,
                    seriesLayoutBy: 'row',
                    emphasis: {focus: 'series'}
                },
                {
                    type: 'pie',
                    id: 'pie',
                    radius: '30%',
                    center: ['50%', '25%'],
                    emphasis: {
                        focus: 'self'
                    },
                    label: {
                        formatter: '{b}: {@2012} ({d}%)'
                    },
                    encode: {
                        itemName: 'product',
                        value: '2012',
                        tooltip: '2012'
                    }
                }
            ]
        };
        myChart.on('updateAxisPointer', function (event) {
            const xAxisInfo = event.axesInfo[0];
            if (xAxisInfo) {
                const dimension = xAxisInfo.value + 1;
                myChart.setOption({
                    series: {
                        id: 'pie',
                        label: {
                            formatter: '{b}: {@[' + dimension + ']} ({d}%)'
                        },
                        encode: {
                            value: dimension,
                            tooltip: dimension
                        }
                    }
                });
            }
        });
        myChart.setOption(option);
    });
    option && myChart.setOption(option);
</script>

</body>
</html>
