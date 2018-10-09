package com.bfs.menu.controller;

import com.alibaba.fastjson.JSONObject;
import com.bfs.menu.po.Menu;
import com.bfs.menu.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;

/**
 * - - - - - - - - - - -
 * |    By   R o c k   |
 * - - - - - - - - - - -
 * Created by rock on 2018-09-10
 */
@Controller
@RequestMapping("menu")
public class MenuController {

    @Autowired
    private MenuService menuService;

    @RequestMapping(value = "/menuList",method = RequestMethod.POST,produces = "application/json;charset=utf-8")
    @ResponseBody
    public String menuList(HttpServletResponse response){

        response.setContentType("text/html;charset=utf-8");

        return menuService.showMenuList();
    }
}
