<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/22
  Time: 18:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <style>
        input{
            width: 350px;
            height: 35px;
            margin-top:20px;
            padding-left: 10px;
            border: 1px #52585E solid;
            background:#061018;
            color: #CFD2D6;
            border-radius:3%;
            font-size:20px;
        }
        .Fengexian span{
            position:relative;
            top:8px;
            background: rgba(0,0,0,0);
            padding: 0 20px;
            color:#B5B7AF;
        }
        .hrefs a{
            text-decoration: none;
            color: #0E86CA;
        }
    </style>
    <title>登录账号</title>
</head>
<body background="/images/login_body.jpg">
<div align="center" style="margin: 80px auto auto auto">
    <img src="/images/logo.png">
    <form action="<%=path%>/login.do" method="post">
        <input type="text" name="u_email" placeholder="电子邮箱"><br>
        <input type="password" name="u_password" placeholder="密码"><br>
        <input type="submit" value="登录" style="background-color: #0E86CA;width: 360px;height: 40px;font-size: 18px;color: #FFFFFF;border-color: #3298D2 ;">
    </form>
    <div class="Fengexian" style="margin-top: 20px"><span>—————————    或    —————————</span></div>
    <div style="padding-top:30px;">
        <span class="hrefs"><a href="signin.jsp">免费创建暴雪通行证</a></span><br><br>
        <span class="hrefs"><a href="#">无法登陆 ?</a></span><br><br>
        <span class="hrefs"><a href="#">安全命令同步</a></span><br>
    </div>
</div>
</body>
</html>
