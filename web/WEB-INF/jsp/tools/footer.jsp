<%--
  Created by IntelliJ IDEA.
  User: zhuzw_000
  Date: 2015/9/18
  Time: 8:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title></title>
  <style type="text/css">

    .top-grid {
      padding: 1em 0px;
      background: #000 none repeat scroll 0% 0%;
    }

    * {
      box-sizing: border-box;
    }


    .footer_container{
      width: 90%;

      height: 20%;

      padding-bottom: 7%;
      padding-right: 7%;
      padding-left: 7%;
      margin-right: auto;
      margin-left: auto;

    }
    * {
      box-sizing: border-box;
    }


    .footer_font{
      color: #FFF;
      font-size: 2.1em;
      font-weight: 700;
      margin-bottom: 1.1em;
    }



    .top-left-grid {
      padding: 0px 30px 0px 0px;
    }

    .col-md-6 {
      width: 50%;
      float: left;
      position: relative;
      min-height: 1px;
    }
    .top-right-grid {
      padding: 0px 0px 0px 30px;

    }

  </style>
</head>
<body>

<div class="top-grid">
  <div class="footer_container">
  <div class="col-md-6 top-left-grid footer_font"  >
    <h3>详情关注: </h3>

  </div>


  <div class="col-md-6 top-right-grid footer_font" >

    <img src="<%=request.getContextPath()%>/resources/img/weibo.jpg" height="96" width="96" />

    <img src="<%=request.getContextPath()%>/resources/img/weixin.jpg" height="96" width="96"/>

  </div>
  </div>



</div>
</body>
</html>
