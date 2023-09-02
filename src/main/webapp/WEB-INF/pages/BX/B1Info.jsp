<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui-v2.5.5/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css" media="all">
    <script src="${pageContext.request.contextPath}/lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
</head>
<body>
        <table class="layui-table">
            <tr>
                <td rowspan="3">
                    B.1.1 进食：指用餐具将食物由容器送到口中、咀嚼、吞咽等过程
                </td>
                <td rowspan="3">
                    分数：${b1.b11}分
                    <%--<label class="layui-form-label">分数:</label>
                    <div class="layui-input-block" style="width: 100px">
                        <select name="b11">
                            <option value="-1" selected></option>
                            <option value="10">10</option>
                            <option value="5">5</option>
                            <option value="0">0</option>
                        </select>
                    </div>--%>
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
                    分数：${b1.b12}分
                    <%--<label class="layui-form-label">分数</label>
                    <div class="layui-input-block" style="width: 100px">
                        <select name="b12">
                            <option value="-1" selected></option>
                            <option value="5">5</option>
                            <option value="0">0</option>
                        </select>
                    </div>--%>
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
                    分数:${b1.b13}分
                    <%--<label class="layui-form-label">分数</label>
                    <div class="layui-input-block" style="width: 100px">
                        <select name="b13">
                            <option value="-1" selected></option>
                            <option value="5">5</option>
                            <option value="0">0</option>
                        </select>
                    </div>--%>
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
                    分数：${b1.b14}分
                    <%--<label class="layui-form-label">分数</label>
                    <div class="layui-input-block" style="width: 100px">
                        <select name="b14">
                            <option value="-1" selected></option>
                            <option value="10">10</option>
                            <option value="5">5</option>
                            <option value="0">0</option>
                        </select>
                    </div>--%>
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
                    分数：${b1.b15}分
                    <%--<label class="layui-form-label">分数</label>
                    <div class="layui-input-block" style="width: 100px">
                        <select name="b15">
                            <option value="-1" selected></option>
                            <option value="10">10</option>
                            <option value="5">5</option>
                            <option value="0">0</option>
                        </select>
                    </div>--%>
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
            <tr>
                <td rowspan="3">
                    B.1.6
                    小便控制
                </td>
                <td rowspan="3">
                    分数：${b1.b16}分
                    <%--<label class="layui-form-label">分数</label>
                    <div class="layui-input-block" style="width: 100px">
                        <select name="b16">
                            <option value="-1" selected></option>
                            <option value="10">10</option>
                            <option value="5">5</option>
                            <option value="0">0</option>
                        </select>
                    </div>--%>
                </td>
                <td>
                    10 分，可控制小便
                </td>
            </tr>

            <tr>
                <td>
                    5 分， 偶尔失控（每天<1 次，但每周>1 次），或需要他人提示
                </td>
            </tr>
            <tr>
                <td>
                    0 分， 完全失控，或留置导尿管
                </td>
            </tr>
            <tr>
                <td rowspan="3">
                    B.1.7 如厕：
                    包括去厕所、解
                    开衣裤、擦净、
                    整理衣裤、冲水
                </td>
                <td rowspan="3">
                    分数：${b1.b17}分
                    <%--<label class="layui-form-label">分数</label>
                    <div class="layui-input-block" style="width: 100px">
                        <select name="b17">
                            <option value="-1" selected></option>
                            <option value="10">10</option>
                            <option value="5">5</option>
                            <option value="0">0</option>
                        </select>
                    </div>--%>
                </td>
                <td>
                    10 分，可独立完成
                </td>
            </tr>

            <tr>
                <td>
                    5 分，需部分帮助（需他人搀扶去厕所、需他人帮忙冲水或整理衣裤等）
                </td>
            </tr>
            <tr>
                <td>
                    0 分， 需极大帮助或完全依赖他人
                </td>
            </tr>
            <tr>
                <td rowspan="4">
                    B.1.8
                    床椅转移
                </td>
                <td rowspan="4">
                    分数：${b1.b18}分
                    <%--<label class="layui-form-label">分数</label>
                    <div class="layui-input-block" style="width: 100px">
                        <select name="b18">
                            <option value="-1" selected></option>
                            <option value="10">15</option>
                            <option value="10">10</option>
                            <option value="5">5</option>
                            <option value="0">0</option>
                        </select>
                    </div>--%>
                </td>
                <td>
                    15 分，可独立完成
                </td>
            </tr>

            <tr>
                <td>
                    10 分，需部分帮助（需他人搀扶或使用拐杖）
                </td>
            </tr>
            <tr>
                <td>
                    5 分， 需极大帮助（较大程度上依赖他人搀扶和帮助）
                </td>
            </tr>
            <tr>
                <td>
                    0 分， 完全依赖他人
                </td>
            </tr>
            <tr>
                <td rowspan="4">
                    B.1.9
                    平地行走
                </td>
                <td rowspan="4">
                    分数：${b1.b19}分
                    <%--<label class="layui-form-label">分数</label>
                    <div class="layui-input-block" style="width: 100px">
                        <select name="b19">
                            <option value="-1" selected></option>
                            <option value="10">15</option>
                            <option value="10">10</option>
                            <option value="5">5</option>
                            <option value="0">0</option>
                        </select>
                    </div>--%>
                </td>
                <td>
                    15 分，可独立在平地上行走 45m
                </td>
            </tr>

            <tr>
                <td>
                    10 分，需部分帮助（因肢体残疾、平衡能力差、过度衰弱、视力等问题，在一定
                    程度上需他人地搀扶或使用拐杖、助行器等辅助用具）
                </td>
            </tr>
            <tr>
                <td>
                    5 分， 需极大帮助（因肢体残疾、平衡能力差、过度衰弱、视力等问题，在较大
                    程度上依赖他人搀扶，或坐在轮椅上自行移动）
                </td>
            </tr>
            <tr>
                <td>
                    0 分， 完全依赖他人
                </td>
            </tr>
            <tr>
                <td rowspan="3">
                    B.1.10
                    上下楼梯
                </td>
                <td rowspan="3">
                    分数：${b1.b110}分
                    <%--<label class="layui-form-label">分数</label>
                    <div class="layui-input-block" style="width: 100px">
                        <select name="b110">
                            <option value="-1" selected></option>
                            <option value="10">10</option>
                            <option value="5">5</option>
                            <option value="0">0</option>
                        </select>
                    </div>--%>
                </td>
                <td>
                    10 分，可独立上下楼梯（连续上下 10-15 个台阶）
                </td>
            </tr>

            <tr>
                <td>
                    5 分， 需部分帮助（需他人搀扶，或扶着楼梯、使用拐杖等）
                </td>
            </tr>
            <tr>
                <td>
                    0 分， 需极大帮助或完全依赖他人
                </td>
            </tr>
            <tr>
                <td>
                    B.1．11 日常生活
                    活动总分
                </td>
                <td>
                    分数：${b1.b111}分
                    <%--<label class="layui-form-label">分数</label>
                    <div class="layui-input-block" style="width: 100px">
                        <input type="text" value="0" class="layui-input" name="b111"/>
                    </div>--%>
                </td>
                <td>
                    上述 10 个项目得分之和
                </td>
            </tr>
            <tr>
                <td>
                    B.1 日常生活活
                    动分级
                </td>
                <td>
                    分数：${b1.b1}分
                    <%--<label class="layui-form-label">等级</label>
                    <div class="layui-input-block" style="width: 100px">
                        <select name="b1">
                            <option value="-1" selected></option>
                            <option value="10">10</option>
                            <option value="5">5</option>
                            <option value="0">0</option>
                        </select>
                    </div>--%>
                </td>
                <td>
                    0 能力完好：总分 100 分</br>
                    1 轻度受损：总分 65-95 分</br>
                    2 中度受损：总分 45-60 分</br>
                    3 重度受损：总分≤40 分
                </td>
            </tr>
        </table>
</body>
</html>
