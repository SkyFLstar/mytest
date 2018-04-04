<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/25
  Time: 12:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>

    <link rel="stylesheet" type="text/css" href="/css/Signinpage.css">

    <title>注册页面</title>
</head>
<body background="/images/starbackground.jpg">

<div align="center" style="margin: 80px auto auto auto">
    <span style="font-size: 35px;color: aliceblue;">创建账号</span><br>
    <span class="othertype">使用<a href="#">QQ</a>或<a href="#">手机号</a>注册</span>
    <div class="Fengexian"><span>———————————或———————————</span></div>
    <form action="<%=path%>/signin.do" method="post">
        <input type="text" name="u_id" placeholder="身份证ID"><br>
        <input type="text" name="u_name" placeholder="请输入姓名"><br>
        <input type="text" name="u_petname" placeholder="请输入昵称"><br>
        <input type="text" name="u_email" placeholder="请输入Email"><br>
        <input type="text" placeholder="再次确认Email"><br>
        <input type="password" name="u_password" placeholder="请输入密码"><br>
        <input type="password" placeholder="请再次输入密码"><br>
        <select name="u_question">
            <option>请选择一个安全问题</option>
            <option value="你第一次买房是什么时候">你第一次买房是什么时候</option>
            <option value="你初恋女友的名字">你初恋女友的名字</option>
            <option value="你的第一辆豪车是什么品牌">你的第一辆豪车是什么品牌</option>
        </select><br>
        <input type="text" name="u_result" placeholder="请输入你的答案"><br>
        <input type="text" name="u_qq" placeholder="请输入你的QQ"><br>
        <input type="text" name="u_phone" placeholder="请输入你的手机号"><br>
        <input type="checkbox" value="yes" style="width: 15px;height:15px;margin-left: -170px;"><span style="color: #CFD2D6;">我同意隐私政策中的各项条款</span><br>
        <input type="submit" value="免费注册网易通行证" style="color: #FFFFFF;border:1px #3298D2 solid;background-color: #0E86CA;"><br>
        <!-- 隐藏赋默认值的input输入框 -->
        <input type="text" name="u_have" value="0" style="visibility: hidden;">
        <input type="text" name="u_head_img" value="/Headimages/unknow_img.jpg" style="visibility: hidden;">
        <input type="text" name="u_balacne" value="0" style="visibility: hidden;"><br>
    </form>
</div>

</body>
</html>
