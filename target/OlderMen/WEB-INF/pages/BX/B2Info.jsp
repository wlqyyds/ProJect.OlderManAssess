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
                    B.2.1 认知功能
                </td>
                <td rowspan="3">
                    分数：${b2.b21}分
                </td>
                <td>
                    0 分，画钟正确（画出一个闭锁圆，指针位置准确），且能回忆出 2-3 个词
                </td>
            </tr>

            <tr>
                <td>
                    1 分，画钟错误（画的圆不闭锁，或指针位置不准确），或只回忆出 0-1 个词
                </td>
            </tr>
            <tr>
                <td>
                    2 分，已确诊为认知障碍，如老年痴呆
                </td>
            </tr>
            <tr>
                <td rowspan="3">
                    B.2.2 攻击行为
                </td>
                <td rowspan="3">
                    分数：${b2.b22}分
                </td>
                <td>
                    0 分，无身体攻击行为（如打/踢/推/咬/抓/摔东西）和语言攻击行为（如骂人、
                    语言威胁、尖叫）
                </td>
            </tr>

            <tr>
                <td>
                    1 分，每月有几次身体攻击行为，或每周有几次语言攻击行为
                </td>
            </tr>
            <tr>
                <td>
                    2 分，每周有几次身体攻击行为，或每日有语言攻击行为
                </td>
            </tr>
            <tr>
                <td rowspan="3">
                    B.2.3 抑郁症状
                </td>
                <td rowspan="3">
                    分数：${b2.b23}分
                </td>
                <td>
                    0 分，无
                </td>
            </tr>

            <tr>
                <td>
                    1 分，情绪低落、不爱说话、不爱梳洗、不爱活动
                </td>
            </tr>
            <tr>
                <td>
                    2 分，有自杀念头或自杀行为
                </td>
            </tr>
            <tr>
                <td>
                    B.2.4 精神状态总分
                </td>
                <td>
                    分数：${b2.b24}分
                </td>
                <td>
                    上述 3 个项目得分之和
                </td>
            </tr>

            <tr>
                <td>
                    B.2精神状态分级
                </td>
                <td>
                    分数：${b2.b2}分
                </td>
                <td>
                    0 能力完好：总分为 0 分</br>
                    1 轻度受损：总分为 1 分</br>
                    2 中度受损：总分 2-3 分</br>
                    3 重度受损：总分 4-6 分
                </td>
            </tr>
        </table>
</body>
</html>
