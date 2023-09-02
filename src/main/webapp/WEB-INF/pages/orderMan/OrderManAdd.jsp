<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<html>
<head>
    <meta charset="utf-8">
    <title>添加读者</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui-v2.5.5/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css" media="all">
    <style>
        body {
            background-color: #ffffff;
        }
    </style>
</head>
<body>
<div class="layui-form layuimini-form">

    <div class="layui-form-item">
            <label class="layui-form-label">姓名：</label>
            <div class="layui-input-block">
                <input type="text" name="readerNumber" lay-verify="required" lay-reqtext="姓名不能为空"
                       autocomplete="off" class="layui-input">
            </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">性别</label>
        <div class="layui-input-block">
            <input type="radio" name="sex" value="男" title="男" checked="">
            <input type="radio" name="sex" value="女" title="女">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">出生日期</label>
        <div class="layui-input-block">
            <input type="text" name="birthday" id="date" lay-verify="required" class="layui-input"
                   autocomplete="off">
        </div>
    </div>


    <div class="layui-form-item">
        <label class="layui-form-label">身份证号：</label>
        <div class="layui-input-block">
            <input type="text" name="identity" lay-verify="identity" placeholder="" autocomplete="off"
                   class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">社保号：</label>
        <div class="layui-input-block">
            <input type="text" name="identity" lay-verify="identity" placeholder="" autocomplete="off"
                   class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">民族</label>
        <div class="layui-input-block">
            <input type="text" name="title" lay-verify="title" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">文化程度</label>
        <div class="layui-input-block">
            <select name="interest" lay-filter="aihao">
                <option value="" selected></option>
                <option value="文盲">文盲</option>
                <option value="1">小学</option>
                <option value="2">初中</option>
                <option value="3">高中</option>
                <option value="4">大学专科及以上</option>
                <option value="5">不详</option>
            </select>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">宗教程度</label>
        <div class="layui-input-block">
            <select name="interest" lay-filter="aihao">
                <option value="" selected></option>
                <option value="0">无</option>
                <option value="1">有</option>
            </select>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">婚姻状况</label>
        <div class="layui-input-block">
            <select name="interest" lay-filter="aihao">
                <option value="" selected></option>
                <option value="1">未婚</option>
                <option value="2">已婚</option>
                <option value="3">丧偶</option>
                <option value="4">离婚</option>
                <option value="5">未说明的婚姻状况</option>
            </select>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">居住情况</label>
        <div class="layui-input-block">
            <select name="interest" lay-filter="aihao">
                <option value="" selected></option>
                <option value="1">独居</option>
                <option value="2">与配偶/伴侣居住</option>
                <option value="3">与子女居住</option>
                <option value="4">与父母居住</option>
                <option value="5">与兄弟姐妹居住</option>
                <option value="6">与其他亲属居住</option>
                <option value="7">与非亲属关系的人居住</option>
                <option value="8">养老机构</option>
            </select>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">医疗费用支付方式</label>
        <div class="layui-input-block">
            <select name="interest" lay-filter="aihao">
                <option value="" selected></option>
                <option value="1">城镇职工基本医疗保险</option>
                <option value="2">城镇居民基本医疗保险</option>
                <option value="3">新型农村合作医疗</option>
                <option value="4">贫困救助</option>
                <option value="5">商业医疗保险</option>
                <option value="6">全公费</option>
                <option value="7">全自费</option>
                <option value="8">其他</option>
            </select>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">提供人姓名</label>
        <div class="layui-input-block">
            <input type="text" name="readerNumber" lay-verify="required" lay-reqtext="姓名不能为空"
                   autocomplete="off" class="layui-input">
        </div>

    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">信息提供者与老人的关系</label>
        <div class="layui-input-block">
            <select name="interest" lay-filter="aihao">
                <option value="" selected></option>
                <option value="配偶">配偶</option>
                <option value="子女">子女</option>
                <option value="其他亲属">其他亲属</option>
                <option value="雇佣照顾者">雇佣照顾者</option>
            </select>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">联系人姓名</label>
        <div class="layui-input-block">
            <input type="text" name="readerNumber" lay-verify="required" lay-reqtext="读者卡号不能为空"
                   autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">联系人手机</label>
        <div class="layui-input-inline">
            <input type="tel" name="phone" lay-verify="required|phone" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block" align="center">
            <button class="layui-btn layui-btn-normal" lay-submit lay-filter="saveBtn">确认保存</button>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
<script>

    layui.use(['form', 'layedit', 'laydate'], function () {
        var form = layui.form
            , layer = layui.layer
            , layedit = layui.layedit
            , laydate = layui.laydate
            , $ = layui.$;

        //日期
        laydate.render({
            elem: '#date',
            trigger: 'click'
        });


        //监听提交
        form.on('submit(saveBtn)', function (data) {
            var datas = data.field;//form单中的数据信息
            //向后台发送数据提交添加
            $.ajax({
                url: "addReaderSubmit",
                type: "POST",
                //data:datas,
                contentType: 'application/json',
                data: JSON.stringify(datas),
                success: function (result) {
                    if (result.code == 0) {//如果成功
                        layer.msg('添加成功', {
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
        //日期
        laydate.render({
            elem: '#date'
        });
        laydate.render({
            elem: '#date1'
        });

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');

        //自定义验证规则
        form.verify({
            title: function (value) {
                if (value.length < 5) {
                    return '标题至少得5个字符啊';
                }
            }
            , pass: [
                /^[\S]{6,12}$/
                , '密码必须6到12位，且不能出现空格'
            ]
            , content: function (value) {
                layedit.sync(editIndex);
            }
        });

        //监听指定开关
        form.on('switch(switchTest)', function (data) {
            layer.msg('开关checked：' + (this.checked ? 'true' : 'false'), {
                offset: '6px'
            });
            layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
        });

        //监听提交
        form.on('submit(demo1)', function (data) {
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })
            return false;
        });

        //表单赋值
        layui.$('#LAY-component-form-setval').on('click', function () {
            form.val('example', {
                "username": "贤心" // "name": "value"
                , "password": "123456"
                , "interest": 1
                , "like[write]": true //复选框选中状态
                , "close": true //开关状态
                , "sex": "女"
                , "desc": "我爱 layui"
            });
        });

        //表单取值
        layui.$('#LAY-component-form-getval').on('click', function () {
            var data = form.val('example');
            alert(JSON.stringify(data));
        });

    });

    layui.use(['form', 'laydate'], function () {

    });
</script>
</body>
</html>

