<%--
  Created by IntelliJ IDEA.
  User: zhuzw_000
  Date: 2015/9/20
  Time: 14:15
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

  </header>


  <div>
    <main>
      <div class="container">

        <section style="font-family: Microsoft YaHei">
          <h1 style="font-family:微软雅黑;font-size: 24px">标题：${article.title}</h1><br/>
          <h2 style="margin-left: 5%"><span>By：${article.author} </span>&nbsp;&nbsp;&nbsp;
           <span class="comment-date" style="font-size: 14px;font-family: Microsoft YaHei">

               <fmt:formatNumber type="number" value="${article.editTime/10000000000}" maxFractionDigits="0" groupingUsed="4" minIntegerDigits="4"/>年
               <fmt:formatNumber type="number" value="${article.editTime/100000000%100}" maxFractionDigits="0" minIntegerDigits="2"/>月
               <fmt:formatNumber type="number" value="${article.editTime/1000000%100}" maxFractionDigits="0" minIntegerDigits="2"/>日 &nbsp;
               <fmt:formatNumber type="number" value="${article.editTime/10000%100}" maxFractionDigits="0"  minIntegerDigits="2"/>:
               <fmt:formatNumber type="number" value="${article.editTime/100%100}" maxFractionDigits="0"  minIntegerDigits="2"/>

            </span>

          </h2>
          <div >



          </div>

          <br/>
          <div id="github-icons" >
             <p>${article.context}</p>
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
      <a class="mm-menu__link" href="#">
        <span class="mm-menu__link-text"><i class="md md-settings"></i> 个人设置</span>
      </a>
    </li>
  </ul>
</nav><!-- /nav -->

<script src="<%=request.getContextPath()%>/resources/js/production/materialMenu.min.js"></script>
<script>
  var menu = new Menu;
</script>

<jsp:include page="comment.jsp"/>
</body>
</html>

<jsp:include page="../tools/share.jsp"/>


