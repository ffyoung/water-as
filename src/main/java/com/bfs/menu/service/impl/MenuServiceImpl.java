package com.bfs.menu.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.bfs.menu.controller.MenuController;
import com.bfs.menu.dao.MenuDao;
import com.bfs.menu.po.Menu;
import com.bfs.menu.service.MenuService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * - - - - - - - - - - -
 * |    By   R o c k   |
 * - - - - - - - - - - -
 * Created by rock on 2018-09-13
 */
@Service
public class MenuServiceImpl implements MenuService {


    @Autowired
    private MenuDao menuDao;


    @Override
    public List<Menu> menuList() {
        return menuDao.menuList();
    }

    /**
     *
     * @return   Json格式化后的逻辑树形图
     */
    public String showMenuList(){

        List<Menu> menuList = menuDao.menuList();
        List<Menu> rootMenu = new ArrayList<Menu>();
        for (int i = 0; i < menuList.size(); i++) {
            // 一级菜单没有parentId
            if (StringUtils.isBlank(menuList.get(i).getParentId())) {
                rootMenu.add(menuList.get(i));
            }
        }
        for (Menu menu : rootMenu) {
            menu.setChildren(getChild(menu.getId(), menuList));
        }
        return JSONObject.toJSONString(rootMenu);
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
