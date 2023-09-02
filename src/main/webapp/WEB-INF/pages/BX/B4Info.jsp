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
                <td rowspan="5">
                    B.4.1
                    生活能力
                </td>
                <td rowspan="5">
                    分数：${b4.b41}分
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
                    分数：${b4.b42}分
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
                    分数：${b4.b43}分
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
                    分数：${b4.b44}分
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
                    分数：${b4.b45}分
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
                    分数：${b4.b46}分
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
                    分数：${b4.b4}分
                </td>
                <td>
                    0 能力完好：总分 0-2 分</br>
                    1 轻度受损：总分 3-7 分</br>
                    2 中度受损：总分 8-13 分</br>
                    3 重度受损：总分 14-20 分</br>
                </td>
            </tr>

        </table>
</body>
</html>
