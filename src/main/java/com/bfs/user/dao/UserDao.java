package com.bfs.user.dao;

import org.apache.ibatis.annotations.Param;

/**
 * - - - - - - - - - - -
 * |    By   R o c k   |
 * - - - - - - - - - - -
 * Created by rock on 2018-09-10
 */
public interface UserDao {


    /**
     * 根据username,password进行验证
     * @param username
     * @param password
     * @return
     */
    int findUser(@Param("username") String username,@Param("password") String password);
}
