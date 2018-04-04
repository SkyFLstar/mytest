package com.hots.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hots.privateclass.Market;
import com.hots.service.MarketService;
import com.hots.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller//对象控制器
public class MarketController {
    @Autowired
    private UserService userService;
    @Autowired
    private MarketService marketService;
//    @Autowired
//    private MarketService marketService;
//    @RequestMapping(value = "index.do")//设定请求来源为login下
//    public ModelAndView ShowAllwares(Model model){
//        List<Market>list = marketService.selectAll();
//        System.out.println(list);
//        model.addAttribute("marketlist",list);
//        return new ModelAndView("redirect:index.do");
//    }

    @RequestMapping("market.do")
    public void showmarket(
            ModelAndView mv, @RequestParam(required=true,defaultValue="1")Integer page, @RequestParam(required=false,defaultValue="9")Integer pageSize,Model model){

        List<Market>marketlist = marketService.selectAll();
        model.addAttribute("marketlist",marketlist);

        PageHelper.startPage(page,pageSize);
        PageInfo<Market> p=new PageInfo<Market>(marketlist);

        mv.addObject("marketlist",marketlist);
        mv.addObject("page",p);
        mv.setViewName("market");

    }
}
