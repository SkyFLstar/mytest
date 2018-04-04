<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/25
  Time: 12:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%--<form id="person_request" method="post"><input type="hidden" name="u_email"  value="<%=pageContext.getSession().getAttribute("u_email")%>"/></form>--%>
    <link href="css/personcss.css" rel="stylesheet" type="text/css" />
    <link href="css/personstyle.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery-1.10.1.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
    <script>
        <%--var u_email=<%=pageContext.getSession().getAttribute("u_email")%>;--%>
        <%--var value="${sessionScope.u_email}";--%>
        <%--jQuery.ajax({--%>
            <%--url:"personalcenter.do",--%>
            <%--type:"post",--%>
            <%--data:value,--%>
            <%--success:function (obj) {--%>
                <%--alert("o");--%>
            <%--}--%>
        <%--});--%>

    </script>
    <title>个人中心</title>
</head>
<body>
<!--头部结束-->
<div class="w_1090 clearfloat">
    <div class="width_100bfb01 user_box_01 mt_30">
        <div class="user_left">
            <ul class="ul_pic jzxx">
                <li >
                    <img src="${u_head_img}" />
                </li>
            </ul>
            <ul class="ul_list">
                <li class="wdcj">
                    <a href="#" onclick=show("personalcenter-achievement")>我的成就</a>
                </li>
            </ul>
            <ul class="ul_list">
                <li class="wdqb">
                    <a href="#" onclick=show("personalcenter-purse")>我的钱包</a>
                </li>
            </ul>
            <ul class="ul_list">
                <li class="wdwp">
                    <a href="#" onclick=show("personalcenter-article")>我的物品</a>
                </li>
            </ul>
            <ul class="ul_list">
                <li class="wdbs">
                    <a href="#" onclick=show("personalcenter-had")>我的角色</a>
                </li>
            </ul>
            <ul class="ul_list">
                <li class="wdjc">
                    <a href="#" onclick=show("personalcenter-pay")>账户充值</a>
                </li>
            </ul>
            <ul class="ul_list">
                <li class="wdgz">
                    <a href="#" onclick=show("personalcenter-safedata")>安全资料</a>
                </li>
            </ul>
        </div>
        <!--用户中心左边结束-->
        <div class="user_right">
            <div class="user_info width_100bfb01">
                <ul class="ul_pic">
                    <li class="bun_img">+更换头像</li>
                </ul>
                <div class="user_right">
                    <ul class="width_100bfb01">
                        <span class="title_user">欢迎您!${u_petname}</span><a href="#" class="update_user">编辑</a>
                    </ul>
                    <ul class="width_100bfb01 mt_15">
                        <div class="jbxx">
                            <li>
                                <p class="p_icon"><span class="qq"></span></p>
                                <p>每日签到</p>
                            </li>
                            <li>
                                <p class="p_icon"><span class="sj"></span></p>
                                <p>最近战绩</p>
                            </li>
                            <li>
                                <p class="p_icon"><span class="xx"></span></p>
                                <p>历史荣耀</p>
                            </li>
                            <li>
                                <p class="p_icon"><span class="mima"></span></p>
                                <p><a href="#" onclick=show("personalcent")>个人信息</a></p>
                            </li>
                        </div>
                        <div class="user_jbbox">
                            <li class="width_100bfb01 jbye">账户余额</li>
                            <li class="width_100bfb01 jbnum"><span><img src="images/jinbi.png" /></span><span class="pl_10">${u_balacne}元</span></li>
                        </div>
                    </ul>
                </div>
            </div>


            <div class="width_100bfb01 chengjiu_list">
                <ul class="wrm">
                    <li class="yuexx">234/10000</li>
                    <li class="bjye">1000</li>
                    <a href="#" class="lingqu">领取</a>
                </ul>
                <ul class="cjjx">
                    <li class="yuexx">234/10000</li>
                    <span class="yilingqu">已领取</span>
                </ul>
                <ul class="cpsc">
                    <li class="yuexx">234/10000</li>
                    <li class="bjye">1000</li>
                    <a href="#" class="lingqu">领取</a>
                </ul>
                <ul class="nzbz">
                    <li class="yuexx">234/10000</li>
                    <li class="bjye">1000</li>
                    <a href="#" class="lingqu">领取</a>
                </ul>
                <ul class="txwd">
                    <li class="yuexx">234/10000</li>
                    <li class="bjye">1000</li>
                    <a href="#" class="lingqu">领取</a>
                </ul>
            </div>
        </div>
        <!--用户中心右边结束-->
    </div>
</div>
<!--内容结束版权开始-->

</body>
</html>
