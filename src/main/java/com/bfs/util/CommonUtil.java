package com.bfs.util;

import com.bfs.user.po.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.UUID;

/**
 * - - - - - - - - - - -
 * |    By   R o c k   |
 * - - - - - - - - - - -
 * Created by rock on 2018-09-13
 */
public class CommonUtil {

    public static String mSessionLoginUser = "LOGINUSERINFO";

    public static String getRandomUUID()
    {
        return UUID.randomUUID().toString().replace("-", "");
    }

    public static Object getLoginUserInfo(HttpServletRequest request)
    {
        HttpSession mHs = request.getSession();
        return mHs.getAttribute(mSessionLoginUser);
    }

    public static void setLoginUserInfo(HttpServletRequest request, User user)
    {
        HttpSession mHs = request.getSession();
        if (user != null) {
            mHs.setAttribute(mSessionLoginUser, user);
        } else {
            mHs.setAttribute(mSessionLoginUser, null);
        }
    }
}
