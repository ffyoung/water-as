package com.cy.register.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * - - - - - - - - - - -
 * |    By   R o c k   |
 * - - - - - - - - - - -
 * Created by rock on 2018-10-08
 */

@Controller
public class RegisterController {

    //   进入注册界面---One
    @RequestMapping(value = "registerOne",method = RequestMethod.GET)
    public ModelAndView registerOne(){

        ModelAndView mav = new ModelAndView();
        mav.setViewName("/register/register_one");
        return mav;
    }

    //    进入注册界面---Two
    @RequestMapping(value = "registerTwo",method = RequestMethod.GET)
    public ModelAndView registerTwo(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/register/register_Two");
        return mav;
    }

    //    进入注册界面---3rd
    @RequestMapping(value = "register3rd",method = RequestMethod.GET)
    public ModelAndView register3rd(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/register/register_3rd");
        return mav;
    }

    //    进入注册界面---4th
    @RequestMapping(value = "register4th",method = RequestMethod.GET)
    public ModelAndView register4th(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/register/register_4th");
        return mav;
    }



    //    进入注册界面---End/确认信息
    @RequestMapping(value = "registerEnd",method = RequestMethod.GET)
    public ModelAndView registerEnd(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/register/register_end");
        return mav;
    }

}
