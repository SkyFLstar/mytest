<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<link rel="stylesheet" type="text/css" href="/css/Homepage.css">
<link rel="stylesheet" type="text/css" href="/css/Top_page.css">
<script type="text/javascript" src="/js/jquery-1.10.1.js"></script>
<script>
    var user_state="<%=pageContext.getSession().getAttribute("u_email")%>";
    var user_head_img="<%=pageContext.getSession().getAttribute("u_head_img")%>";
    var user_petname="<%=pageContext.getSession().getAttribute("u_petname")%>";
</script>
<html>
<body background="/images/starbackground.jpg">
<div class="Top_Div">
    <img src="/images/logo.png" style="width: auto;height: 90px;margin:-10px auto auto 100px" align="left">
    <ur class="Top_ur_01">
        <ul><a href="#">游戏</a></ul>
        <ul><a href="#" onclick=show("market")>商城</a></ul>
        <ul><a href="#" onclick=show("home")>首页</a></ul>
    </ur>
    <ur class="Top_ur_02">
        <ul><a href="#"><span id="top_zhichi">支持</span><img style="width: auto;height: 30px;position: absolute;visibility: hidden;" id="u_info_img" ></a></ul>
        <ul><a href="login.jsp" id="u_info_names" onclick=show("personalcent");>登录账号</a><a href="/cancel.do"  id="zhuxiao" style="visibility: hidden;margin-left: 20px;" onclick="ZX()">注销</a></ul>
    </ur>
</div>
<!-- 页面展示板 -->
<div class="centerpages" id="home"><%@include file="home.jsp"%></div>
<div class="centerpages" id="market" style="display: none;"><%@include file="market.jsp"%></div>
<div class="centerpages" id="personalcent" style="display: none;"><%@include file="personalcenter.jsp"%></div>
<div class="centerpages" id="personalcenter-achievement" style="display: none;"><%@include file="personalcenter-achievement.jsp"%></div>
<div class="centerpages" id="personalcenter-article" style="display: none;"><%@include file="personalcenter-article.jsp"%></div>
<div class="centerpages" id="personalcenter-had" style="display: none;"><%@include file="personalcenter-had.jsp"%></div>
<div class="centerpages" id="personalcenter-pay" style="display: none;"><%@include file="personalcenter-pay.jsp"%></div>
<div class="centerpages" id="personalcenter-purse" style="display: none;"><%@include file="personalcenter-purse.jsp"%></div>
<div class="centerpages" id="personalcenter-safedata" style="display: none;"><%@include file="personalcenter-safedata.jsp"%></div>

<!-- 内容结束版 -->
<div class="footer_box clearfloat">
    <div class="w_1175 clearfloat">
        <ul class="contact">
            <li class="logo l">
                <a href="首页.html"><img src="images/logo.png" /></a>
            </li>
            <li class="tk_lx_gy l">
                <a href="#">关于我们</a>
                <a href="#">法律声明</a>
                <a href="#" class="mt_10">联系我们</a>
                <a href="#" class="mt_10">服务条款</a>
            </li>
            <li class="wx_qq l">
                <p class="wx"><a href="#">微信公众号：网之易</a></p>
                <p class="qq"><a href="#">QQ客服：2435566</a></p>
            </li>
            <li class="tel_gzsj r">
                <p class="tel">0340-56678650</p>
                <p class="gzsj">周一至周五 9:00～18:00</p>
            </li>
        </ul>
        <ul class="banquan">
            <span class="pr_10">上海网之易科技有限公司</span>版权所有<span class="ml_20">京ICP备12052030号</span>
        </ul>
    </div>
</div>
</body>
<script>
    <!-- 当页面启动的时候判断Session有无信息如果有则触发事件将登录信息改为用户头像和昵称 -->
    window.onload=function () {
        if (user_state!=null){
            var top_zhichi=document.getElementById("top_zhichi");
            top_zhichi.style.visibility="hidden";
            var img=document.getElementById("u_info_img");
            img.style.visibility="visible";
            img.style.position="static";
            img.src=user_head_img;
            var name=document.getElementById("u_info_names");
            name.innerHTML=user_petname;
            var zhuxiao=document.getElementById("zhuxiao");
            zhuxiao.style.visibility="visible";
            name.href="#";
        }else if (user_state==null){
            document.location.href="login.jsp";
        }
    }
    function show(obj) {
        var centerpages=document.getElementsByClassName("centerpages");
        for (i=0;i<=centerpages.length-1;i++){
            centerpages[i].style.display="none";
        }
        var  center=document.getElementById(obj);
        center.style.display="inline";
    }
</script>
</html>
