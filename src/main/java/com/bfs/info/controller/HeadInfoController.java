package com.bfs.info.controller;

import com.alibaba.fastjson.JSONObject;
import com.bfs.info.po.HeadInfo;
import com.bfs.info.service.HeadInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * - - - - - - - - - - -
 * |    By   R o c k   |
 * - - - - - - - - - - -
 * Created by rock on 2018-09-15
 */
@Controller
@RequestMapping("info")
public class HeadInfoController {


    @Autowired
    private HeadInfoService headInfoService;

    @RequestMapping(value = "list",method = RequestMethod.POST)
    public ModelAndView findById(HttpServletRequest request, HttpServletResponse response){

        ModelAndView mav = new ModelAndView();

        Long hid = Long.valueOf(request.getParameter("menuId"));

        HeadInfo headInfo = headInfoService.findById(hid);

        mav.setViewName("Info");

        mav.addObject("headlist",headInfo);

        return mav;

    }





}
