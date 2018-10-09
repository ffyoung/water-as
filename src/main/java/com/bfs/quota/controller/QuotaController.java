package com.bfs.quota.controller;

import com.alibaba.fastjson.JSONObject;
import com.bfs.quota.po.Quota;
import com.bfs.quota.service.QuotaService;
import com.google.gson.JsonObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * - - - - - - - - - - -
 * |    By   R o c k   |
 * - - - - - - - - - - -
 * Created by rock on 2018-09-17
 */
@Controller
@RequestMapping("quota")
public class QuotaController {


    @Autowired
    private QuotaService quotaService;


    @RequestMapping(value = "index",method = RequestMethod.GET)
    public ModelAndView findQuota(HttpServletResponse response){

        ModelAndView mav = new ModelAndView();

        Quota quota = quotaService.findQuota();

        System.out.println(quota.toString());

        mav.addObject("quota",quota);

        mav.setViewName("quota");

        return mav;
    }




    @RequestMapping(value="update",method=RequestMethod.POST)
    @ResponseBody
    public String update(HttpServletRequest request,HttpServletResponse response){


        String mkey = request.getParameter("mkey");
        Double mvalue = Double.valueOf(request.getParameter("mvalue"));

        System.out.println("mkey="+mkey+"mvalue="+mvalue);
        //进行update更新操作 mkey 为列名称， mvalue 为列值
        int befun = quotaService.updateQuota(mkey,mvalue);


        return JSONObject.toJSONString(befun);
    }



}
