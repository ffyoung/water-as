package com.bfs.menu;

import com.alibaba.fastjson.JSONObject;
import com.bfs.menu.dao.MenuDao;
import com.bfs.menu.po.Menu;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.apache.commons.lang.StringUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * - - - - - - - - - - -
 * |    By   R o c k   |
 * - - - - - - - - - - -
 * Created by rock on 2018-09-10
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
public class TestWaerAs {


    private final Gson gson = new GsonBuilder().disableHtmlEscaping().create();

    @Autowired
    private MenuDao menuDao;

    @Test
    public void testMenu(){

        List<Menu> menuList = menuDao.menuList();
        
        List<Menu> rootMenu = new ArrayList<Menu>();
        // 先找到所有的一级菜单
        for (int i = 0; i < menuList.size(); i++) {
            // 一级菜单没有parentId
            if (StringUtils.isBlank(menuList.get(i).getParentId())) {
                rootMenu.add(menuList.get(i));
            }
        }
        // 为一级菜单设置子菜单，getChild是递归调用的
        for (Menu menu : rootMenu) {
            menu.setChildren(getChild(menu.getId(), menuList));
        }


        Map<String,Object> jsonMap = new HashMap<>();
//        jsonMap.put("menu", rootMenu);
        System.out.println("______________________________________________________");
        System.out.println(JSONObject.toJSONString(rootMenu));

    }

    /**
     * 递归查找子菜单
     *
     * @param id
     *            当前菜单id
     * @param menuList
     *            要查找的列表
     * @return
     */
    private List<Menu> getChild(Long id, List<Menu> menuList) {
        // 子菜单
        List<Menu> childList = new ArrayList<>();
        for (Menu menu : menuList) {
            // 遍历所有节点，将父菜单id与传过来的id比较
            if (StringUtils.isNotBlank(menu.getParentId())) {
                if (Integer.parseInt(menu.getParentId()) == id  ) {
                    childList.add(menu);
                }
            }
        }
        // 把子菜单的子菜单再循环一遍
        for (Menu menu : childList) {// 没有url子菜单还有子菜单
                // 递归
                menu.setChildren(getChild(menu.getId(), menuList));
        } // 递归退出条件
        if (childList.size() == 0) {
            return null;
        }
        return childList;
    }





}
