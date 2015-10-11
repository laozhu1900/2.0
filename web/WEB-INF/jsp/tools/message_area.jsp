<%--
  Created by IntelliJ IDEA.
  User: zhuzw_000
  Date: 2015/9/21
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html class="no-js">

<head>
  <meta charset="utf-8"/>
  <title>ZENI</title>

  <!--[if lt IE 9]>
  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
  <link rel="stylesheet" media="all" href="<%=request.getContextPath()%>/resources/css/comment_style.css"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <!-- Adding "maximum-scale=1" fixes the Mobile Safari auto-zoom bug: http://filamentgroup.com/examples/iosScaleBug/ -->





  <!-- Less framework -->
  <link rel="stylesheet" media="all" href="<%=request.getContextPath()%>/resources/css/lessframework.css"/>

  <!-- modernizr -->


  <!-- SKIN -->
  <link rel="stylesheet" media="all" href="<%=request.getContextPath()%>/resources/css/skin.css"/>

  <!-- reply move form -->
  <script src="<%=request.getContextPath()%>/resources/js/moveform.js"></script>


</head>

<body lang="en">



<!-- MAIN -->
<div id="main">
  <div class="wrapper clearfix">




    <!-- posts list -->
    <div id="posts-list" class="single-post">

      <h2 class="page-heading"><span><%--5条留言--%></span></h2>

      <article class="format-standard">

        <!-- comments list -->
        <c:forEach items="${msg}" var="m">
          <ol class="commentlist">

            <li class="comment even thread-even depth-1" id="li-comment-1">

              <div id="comment-1" class="comment-body clearfix">
                <img alt='' src='<%=request.getContextPath()%>/resources/img/my.jpg' class='avatar avatar-35 photo' height='35' width='35' />
                <div class="comment-author vcard">${m.username}</div>
                <div class="comment-meta commentmetadata">
            <span class="comment-date">

               <fmt:formatNumber type="number" value="${m.editTime/10000000000}" maxFractionDigits="0" groupingUsed="4" minIntegerDigits="4"/>年
               <fmt:formatNumber type="number" value="${m.editTime/100000000%100}" maxFractionDigits="0" minIntegerDigits="2"/>月
               <fmt:formatNumber type="number" value="${m.editTime/1000000%100}" maxFractionDigits="0" minIntegerDigits="2"/>日 &nbsp;
               <fmt:formatNumber type="number" value="${m.editTime/10000%100}" maxFractionDigits="0"  minIntegerDigits="2"/>:
               <fmt:formatNumber type="number" value="${m.editTime/100%100}" maxFractionDigits="0"  minIntegerDigits="2"/>

            </span>
            <%--<span class="comment-reply-link-wrap"><a class='comment-reply-link' href='replytocom=23#respond' onclick='return addComment.moveForm("comment-1", "1", "respond", "432")'--%>
                                                     <%--style="font-family: 微软雅黑">回复</a></span>--%>

                </div>
                <div class="comment-inner">
                  <p>${m.message}</p>
                </div>
              </div>

              <!-- child -->



              <%--<ul class='children'>--%>
                <%--<li class="comment even alt depth-2" id="li-comment-2-1">--%>
                  <%--<div id="comment-2" class="comment-body clearfix">--%>
                    <%--<img alt='' src='http://0.gravatar.com/avatar/4f64c9f81bb0d4ee969aaf7b4a5a6f40?s=35&amp;d=&amp;r=G' class='avatar avatar-35 photo' height='35' width='35' />--%>
                    <%--<div class="comment-author vcard">Jhon</div>--%>
                    <%--<div class="comment-meta commentmetadata">--%>
                      <%--<span class="comment-date">1 hour ago  </span>--%>
                      <%--<span class="comment-reply-link-wrap"><a class='comment-reply-link' href='replytocom=24#respond' onclick='return addComment.moveForm("comment-2", "2", "respond", "432")'>Reply</a></span>--%>
                    <%--</div>--%>
                    <%--<div class="comment-inner">--%>
                      <%--<p>Pellentesque ornare sem lacinia quam venenatis vestibulum. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis.</p>--%>
                    <%--</div>--%>
                  <%--</div>--%>
                <%--</li>--%>


              <%--</ul>--%>
              <!-- ENDS child -->
            </li>

          </ol>
        </c:forEach>
        <!-- ENDS comments list -->


        <!-- Respond -->
        <div id="respond" style="font-family: Microsoft YaHei">

          <%--<div class="cancel-comment-reply"><a rel="nofollow" id="cancel-comment-reply-link" href="#respond" style="display:none;">Cancel reply</a></div>--%>
          <form action="./add" method="post" id="commentform">
            <h3 class="heading">访客留言</h3>
            <input type="text" name="username" id="author" value="" tabindex="1" />
            <label for="author">昵称</label><br/>



            <textarea name="message" id="comment"  tabindex="4"></textarea>

            <p><input name="submit" type="submit" id="submit" tabindex="5" value="提交" /></p>

            <%--<input type='hidden' name='comment_post_ID' value='' id='comment_post_ID' />--%>
            <%--<input type='hidden' name='comment_parent' id='comment_parent' value='0' />--%>
          </form>
        </div>
        <div class="clearfix"></div>
        <!-- ENDS Respond -->

      </article>

    </div>
    <!-- ENDS posts list -->

    <!-- sidebar -->


  </div>
</div>
<!-- ENDS MAIN -->




</body>

</html>