<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018-09-10
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<c:forEach items="${userMenuList }" var="menu" varStatus="status">
    <!-- 一级子菜单没有parentId,有url -->
    <c:if test="${empty menu.parentId and not empty menu.url}">
        <li>
            <a href="<c:url value='${menu.url }'/>">
                <i class="${menu.icon } fa-fw"></i> ${menu.name }
            </a>
        </li>
    </c:if>
    <!-- 可展开的一级菜单，没有parentId,有url -->
    <c:if test="${empty menu.parentId and empty menu.url}">
        <li>
            <a href="#">
                <i class="${menu.icon } fa-fw"></i> ${menu.name }<span class="fa arrow"></span>
            </a>
            <ul class="nav nav-second-level">
                <!-- 没有url的是三级菜单，有url的直接输出到li中 -->
                <c:forEach items="${menu.childMenus}" var="secondChild" varStatus="status">
                    <c:if test="${not empty secondChild.url }">
                        <li>
                            <a href="<c:url value='${secondChild.url }'/>">${secondChild.name }</a>
                        </li>
                    </c:if>
                    <!-- 二级菜单url为空，表示还有三级菜单 -->
                    <c:if test="${empty secondChild.url }">
                        <li>
                            <a href="#">${secondChild.name }<span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                                <c:forEach items="${secondChild.childMenus}" var="thirdChild" varStatus="status">
                                    <li>
                                        <a href="<c:url value='${thirdChild.url }'/>">${thirdChild.name }</a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </li>
                    </c:if>
                </c:forEach>
            </ul>
        </li>
    </c:if>
</c:forEach>

</body>
</html>
