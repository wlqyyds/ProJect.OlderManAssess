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
                <td rowspan="4">
                    B.3.1
                    意识水平
                </td>
                <td rowspan="4">
                    分数：${b3.b31}分
                </td>
                <td>
                    0 分，神志清醒，对周围环境警觉
                </td>
            </tr>

            <tr>
                <td>
                    1 分，嗜睡，表现为睡眠状态过度延长。当呼唤或推动其肢体时可唤醒，并能进</br>
                    行正确的交谈或执行指令，停止刺激后又继续入睡
                </td>
            </tr>
            <tr>
                <td>
                    2 分，昏睡，一般的外界刺激不能使其觉醒，给予较强烈的刺激时可有短时的意</br>
                    识清醒，醒后可简短回答提问，当刺激减弱后又很快进入睡眠状态
                </td>
            </tr>
            <tr>
                <td>
                    3 分，昏迷，处于浅昏迷时对疼痛刺激有回避和痛苦表情；处于深昏迷时对刺激</br>
                    无反应（若评定为昏迷，直接评定为重度失能，可不进行以下项目的评估）
                </td>
            </tr>
            <tr>
                <td rowspan="5">
                    B.3.2 视力：
                    若平日带老花
                    镜或近视镜，
                    应在佩戴眼镜
                    的情况下评估
                </td>
                <td rowspan="5">
                    分数：${b3.b32}分
                </td>
                <td>
                    0 分，能看清书报上的标准字体
                </td>
            </tr>

            <tr>
                <td>
                    1 分，能看清楚大字体，但看不清书报上的标准字体
                </td>
            </tr>
            <tr>
                <td>
                    2 分，视力有限，看不清报纸大标题，但能辨认物体
                </td>
            </tr>
            <tr>
                <td>
                    3 分，辨认物体有困难，但眼睛能跟随物体移动，只能看到光、颜色和形状
                </td>
            </tr>
            <tr>
                <td>
                    4 分，没有视力，眼睛不能跟随物体移动
                </td>
            </tr>
            <tr>
                <td rowspan="5">
                    B.3.3 听力：
                    若平时佩戴助
                    听器，应在佩
                    戴助听器的情
                    况下评估
                </td>
                <td rowspan="5">
                    分数：${b3.b33}分
                </td>
                <td>
                    0 分，可正常交谈，能听到电视、电话、门铃的声音
                </td>
            </tr>

            <tr>
                <td>
                    1 分，在轻声说话或说话距离超过 2 米时听不清
                </td>
            </tr>
            <tr>
                <td>
                    2 分，正常交流有些困难，需在安静的环静或大声说话才能听到
                </td>
            </tr>
            <tr>
                <td>
                    3 分，讲话者大声说话或说话很慢，才能部分听见
                </td>
            </tr>
            <tr>
                <td>
                    4 分，完全听不见
                </td>
            </tr>
            <tr>
                <td rowspan="4">
                    B.3.4
                    沟通交流:
                    包括非语言沟
                    通
                </td>
                <td rowspan="4">
                    分数：${b3.b34}分
                </td>
                <td>
                    0 分，无困难，能与他人正常沟通和交流
                </td>
            </tr>

            <tr>
                <td>
                    1 分，能够表达自己的需要及理解别人的话，但需要增加时间或给予帮助
                </td>
            </tr>
            <tr>
                <td>
                    2 分，表达需要或理解有困难，需频繁重复或简化口头表达
                </td>
            </tr>
            <tr>
                <td>
                    3 分，不能表达需要或理解他人的话
                </td>
            </tr>
            <tr>
                <td>
                    B.3 感知觉与沟通分级
                </td>
                <td>
                    分数：${b3.b3}分
                </td>
                <td>
                    0 能力完好：意识清醒，且视力和听力评为 0 或 1，沟通评为 0</br>
                    1 轻度受损：意识清醒，但视力或听力中至少一项评为 2，或沟通评为 1</br>
                    2 中度受损：意识清醒，但视力或听力中至少一项评为 3，或沟通评为 2；</br>
                    或嗜睡，视力或听力评定为 3 及以下，沟通评定为 2 及以下</br>
                    3 重度受损：意识清醒或嗜睡，但视力或听力中至少一项评为 4，或沟通评为 3；</br>
                    或昏睡/昏迷
                </td>
            </tr>

        </table>
</body>
</html>
