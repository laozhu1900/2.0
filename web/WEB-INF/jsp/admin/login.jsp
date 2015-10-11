<%--
  Created by IntelliJ IDEA.
  User: zhuzw_000
  Date: 2015/9/20
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>jquery点击弹出登陆窗口</title>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/css.css" media="all">
  <script src="http://libs.baidu.com/jquery/2.1.1/jquery.min.js"></script>

  <script>
    jQuery(document).ready(function($) {
      $('.theme-login').click(function(){
        $('.theme-popover-mask').fadeIn(100);
        $('.theme-popover').slideDown(200);
      })
      $('.theme-poptit .close').click(function(){
        $('.theme-popover-mask').fadeOut(100);
        $('.theme-popover').slideUp(200);
      })

    })
  </script>
</head>

<body>
<div class="theme-buy">


  <c:if test="${empty admin_msg}">
    <%--<h3 style="font-family: Microsoft YaHei">ZHU'S Coding 登陆</h3>--%>
    <a class="btn btn-primary btn-large theme-login" href="javascript:;">ZHU'S Coding</a>
  </c:if>

  <br/>

  <span style="font-family: Microsoft YaHei;color: red;margin-top: 10%">${login_msg}</span>

  <%--<c:if test="${admin_msg  eq 'coding' }">--%>
    <%--&lt;%&ndash;<h3 style="font-family: Microsoft YaHei">欢迎来到 ZHU'S Coding</h3>&ndash;%&gt;--%>

    <%--<a class="btn btn-primary btn-large theme-login" href="#">欢迎来到 ZHU'S Coding</a>--%>
  <%--</c:if>--%>


  <%--<c:if test="${admin_msg eq 'coding' }">--%>
    <%--&lt;%&ndash;<h3 style="font-family: Microsoft YaHei">欢迎来到 ZHU'S Coding</h3>&ndash;%&gt;--%>

    <%--<a class="btn btn-primary btn-large theme-login" href="#">欢迎来到 ZHU'S Coding</a>--%>
  <%--</c:if>--%>

<c:if test="${not empty admin_msg}">

  <c:choose>
    <c:when test="${admin_msg  eq 'coding' }">
      <a class="btn btn-primary btn-large " href="#">欢迎来到 ZHU'S Coding</a>
      <a class="btn btn-primary btn-large " href="logout">退出</a>
    </c:when>
    <c:otherwise>
      <a class="btn btn-primary btn-large " href="#">您似乎没有Coding权限</a>
    </c:otherwise>
  </c:choose>
</c:if>
</div>
<div class="theme-popover">
  <div class="theme-poptit">
    <a href="javascript:;" title="关闭" class="close">×</a>

      <h3 style="font-family: Microsoft YaHei">ZHU'S Coding 登陆</h3>


    <%--<span style="font-family: Microsoft YaHei">${login_msg}</span>--%>

    <%--<c:if test="${not empty admin }">--%>
      <%--<h3 style="font-family: Microsoft YaHei">欢迎来到 ZHU'S Coding</h3>--%>
    <%--</c:if>--%>

  </div>
  <div class="theme-popbod dform">
    <form class="theme-signin"  action="./" name="loginform"  method="post">
      <ol>
        <li><h4 style="color: red">必须具有coding权限才能登陆</h4></li>
        <li><strong>用户名：</strong><input class="ipt" type="text" name="username"  size="20" /></li>
        <li><strong>密码：</strong><input class="ipt" type="password" name="password"  size="20" /></li>
        <li><input class="btn btn-primary" type="submit"   /> </li>
      </ol>
    </form>
  </div>
</div>
<div class="theme-popover-mask"></div>
</body>
</html>
