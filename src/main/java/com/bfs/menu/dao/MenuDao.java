package com.bfs.menu.dao;

import com.bfs.menu.po.Menu;

import java.util.List;

/**
 * - - - - - - - - - - -
 * |    By   R o c k   |
 * - - - - - - - - - - -
 * Created by rock on 2018-09-10
 */
public interface MenuDao {

    /**
     * 查找用户的菜单
     * @return
     */
    List<Menu> menuList();
}
