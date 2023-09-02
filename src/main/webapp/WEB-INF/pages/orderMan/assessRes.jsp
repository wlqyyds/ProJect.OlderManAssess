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
<div class="layuimini-container">
    <div class="layuimini-container">
        <div align="center" class="layui-field-title">
            <h1>老年人能力评估信息表</h1>
        </div>

        <div class="demoTable">
            <div class="layui-form-item layui-form " align="center">

                评估编号：
                <div class="layui-inline">
                    <input class="layui-input" name="name" id="name" autocomplete="off">
                </div>
                验证日期：
                <div class="layui-inline">
                    <input type="text" name="date" id="date" lay-verify="date" autocomplete="off" class="layui-input">
                </div>
                评估原因：
                <div class="layui-inline">
                    <input class="layui-input" name="ssnum" id="ssnum" autocomplete="off">
                </div>

            </div>
        </div>
    </div>
    <div class="layui-tab-content">
        <table class="layui-table">
            <tr>
                <td rowspan="3">
                    B.1.1 进食：指用餐具将食物由容器送到口中、咀嚼、吞咽等过程
                </td>
                <td rowspan="3">
                    <label class="layui-form-label">分数</label>
                    <div class="layui-input-block">
                        <select name="interest">
                            <option value="" selected></option>
                            <option value="10">10</option>
                            <option value="5">5</option>
                            <option value="0">0</option>
                        </select>
                    </div>
                </td>
                <td>
                    10 分，可独立进食（在合理的时间内独立进食准备好的食物）
                </td>
            </tr>

            <tr>
                <td>
                    5 分， 需部分帮助（进食过程中需要一定帮助，如协助把持餐具）
                </td>
            </tr>
            <tr>
                <td>
                    0 分， 需极大帮助或完全依赖他人，或有留置营养管
                </td>
            </tr>
            <tr>
                <td rowspan="2">
                    B.1.2 洗澡
                </td>
                <td rowspan="2">
                    <label class="layui-form-label">分数</label>
                    <div class="layui-input-block">
                        <select name="interest">
                            <option value="" selected></option>
                            <option value="5">5</option>
                            <option value="0">0</option>
                        </select>
                    </div>
                </td>
                <td>
                    5 分， 准备好洗澡水后，可自己独立完成洗澡过程
                </td>
            </tr>

            <tr>
                <td>
                    0 分， 在洗澡过程中需他人帮助
                </td>
            </tr>
            <tr>
                <td rowspan="2">
                    B.1.3 修饰：指洗脸、刷牙、梳头、刮脸等
                </td>
                <td rowspan="2">
                    <label class="layui-form-label">分数</label>
                    <div class="layui-input-block">
                        <select name="interest">
                            <option value="" selected></option>
                            <option value="5">5</option>
                            <option value="0">0</option>
                        </select>
                    </div>
                </td>
                <td>
                    5 分， 可自己独立完成
                </td>
            </tr>

            <tr>
                <td>
                    0 分， 需他人帮助
                </td>
            </tr>
            <tr>
                <td rowspan="3">
                    B.1.4 穿衣：指穿脱衣服、系扣、拉拉链、穿脱鞋袜、系鞋带
                </td>
                <td rowspan="3">
                    <label class="layui-form-label">分数</label>
                    <div class="layui-input-block">
                        <select name="interest">
                            <option value="" selected></option>
                            <option value="10">10</option>
                            <option value="5">5</option>
                            <option value="0">0</option>
                        </select>
                    </div>
                </td>
                <td>
                    10 分，可独立完成
                </td>
            </tr>

            <tr>
                <td>
                    5 分， 需部分帮助（能自己穿脱，但需他人帮助整理衣物、系扣/鞋带、拉拉链）
                </td>
            </tr>
            <tr>
                <td>
                    0 分， 需极大帮助或完全依赖他人
                </td>
            </tr>
            <tr>
                <td rowspan="3">
                    B.1.5
                    大便控制
                </td>
                <td rowspan="3">
                    <label class="layui-form-label">分数</label>
                    <div class="layui-input-block">
                        <select name="interest">
                            <option value="" selected></option>
                            <option value="10">10</option>
                            <option value="5">5</option>
                            <option value="0">0</option>
                        </select>
                    </div>
                </td>
                <td>
                    10 分，可控制大便
                </td>
            </tr>

            <tr>
                <td>
                    5 分， 偶尔失控（每周<1 次），或需要他人提示
                </td>
            </tr>
            <tr>
                <td>
                    0 分， 完全失控
                </td>
            </tr>
        </table>
    </div>
</div>

<script src="${pageContext.request.contextPath}/lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
<script>

</script>

</body>

</html>
