<%--
  Created by IntelliJ IDEA.
  User: zhuzw_000
  Date: 2015/9/17
  Time: 23:21
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
  <link rel="stylesheet" href="http://fonts.useso.com	/css?family=Roboto:300,700">
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

        <jsp:include page="tools/timeline.jsp"/>
        <%--<section>--%>
          <%--<h1 style="font-family:微软雅黑">最新博文</h1><br/>--%>
          <%--<h2>hah</h2>--%>
          <%--<div id="github-icons"></div>--%>
          <%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius esse corporis, velit porro impedit laudantium accusamus! Id velit, illum magni rem mollitia blanditiis iste maiores optio ipsa, est dolorem fugit.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam repellendus odio consequatur, iure fuga, saepe sed, eum deserunt error praesentium enim provident qui voluptatibus rerum expedita blanditiis dicta nobis alias. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa qui consequuntur eius aliquam, rerum deleniti. Ipsam neque, nam cumque, sunt, labore autem perferendis suscipit voluptatum praesentium dolores aspernatur quae assumenda.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit ea nihil dolorem sapiente ullam obcaecati ipsam omnis, commodi ratione atque aliquid suscipit harum asperiores voluptate accusantium, temporibus saepe fugit iusto.</p>--%>
          <%--</section>--%>
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
      <a class="mm-menu__link" href="./">
        <span class="mm-menu__link-text"><i class="md md-home"></i>主页</span>
      </a>
    </li>
    <li class="mm-menu__item">
      <a class="mm-menu__link" href="articles/?page=1">
        <span class="mm-menu__link-text"><i class="md md-person"></i> 博文</span>
      </a>
    </li>
    <li class="mm-menu__item">
      <a class="mm-menu__link" href="message/">
        <span class="mm-menu__link-text"><i class="md md-inbox"></i> 留言</span>
      </a>
    </li>
    <li class="mm-menu__item">
      <a class="mm-menu__link" href="contact/">
        <span class="mm-menu__link-text"><i class="md md-favorite"></i> 联系</span>
      </a>
    </li>
    <li class="mm-menu__item">
      <a class="mm-menu__link" href="admin/">
        <span class="mm-menu__link-text"><i class="md md-settings"></i> 关于</span>
      </a>
    </li>
  </ul>
</nav><!-- /nav -->

<script src="<%=request.getContextPath()%>/resources/js/production/materialMenu.min.js"></script>
<script>
  var menu = new Menu;
</script>


</body>
</html>

<jsp:include page="tools/share.jsp"/>


