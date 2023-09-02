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
    <div class="layui-form">
        <div align="right">
            <%--<button class="layui-btn layui-btn-normal" lay-submit lay-filter="saveBtn">确认保存</button>--%>
            <button class="layui-btn layui-btn-normal" lay-submit lay-filter="saveBtn">下一步</button>
        </div>
        <div align="center">
            <h1>老年人能力评估信息表</h1>
        </div>
        <div class="demoTable">
            <div class="layui-form-item layui-form " align="center">
                <input type="text" name="idcard" hidden value="${idcard}">
                评估编号：
                <div class="layui-inline">
                    <input class="layui-input" name="id" id="id" autocomplete="off">
                </div>
                验证日期：
                <div class="layui-inline">
                    <input type="text" name="date" id="date" lay-verify="date" autocomplete="off"
                           class="layui-input" value="2022-12-06">
                </div>
                评估原因：
                <div class="layui-inline">
                    <select name="cause">
                        <option value="" selected>请选择</option>
                        <option value="1">接受服务前初评</option>
                        <option value="2">接受服务后的常规评估</option>
                        <option value="3">状况发生变化后的即时评估</option>
                        <option value="4">因评估结果有疑问进行的复评</option>
                    </select>
                </div>

            </div>
        </div>

        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
            <ul class="layui-tab-title">
                <li class="layui-this">B.1 日常生活活动评估表</li>
                <li>B.2 精神状态评估表</li>
                <li>B.3感知觉与沟通评估表</li>
                <li>B.4感知觉与沟通评估表</li>
            </ul>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show">
                    <div class="layui-form-item">
                        <table class="layui-table">
                            <tr>
                                <td rowspan="3">
                                    B.1.1 进食：指用餐具将食物由容器送到口中、咀嚼、吞咽等过程
                                </td>
                                <td rowspan="3">
                                    <label class="layui-form-label">分数:</label>
                                    <div class="layui-input-block" style="width: 100px">
                                        <select name="b11">
                                            <option value="-1"></option>
                                            <option value="10" selected>10</option>
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
                                    <div class="layui-input-block" style="width: 100px">
                                        <select name="b12">
                                            <option value="-1"></option>
                                            <option value="5" selected>5</option>
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
                                    <div class="layui-input-block" style="width: 100px">
                                        <select name="b13">
                                            <option value="-1"></option>
                                            <option value="5" selected>5</option>
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
                                    <div class="layui-input-block" style="width: 100px">
                                        <select name="b14">
                                            <option value="-1"></option>
                                            <option value="10" selected>10</option>
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
                                    <div class="layui-input-block" style="width: 100px">
                                        <select name="b15">
                                            <option value="-1"></option>
                                            <option value="10" selected>10</option>
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
                            <tr>
                                <td rowspan="3">
                                    B.1.6
                                    小便控制
                                </td>
                                <td rowspan="3">
                                    <label class="layui-form-label">分数</label>
                                    <div class="layui-input-block" style="width: 100px">
                                        <select name="b16">
                                            <option value="-1"></option>
                                            <option value="10" selected>10</option>
                                            <option value="5">5</option>
                                            <option value="0">0</option>
                                        </select>
                                    </div>
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
                                    <label class="layui-form-label">分数</label>
                                    <div class="layui-input-block" style="width: 100px">
                                        <select name="b17">
                                            <option value="-1"></option>
                                            <option value="10" selected>10</option>
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
                                    <label class="layui-form-label">分数</label>
                                    <div class="layui-input-block" style="width: 100px">
                                        <select name="b18">
                                            <option value="-1"></option>
                                            <option value="15" selected>15</option>
                                            <option value="10">10</option>
                                            <option value="5">5</option>
                                            <option value="0">0</option>
                                        </select>
                                    </div>
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
                                    <label class="layui-form-label">分数</label>
                                    <div class="layui-input-block" style="width: 100px">
                                        <select name="b19">
                                            <option value="-1"></option>
                                            <option value="15" selected>15</option>
                                            <option value="10">10</option>
                                            <option value="5">5</option>
                                            <option value="0">0</option>
                                        </select>
                                    </div>
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
                                    <label class="layui-form-label">分数</label>
                                    <div class="layui-input-block" style="width: 100px">
                                        <select name="b110">
                                            <option value="-1"></option>
                                            <option value="10" selected>10</option>
                                            <option value="5">5</option>
                                            <option value="0">0</option>
                                        </select>
                                    </div>
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
                                    <label class="layui-form-label">分数</label>
                                    <div class="layui-input-block" style="width: 100px">
                                        <input type="text" value="100" class="layui-input" name="b111"/>
                                    </div>
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
                                    <label class="layui-form-label">等级</label>
                                    <div class="layui-input-block" style="width: 100px">
                                        <select name="b1">
                                            <option value="-1" selected></option>
                                            <option value="0">0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                        </select>
                                    </div>
                                </td>
                                <td>
                                    0 能力完好：总分 100 分</br>
                                    1 轻度受损：总分 65-95 分</br>
                                    2 中度受损：总分 45-60 分</br>
                                    3 重度受损：总分≤40 分
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>

                <div class="layui-tab-item">
                    <div class="layui-form-item">
                        <table class="layui-table">
                            <tr>
                                <td rowspan="3">
                                    B.2.1 认知功能
                                </td>
                                <td rowspan="3">
                                    <label class="layui-form-label">分数</label>
                                    <div class="layui-input-block" style="width: 100px">
                                        <select name="b21">
                                            <option value="-1"></option>
                                            <option value="0" selected>0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                        </select>
                                    </div>
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
                                    <label class="layui-form-label">分数</label>
                                    <div class="layui-input-block" style="width: 100px">
                                        <select name="b22">
                                            <option value="-1"></option>
                                            <option value="0" selected>0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                        </select>
                                    </div>
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
                                    <label class="layui-form-label">分数</label>
                                    <div class="layui-input-block" style="width: 100px">
                                        <select name="b23">
                                            <option value="-1" ></option>
                                            <option value="0" selected>0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                        </select>
                                    </div>
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
                                    <label class="layui-form-label">分数</label>
                                    <div class="layui-input-block" style="width: 100px">
                                        <input class="layui-input" value="0" name="b24" type="text">
                                    </div>
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
                                    <label class="layui-form-label">等级</label>
                                    <div class="layui-input-block" style="width: 100px">
                                        <select name="b2">
                                            <option value="-1" selected></option>
                                            <option value="0">0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                        </select>
                                    </div>
                                </td>
                                <td>
                                    0 能力完好：总分为 0 分</br>
                                    1 轻度受损：总分为 1 分</br>
                                    2 中度受损：总分 2-3 分</br>
                                    3 重度受损：总分 4-6 分
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="layui-tab-item">
                    <div class="layui-form-item">
                        <table class="layui-table">
                            <tr>
                                <td rowspan="4">
                                    B.3.1
                                    意识水平
                                </td>
                                <td rowspan="4">
                                    <label class="layui-form-label">分数</label>
                                    <div class="layui-input-block" style="width: 100px">
                                        <select name="b31">
                                            <option value="-1" ></option>
                                            <option value="0" selected>0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                        </select>
                                    </div>
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
                                    <label class="layui-form-label">分数</label>
                                    <div class="layui-input-block" style="width: 100px">
                                        <select name="b32">
                                            <option value="-1" ></option>
                                            <option value="0" selected>0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                        </select>
                                    </div>
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
                                    <label class="layui-form-label">分数</label>
                                    <div class="layui-input-block" style="width: 100px">
                                        <select name="b33">
                                            <option value="-1" ></option>
                                            <option value="0" selected>0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                        </select>
                                    </div>
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
                                    <label class="layui-form-label">分数</label>
                                    <div class="layui-input-block" style="width: 100px">
                                        <select name="b34">
                                            <option value="-1" ></option>
                                            <option value="0" selected>0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                        </select>
                                    </div>
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
                                    <label class="layui-form-label">分数</label>
                                    <div class="layui-input-block" style="width: 100px">
                                        <select name="b3">
                                            <option value="-1" selected></option>
                                            <option value="0">0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                        </select>
                                    </div>
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
                    </div>
                </div>
                <div class="layui-tab-item">
                    <div class="layui-form-item">
                        <table class="layui-table">
                            <tr>
                                <td rowspan="5">
                                    B.4.1
                                    生活能力
                                </td>
                                <td rowspan="5">
                                    <label class="layui-form-label">分数</label>
                                    <div class="layui-input-block" style="width: 100px">
                                        <select name="b41">
                                            <option value="-1"></option>
                                            <option value="0" selected>0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                        </select>
                                    </div>
                                </td>
                                <td>
                                    0 分，除个人生活自理外（如饮食、洗漱、穿戴、二便），能料理家务（如做饭、</br>
                                    洗衣）或当家管理事务
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    1 分，除个人生活自理外，能做家务，但欠好，家庭事务安排欠条理
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    2 分，个人生活能自理；只有在他人帮助下才能做些家务，但质量不好
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    3 分，个人基本生活事务能自理（如饮食、二便），在督促下可洗漱
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    4 分，个人基本生活事务（如饮食、二便）需要部分帮助或完全依赖他人帮助
                                </td>
                            </tr>
                            <tr>
                                <td rowspan="5">
                                    B.4.2
                                    工作能力
                                </td>
                                <td rowspan="5">
                                    <label class="layui-form-label">分数</label>
                                    <div class="layui-input-block" style="width: 100px">
                                        <select name="b42">
                                            <option value="-1" ></option>
                                            <option value="0" selected>0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                        </select>
                                    </div>
                                </td>
                                <td>
                                    0 分，原来熟练的脑力工作或体力技巧性工作可照常进行
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    1 分，原来熟练的脑力工作或体力技巧性工作能力有所下降
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    2 分，原来熟练的脑力工作或体力技巧性工作明显不如以往，部分遗忘
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    3 分，对熟练工作只有一些片段保留，技能全部遗忘
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    4 分，对以往的知识或技能全部磨灭
                                </td>
                            </tr>

                            <tr>
                                <td rowspan="5">
                                    B.4.3
                                    时 间 / 空 间 定
                                    向
                                </td>
                                <td rowspan="5">
                                    <label class="layui-form-label">分数</label>
                                    <div class="layui-input-block" style="width: 100px">
                                        <select name="b43">
                                            <option value="-1" ></option>
                                            <option value="0" selected>0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                        </select>
                                    </div>
                                </td>
                                <td>
                                    0 分，时间观念（年、月、日、时）清楚；可单独出远门，能很快掌握新环境的</br>
                                    方位
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    1 分，时间观念有些下降，年、月、日清楚，但有时相差几天；可单独来往于近</br>
                                    街，知道现住地的名称和方位，但不知回家路线
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    2 分，时间观念较差，年、月、日不清楚，可知上半年或下半年；只能单独在家</br>
                                    附近行动，对现住地只知名称，不知道方位
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    3 分，时间观念很差，年、月、日不清楚，可知上午或下午；只能在左邻右舍间</br>
                                    串门，对现住地不知名称和方位
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    4 分，无时间观念；不能单独外出
                                </td>
                            </tr>

                            <tr>
                                <td rowspan="5">
                                    B.4.4
                                    人物定向
                                </td>
                                <td rowspan="5">
                                    <label class="layui-form-label">分数</label>
                                    <div class="layui-input-block" style="width: 100px">
                                        <select name="b44">
                                            <option value="-1" ></option>
                                            <option value="0" selected>0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                        </select>
                                    </div>
                                </td>
                                <td>
                                    0 分，知道周围人们的关系，知道祖孙、叔伯、姑姨、侄子侄女等称谓的意义；
                                    可分辨陌生人的大致年龄和身份，可用适当称呼
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    1 分，只知家中亲密近亲的关系，不会分辨陌生人的大致年龄，不能称呼陌生人
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    2 分，只能称呼家中人，或只能照样称呼，不知其关系，不辨辈分
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    3 分，只认识常同住的亲人，可称呼子女或孙子女，可辨熟人和生人
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    4 分，只认识保护人，不辨熟人和生人
                                </td>
                            </tr>

                            <tr>
                                <td rowspan="5">
                                    B.4.5
                                    社会交往能力
                                </td>
                                <td rowspan="5">
                                    <label class="layui-form-label">分数</label>
                                    <div class="layui-input-block" style="width: 100px">
                                        <select name="b45">
                                            <option value="-1" ></option>
                                            <option value="0" selected>0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                        </select>
                                    </div>
                                </td>
                                <td>
                                    0 分，参与社会，在社会环境有一定的适应能力，待人接物恰当</br>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    1 分，能适应单纯环境，主动接触人，初见面时难让人发现智力问题，不能理解</br>
                                    隐喻语
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    2 分，脱离社会，可被动接触，不会主动待人，谈话中很多不适词句，容易上当</br>
                                    受骗
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    3 分，勉强可与人交往，谈吐内容不清楚，表情不恰当
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    4 分，难以与人接触
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    B.4.6 社会参
                                    与总分
                                </td>
                                <td>
                                    <label class="layui-form-label">分数</label>
                                    <div class="layui-input-block" style="width: 100px">
                                        <input type="text" class="layui-input" value="0" name="b46">
                                    </div>
                                </td>
                                <td>
                                    上述 5 个项目得分之和
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    B.4 社会参与
                                    分级
                                </td>
                                <td>
                                    <label class="layui-form-label">分数</label>
                                    <div class="layui-input-block" style="width: 100px">
                                        <select name="b4">
                                            <option value="-1" selected></option>
                                            <option value="0">0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                        </select>
                                    </div>
                                </td>
                                <td>
                                    0 能力完好：总分 0-2 分</br>
                                    1 轻度受损：总分 3-7 分</br>
                                    2 中度受损：总分 8-13 分</br>
                                    3 重度受损：总分 14-20 分</br>
                                </td>
                            </tr>

                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
<script>

    layui.use(['form', 'table', 'util', 'element'], function () {
        form = layui.form,
            table = layui.table,
            util = layui.util,
            element = layui.element;
        // tab位置
        var $ = layui.jquery; //Tab的切换功能，切换事件监听等，需要依赖element模块

        form.on('submit(saveBtn)', function (data) {
            var datas = data.field;//form单中的数据信息
            //向后台发送数据提交添加
            $.ajax({
                url: "submitRes",
                type: "POST",
                data:datas,
                /*contentType: 'application/json',
                data: JSON.stringify(datas),*/
                success: function (result) {

                    if (result.code == 0) {
                        //如果成功
                        var index = layer.open({
                            title: '文件内容',
                            type: 2,
                            shade: 0.2,
                            maxmin: true,
                            shadeClose: true,
                            area: ['100%', '100%'],
                            content: '${pageContext.request.contextPath}/FinalRseIndex/'+datas.id,
                        });
                        $(window).on("resize", function () {
                            layer.full(index);
                        });
                        /*layer.msg('提交成功', {
                            icon: 6,
                            time: 500
                        }, function () {
                            /!*parent.window.location.reload();
                            var iframeIndex = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(iframeIndex);*!/
                        })*/
                    } else {
                        layer.msg("添加失败");
                    }
                }
            })
            return false;
        });

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

</body>

</html>
