<%--
  Created by IntelliJ IDEA.
  User: zhuzw_000
  Date: 2015/9/18
  Time: 0:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="zh">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ZHU'S Coding</title>
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/default.css">
  <link rel="stylesheet" href="http://fonts.useso.com/css?family=Roboto:300,700">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.min.css">
  <!--[if IE]>
  <script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
  <![endif]-->
</head>
<body>
<div id="wrapper" class="wrapper">
  <header class="header htmleaf-header">

    <h1>ZHU's Coding <span>Real developers ship</span></h1>

    <br/>
    <jsp:include page="../tools/topbar.jsp"/>
  </header>

  <div style="font-family: Microsoft YaHei;">
    <main>
      <div class="container">
        <section>

          <div id="github-icons">

            <c:forEach items="${list}" var="a" end="8">
            <p>
              <a href="./${a.id}">${a.title}</a>

              <span style="font-size: 14px;font-family: Microsoft YaHei;margin-right: 10%;float: right" >
              <c:if test="${admin_msg eq 'coding'}">

                <span><a href="./${a.id}/edit">修改</a></span>
                <span><a href="./${a.id}/delete">删除</a></span>


              </c:if>
              </span>


            </p>



            </c:forEach>



          </div>



        </section>
      </div>
    </main>
  </div>
</div><!-- /wrapper -->

<button id="mm-menu-toggle" class="mm-menu-toggle">Toggle Menu</button>
<nav id="mm-menu" class="mm-menu">
  <div class="mm-menu__header">
    <h2 class="mm-menu__title">Mr.Z</h2>
  </div>
  <ul class="mm-menu__items">
    <li class="mm-menu__item">
      <a class="mm-menu__link" href="../">
        <span class="mm-menu__link-text"><i class="md md-home"></i>主页</span>
      </a>
    </li>
    <li class="mm-menu__item">
      <a class="mm-menu__link" href="./?page=1">
        <span class="mm-menu__link-text"><i class="md md-person"></i> 博文</span>
      </a>
    </li>
    <li class="mm-menu__item">
      <a class="mm-menu__link" href="../message/">
        <span class="mm-menu__link-text"><i class="md md-inbox"></i> 留言</span>
      </a>
    </li>
    <li class="mm-menu__item">
      <a class="mm-menu__link" href="../contact/">
        <span class="mm-menu__link-text"><i class="md md-favorite"></i> 联系</span>
      </a>
    </li>
    <li class="mm-menu__item">
      <a class="mm-menu__link" href="../admin/">
        <span class="mm-menu__link-text"><i class="md md-settings"></i> 关于</span>
      </a>
    </li>
  </ul>
</nav><!-- /nav -->

<script src="<%=request.getContextPath()%>/resources/js/production/materialMenu.min.js"></script>
<script>
  var menu = new Menu;
</script>

<jsp:include page="../tools/share.jsp"/>

</html>