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
                <li>进行中的比赛</li>
                <li>已完成的比赛</li>
            </div>
            <div class="bisai_nr">
                <div class="div_box bisai_list">
                    <!--
                        <div class="width_100bfb01 bisai_kong">
                            <li><img src="images/bisai_kong.png" /></li>
                            <li class="smxx">暂无任何比赛记录</li>
                        </div>
                    -->
                    <div class="page_nr">2/13</div>
                    <ul>
                        <li class="user_pic l"><img src="images/user_01.jpg" /></li>
                        <li class="ppz l">高坚果</li>
                        <li class="gjc l">混沌的高阶领主</li>
                        <li class="bmjb l">综合战力<span>2000</span></li>
                        <li class="duizhen l">上单</li>
                        <li class="zhuangtai l">爆发<span>刺杀型</span></li>
                        <li class="r zdxx"><a href="#">点击查看</a></li>
                    </ul>
                    <ul>
                        <li class="user_pic l"><img src="images/user_01.jpg" /></li>
                        <li class="ppz l">匹配战</li>
                        <li class="gjc l">高级场</li>
                        <li class="bmjb l">报名金币<span>1000</span></li>
                        <li class="duizhen l">对阵</li>
                        <li class="zhuangtai l">状态<span>准备中</span></li>
                        <li class="r zdxx"><span>离场判负</span></li>
                    </ul>
                    <ul>
                        <li class="user_pic l"><img src="images/user_01.jpg" /></li>
                        <li class="ppz l">匹配战</li>
                        <li class="gjc l">高级场</li>
                        <li class="bmjb l">报名金币<span>1000</span></li>
                        <li class="duizhen l">对阵</li>
                        <li class="zhuangtai l">状态<span>准备中</span></li>
                        <li class="r zdxx"><span>离场判负</span></li>
                    </ul>
                    <a href="javascript:void(0)" class="page pre"></a>
                    <a href="javascript:void(0)" class="page pnext"></a>
                </div>
                <div class="div_box bisai_list">
                    <div class="page_nr">2/13</div>
                    <ul>
                        <li class="user_pic l"><img src="images/user_01.jpg" /></li>
                        <li class="ppz l">匹配战</li>
                        <li class="gjc l">高级场</li>
                        <li class="bmjb l">报名金币<span>1000</span></li>
                        <li class="duizhen l">对阵</li>
                        <li class="zhuangtai l">状态<span>准备中</span></li>
                        <li class="r zdxx"><a href="#">申诉</a></li>
                    </ul>
                    <ul>
                        <li class="user_pic l"><img src="images/user_01.jpg" /></li>
                        <li class="ppz l">匹配战</li>
                        <li class="gjc l">高级场</li>
                        <li class="bmjb l">报名金币<span>1000</span></li>
                        <li class="duizhen l">对阵</li>
                        <li class="zhuangtai l">状态<span>准备中</span></li>
                        <li class="r zdxx"><span>离场判负</span></li>
                    </ul>
                    <ul>
                        <li class="user_pic l"><img src="images/user_01.jpg" /></li>
                        <li class="ppz l">自定邀请战</li>
                        <li class="bmjb l">报名金币<span>1000</span></li>
                        <li class="duizhen l">对阵</li>
                        <li class="zhuangtai l">状态<span>准备中</span></li>
                        <li class="r zdxx"><span>审核中</span></li>
                    </ul>
                    <a href="javascript:void(0)" class="page pre"></a>
                    <a href="javascript:void(0)" class="page pnext"></a>
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

</body>
</html>
