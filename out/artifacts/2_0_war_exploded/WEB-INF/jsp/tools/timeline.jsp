<%--
  Created by IntelliJ IDEA.
  User: zhuzw_000
  Date: 2015/9/19
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ZHU's Coding</title>
  <meta name="description" content="Blueprint: Vertical Timeline" />
  <meta name="keywords" content="timeline, vertical, layout, style, component, web development, template, responsive" />
  <meta name="author" content="Codrops" />
  <link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/../favicon.ico">
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/default.css" />
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/component.css" />
  <script src="<%=request.getContextPath()%>/resources/js/modernizr.custom.js"></script>

  <style type="text/css">
    .generalcontext{
      overflow:hidden;
      width:100%;

      white-space:nowrap ;
      text-overflow:ellipsis;

    }

  </style>



</head>
<body>
<div class="container">
  <header class="clearfix">

    <h1>最新博文</h1>

  </header>
  <div class="main">
    <ul class="cbp_tmtimeline">
      <c:forEach items="${newest}"  var="n" end="4" >
      <li>
        <time class="cbp_tmtime" datetime="2013-04-10 18:30">
          <span>
             <fmt:formatNumber type="number" value="${n.editTime/10000000000}" maxFractionDigits="0" groupingUsed="4"/>
            /
             <fmt:formatNumber type="number" value="${n.editTime/100000000%100}" maxFractionDigits="0" minIntegerDigits="2"/>
            /
           <fmt:formatNumber type="number" value="${n.editTime/1000000%100}" maxFractionDigits="0" minIntegerDigits="2"/>

          </span>
          <span style="font-size: 36px">
             <fmt:formatNumber type="number" value="${n.editTime/10000%100}" maxFractionDigits="0"  minIntegerDigits="2"/>
            :
            <fmt:formatNumber type="number" value="${n.editTime/100%100}" maxFractionDigits="0"  minIntegerDigits="2"/>

          </span>
        </time>
        <div class="cbp_tmicon cbp_tmicon-phone"></div>
        <div class="cbp_tmlabel" style="color:black">
          <h2><a href="<%=request.getContextPath()%>/articles/${n.id}">${n.title}</a></h2>
          <p class="generalcontext">${n.context}</p>
        </div>
      </li>
      </c:forEach>

    </ul>
  </div>
</div>
<br/>
</body>
</html>
