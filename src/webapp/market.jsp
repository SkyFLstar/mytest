<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/27
  Time: 8:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="css/personstyle.css" rel="stylesheet" type="text/css" />
    <link href="css/personcss.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/js/jquery-1.10.1.js"></script>
    <script type="text/javascript" src="/js/common.js"></script>
    <script>
        jQuery.ajax({
                type:'get',
                url:"/market.do",
                data:null,
            });
    </script>
    <title>游戏商城</title>
</head>
<body>
<%--<div style="top: 100px;">--%>
    <%--<ul>--%>
        <%--<li>商品来源</li>--%>
        <%--<li><input type="checkbox" name="wares_from" value="OW">守望先锋</li>--%>
        <%--<li><input type="checkbox" name="wares_from" value="WOW">魔兽世界</li>--%>
        <%--<li><input type="checkbox" name="wares_from" value="DB">暗黑破坏神</li>--%>
        <%--<li><input type="checkbox" name="wares_from" value="SC">星际争霸</li>--%>
        <%--<li>商品类型</li>--%>
        <%--<li><input type="checkbox" name="wares_type" value="game">游戏</li>--%>
        <%--<li><input type="checkbox" name="wares_type" value="t_shirt">T恤</li>--%>
        <%--<li><input type="checkbox" name="wares_type" value="model">模型</li>--%>
        <%--<li><input type="checkbox" name="wares_type" value="peripherals">外设</li>--%>
        <%--<li>商品价格</li>--%>
        <%--<li><input type="text" name="min_price">-<input type="text" name="max_price"></li>--%>
        <%--<li>输入商品名</li>--%>
        <%--<li><input type="text" name="wares_name" placeholder="输入想要的商品名称"></li>--%>
    <%--</ul>--%>
<%--</div>--%>
<%--<div>--%>

    <%--<table>--%>
        <%--<c:forEach items="${marketlist}" var="m" >--%>
        <%--<tr>--%>
            <%--<td>--%>
                <%--<ul>--%>
                    <%--<li><span>userImg:<img src="${m.wares_img}"></span></li>--%>
                    <%--<li><span>userName:${m.wares_name}</span></li>--%>
                <%--</ul>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--</c:forEach>--%>
    <%--</table>--%>

<%--</div>--%>
<div class="w_1090 clearfloat">
    <div class="width_100bfb01 user_jbsy">
        <ul>
            <li class="jinbisy"><span class="pr_10">金币剩余</span><i></i><span class="pl_10 jinsl">${u_balacne}</span></li>
        </ul>
    </div>
    <div class="width_100bfb01 user_box">
        <div class="user_left">
            <ul class="ul_list active">
                <li class="djsc">
                    <a href="道具商城-道具购买.html">道具商城</a>
                </li>
            </ul>
            <ul class="ul_list">
                <li class="jbdz">
                    <a href="#" onclick=show("personalcenter-pay")>金币充值</a>
                </li>
            </ul>
            <ul class="ul_list">
                <li class="gsb">
                    <a href="道具商城-告示板.html">告示板</a>
                </li>
            </ul>

        </div>
        <!--用户中心左边结束-->
        <div class="user_right">
            <div class="daojugoumai">
                <c:forEach items="${marketlist}" var="m">
                <ul class="ul_list">
                    <li class="pic width_100bfb01"><img src="${m.wares_img}" /></li>
                    <li class="width_100bfb01 dy_dd title">${m.wares_name}</li>
                    <li class="width_100bfb01">
                        <p class="l gongneng">增加10点魅力</p>
                        <p class="r jinbi"><i></i><span>${m.wares_price}</span></p>
                    </li>
                    <li class="width_100bfb01 mt_10">
                        <a href="javascript:void(0);" class="a_zs_gm goumai r">购买</a>
                    </li>
                </ul>
                </c:forEach>
                <a href="javascript:void(0)" class="page pre" onclick="${page.prePage}"></a>
                <a href="javascript:void(0)" class="page pnext" onclick="${page.nextPage}"></a>
            </div>
        </div>
        <!--用户中心右边结束-->
    </div>
</div>

</body>
</html>
