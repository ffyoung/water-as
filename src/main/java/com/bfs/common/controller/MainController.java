package com.bfs.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;

/**
 * - - - - - - - - - - -
 * |    By   R o c k   |
 * - - - - - - - - - - -
 * Created by rock on 2018-09-12
 */
@Controller
public class MainController {
    private int f = 0;

    @RequestMapping("/index")
    public String index(HttpServletRequest request, HttpServletResponse response,Model model){


        String uurl = "";

        if (f == 0) {
            f++;
//            uurl = "/login/login";
            uurl = "/register/sjsq_login";
            System.out.println("被执行了！"+uurl);
        }
        else {
            f=0;
//            uurl = "/index";
            uurl = "/register/sjsq_login";
            System.out.println("被执行了！"+uurl);
        }
        return  uurl;
    }



    @RequestMapping("/test")
    @ResponseBody
    public ModelAndView test(HttpServletRequest request){

        HashMap<String,Object> hm = new HashMap<>();

        String mUsername = request.getParameter("username");
        String mPassword = request.getParameter("password");
        hm.put("mUs",mUsername);
        hm.put("mPs",mPassword);

//        return JSONObject.toJSONString(hm);
        ModelAndView mav = new ModelAndView();


        String menuId = request.getParameter("menuId");

        mav.setViewName("welcome");
        mav.addObject("Uid",menuId);

        mav.addObject("username","rock");




        return mav;
    }
}
