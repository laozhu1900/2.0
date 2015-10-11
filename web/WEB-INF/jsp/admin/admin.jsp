<%--
  Created by IntelliJ IDEA.
  User: zhuzw_000
  Date: 2015/9/20
  Time: 20:49
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="zh">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ZHU's Coding</title>
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
  <div style="font-family: Microsoft YaHei;">
    <main>
      <div class="container">
        <section>

          <div id="github-icons" style="font-family: Microsoft YaHei;margin-left: 16%">

            <p>1.欢迎访问ZHU'S Coding，本站用于IT技术交流，分享生活，文章均为ZHU'S Coding 原创，如需转载请说明出处<br/><br/></p>
            <p> 2.本站言论自由，若有技术错误请积极指正，有任何建议或意见可以在留言区留言，或者在联系页面给Mr.Z发邮件<br/><br/></p>
            <p> 3.具有coding权限的，可以点击 ZHU'S Coding 登录,但是必须原创，否则一律删除<br/><br/></p>
            <br/>
            <p> &nbsp;&nbsp;&nbsp;Mr.Z的邮箱：zhuzw0929@163.com</p>

          </div>

        </section>

        <jsp:include page="login.jsp"/>
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
      <a class="mm-menu__link" href="../articles/?page=1">
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
      <a class="mm-menu__link" href="./">
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


</body>
</html>
