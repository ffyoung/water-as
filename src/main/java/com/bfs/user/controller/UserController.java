package com.bfs.user.controller;

import com.alibaba.fastjson.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;

/**
 * - - - - - - - - - - -
 * |    By   R o c k   |
 * - - - - - - - - - - -
 * Created by rock on 2018-09-10
 */
@Controller
@RequestMapping("user")
public class UserController {

    @RequestMapping("login")
    @ResponseBody
    public String userLogin(HttpServletRequest request, HttpServletResponse response){

        HashMap<String, Object> hm = new HashMap();
        hm.put("success", -1);
        hm.put("msg", "用户名和密码错误！");
        String mUserName = request.getParameter("username");
        String mPwd = request.getParameter("password");

        if(mUserName.equals("rock") && mPwd.equals("1234")){
            System.out.println("登录成功");
        }

        return JSONObject.toJSONString(hm);
    }
}
