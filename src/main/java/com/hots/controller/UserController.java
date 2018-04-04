package com.hots.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hots.privateclass.Market;
import com.hots.privateclass.User;
import com.hots.service.MarketService;
import com.hots.service.UserService;
import com.sun.mail.iap.Response;
import javafx.application.Application;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller//对象控制器
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private MarketService marketService;

    @RequestMapping("login.do")//设定请求来源为login下
    public String login(String u_email, String u_password, HttpSession session){
        //给控制器传入登录页传递的参数u_email和u_password，然后用逻辑业务userService.login接收
        User user = userService.login(u_email,u_password);
        //如果返回的用户信息存在，在session中存入用户信息，信息return至主页面路径，后台springmvcframework.view将作为servlet处理路径将信息传递至路径处;
        if (user!=null){
            session.setMaxInactiveInterval(3600);
            session.setAttribute("u_email",u_email);
            session.setAttribute("u_petname",user.getU_petname());
            session.setAttribute("u_password",user.getU_password());
            session.setAttribute("u_id",user.getU_id());
            session.setAttribute("u_name",user.getU_name());
            session.setAttribute("u_question",user.getU_question());
            session.setAttribute("u_result",user.getU_result());
            session.setAttribute("u_qq",user.getU_qq());
            session.setAttribute("u_phone",user.getU_phone());
            session.setAttribute("u_have",user.getU_have());
            session.setAttribute("u_head_img",user.getU_head_img());
            session.setAttribute("u_balacne",user.getU_balacne());

            List<Market>list=marketService.selectAll();

            session.setAttribute("marketlist",list);

            return "redirect:index.jsp";
        }else {
            return "login";
        }
    }

    @RequestMapping("signin.do")
    public String signin(User u){
        if(userService.signin(u)){
            return "login";
        }
        return "false";
    }
    @RequestMapping("cancel.do")//设定请求来源为index下
    public String cancel(HttpSession session){
        session.removeAttribute("u_email");
        session.removeAttribute("u_petname");
        session.removeAttribute("u_head_img");
        return "login";
    }

//    @RequestMapping("personalcenter.do")
//    public String personalcenter(){
//        return "personalcenter";
//    }

//    @RequestMapping("personalcenter.do")
//    public String selectByEmail(String u_email,Model model){
//        List<User>list = userService.selectByEmail(u_email);
//        model.addAttribute(list);
//        return "redirect:personalcenter";
//    }


}
