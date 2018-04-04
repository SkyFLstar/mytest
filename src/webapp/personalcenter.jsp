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
            <div class="wupin_tab">
                <li>基本账户信息</li>
            </div>
            <div class="bisai_nr">
                <div class="div_box bisai_list">
                    <!--
                        <div class="width_100bfb01 bisai_kong">
                            <li><img src="images/bisai_kong.png" /></li>
                            <li class="smxx">暂无任何比赛记录</li>
                        </div>
                    -->
                    <ul>
                        <li class="user_pic l"><img src="${u_head_img}" /></li>
                        <li class="ppz l">真实姓名:</li>
                        <li class="gjc l">${u_name}</li>
                        <li class="zhuangtai l">印象标签<span>触手</span><span>呆萌</span><span>神操作</span></li>
                        <li class="r zdxx"><a href="#" onclick="showimg()">点击修改</a></li>
                        <li style="margin-top: 50px;">个性签名:我就是我，是夜色不一样的烟火!</li>
                        <li style="margin-left: 50px;"></li>
                    </ul>
                    <ul class="ul2">
                        <li >绑定邮箱:<span>${u_email}</span></li>
                        <li >安全手机:<span>${u_phone}</span></li>
                        <li >绑定QQ:<span>${u_qq}</span></li>
                    </ul>
                </div>
            </div>
            <script type="text/javascript">
                $(document).ready(function() {
                    jquery_tab('.wupin_tab li','.bisai_nr .div_box','click')
                });
            </script>
        </div>
        <!--用户中心右边结束-->
    </div>
</div>
<!--内容结束版权开始-->
<div class="bg_img" style="width: 100%;height: 100%; background: rgba(50,20,100,0.5);position: absolute;display: none;top: 0;">
    <div class="img" style="display:none;position:absolute;top:30%;left:40%;">
        <form>
        <table>
            <tr>
                <td>昵称:</td>
                <td><input type="text" value="${u_petname}"></td>
            </tr>
            <tr>
                <td>新密码:</td>
                <td><input type="password" value="${u_password}"></td>
            </tr>
            <tr>
                <td>安全手机:</td>
                <td><input type="text" value="${u_phone}"></td>
            </tr>
            <tr>
                <td>QQ:</td>
                <td><input type="text" value="${u_qq}"></td>
            </tr>
            <tr>
                <td rowspan="2"><input type="submit" value="提交修改"></td>
            </tr>
        </table>
        </form>
    </div>
</div>
</body>
<script>
    function showimg() {
        $('.bg_img').show();
        $('.img').show();
        $('.bg_img').click(function(){
            $('.bg_img').hide();
            $('.img').hide();
        })
    };
</script>
</html>
