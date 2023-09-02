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

    <div align="center">
        <h1>老年人能力评估最终表</h1>
    </div>
    <div class="layui-main">
        <div class="layui-form">
            <input name="id" type="text" hidden value="${b1.id}">
            <input name="idcard" type="text" hidden value="${b1.idcard}">
            <table class="layui-table">
                <tr>
                    <td rowspan="2">
                        C.1 一级指标分级
                    </td>
                    <td>
                        C.1.1 日常生活活动：${b1.b1} 级
                    </td>
                    <td>
                        C.1.2 精神状态：${b2.b2} 级
                    </td>
                </tr>

                <tr>
                    <td>
                        C.1.3 感知觉与沟通：${b3.b3} 级
                    </td>
                    <td>
                        C.1.4 社会参与：${b4.b4} 级
                    </td>
                </tr>

                <tr>
                    <td>
                        C.2 老年人能力初步等级
                    </td>
                    <td>
                        <label class="layui-form-label">分数</label>
                        <div class="layui-input-block" style="width: 100px">
                            <select name="fres">
                                <option value="-1" selected></option>
                                <option value="3">3</option>
                                <option value="2">2</option>
                                <option value="1">1</option>
                                <option value="0">0</option>
                            </select>
                        </div>
                    </td>
                    <td>
                        0 能力完好</br>
                        1 轻度失能</br>
                        2 中度失能</br>
                        3 重度失能
                    </td>
                </tr>

                <tr>
                    <td>
                        C.3 等级变更条款
                    </td>
                    <td colspan="2" align="center">
                        1 有认知障碍/痴呆、精神疾病者，在原有能力级别上提高一个等级；</br>
                        2 近 30 天内发生过 2 次及以上跌倒、噎食、自杀、走失者，在原有能力级别上提高一</br>
                        个等级；</br>
                        3 处于昏迷状态者，直接评定为重度失能；</br>
                        4 若初步等级确定为“3 重度失能”，则不考虑上述 1-3 中各情况对最终等级的影响，</br>
                        等级不再提高
                    </td>
                </tr>

                <tr>
                    <td>
                        C.4 老年人能力最终等级
                    </td>
                    <td>
                        <label class="layui-form-label">分数</label>
                        <div class="layui-input-block" style="width: 100px">
                            <select name="sres">
                                <option value="-1" selected></option>
                                <option value="3">3</option>
                                <option value="2">2</option>
                                <option value="1">1</option>
                                <option value="0">0</option>
                            </select>
                        </div>
                    </td>
                    <td>
                        0 能力完好</br>
                        1 轻度失能</br>
                        2 中度失能</br>
                        3 重度失能
                    </td>
                </tr>

                <tr>
                    <td colspan="3">
                        注：老年人能力初步等级划分标准</br>
                        0 能力完好：</br>
                        日常生活活动、精神状态、感知觉与沟通分级均为 0，社会参与分级为 0 或 1</br>
                        1 轻度失能：</br>
                        日常生活活动分级为 0，但精神状态、感知觉与沟通中至少一项分级为 1 及以上，或社会参与的分级为 2；</br>
                        或日常生活活动分级为 1，精神状态、感知觉与沟通、社会参与中至少有一项的分级为 0 或 1</br>
                        2 中度失能：</br>
                        日常生活活动分级为 1，但精神状态、感知觉与沟通、社会参与均为 2，或有一项为 3；</br>
                        或日常生活活动分级为 2，且精神状态、感知觉与沟通、社会参与中有 1-2 项的分级为 1 或 2</br>
                        3 重度失能：</br>
                        日常生活活动的分级为 3；</br>
                        或日常生活活动、精神状态、感知觉与沟通、社会参与分级均为 2；</br>
                        或日常生活活动分级为 2，且精神状态、感知觉与沟通、社会参与中至少有一项分级为 3
                    </td>
                </tr>

                <tr>
                    <td align="center" colspan="3">
                        <button class="layui-btn layui-btn-normal" lay-submit lay-filter="saveBtn">确认保存</button>
                    </td>
                </tr>
            </table>
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
            var datas = data.field;
            //form单中的数据信息
            //向后台发送数据提交添加
            $.ajax({
                url: "${pageContext.request.contextPath}/submitFinalRes",
                type: "POST",
                data: datas,
                /*contentType: 'application/json',
                data: JSON.stringify(datas),*/
                success: function (result) {
                    if (result.code == 0) {//如果成功
                        layer.msg('提交成功', {
                            icon: 6,
                            time: 500
                        }, function () {
                            parent.window.location.reload();
                            var iframeIndex = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(iframeIndex);
                        })
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
