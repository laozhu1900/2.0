<%--
  Created by IntelliJ IDEA.
  User: zhuzw_000
  Date: 2015/9/21
  Time: 22:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title></title>

  <link href="<%=request.getContextPath()%>/resources/css/main.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/script.js"></script>

</head>
<body style="height:100%;">




<div class="navbg">
  <div class="col960">
    <ul id="navul" class="cl">
      <li class="#"><a href="#">文章</a></li>
      <li>
        <a href="code?page=1">编程</a>

      </li>
      <li>
        <a href="digit?page=1">数码</a>

      </li>
      <li>
        <a href="bigData?page=1">大数据</a>

      </li>
      <li>
        <a href="life?page=1">生活</a>

      </li>

      <li>
        <c:if test="${admin_msg eq 'coding'}">
          <p><a href="write">Coding</a></p>
        </c:if>

      </li>

    </ul>
  </div>
</div>

<script  type="text/javascript">
  $(document).ready(function(){

    $(".navbg").capacityFixed();

    $("#navul > li").not(".navhome").hover(function(){
      $(this).addClass("navmoon");
    },function(){
      $(this).removeClass("navmoon");
    });

  });
</script>

</body>
</html>
