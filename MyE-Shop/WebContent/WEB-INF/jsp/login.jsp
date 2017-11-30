<%@ page language="java"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>


<!DOCTYPE html>
<html>
  <head>
    <title>Home</title>
    <meta charset="utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="${pageContext.request.contextPath}/css/647be82565184316a7ba9bc638b40a97.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/1025b57c3b8b4b63a93efd3b6bed0d58.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css" />
    <script>
    function checkForm(){
 	   //校验用户名
 	   //获得用户名文本框中的值
 	   var username = document.getElementById("username").value;
 	   if(username == null || username == ''){
 		   alert("用户名不能为空！");
 		   return false;//加了return false表单就不提交了
 	   }
 	   //校验密码
 	   //获得密码框中的值
 	   var password = document.getElementById("password").value;
 	   if(password == null || password == ''){
 		   alert("密码不能为空！");
 		   return false;
 	   }
    }

    </script>
  </head>
  <body class="animsition">
    <div class="login" id="page">
            <%@ include file="menu.jsp" %>
            
      <section class="sub-header shop-layout-1">
        <img class="rellax bg-overlay" src="${pageContext.request.contextPath}/picture/011.jpg" alt="">
        <div class="overlay-call-to-action"></div>
        <h3 class="heading-style-3">My Account</h3>
      </section>
      <section class="boxed-sm">
        <div class="container">
          <div class="login-wrapper">
            <div class="row">
              <h3>Log In</h3>
              <div><s:actionerror /></div>
              <form  id="loginForm" action="${ pageContext.request.contextPath }/user_login.action" method="post" novalidate="novalidate" onsubmit="return checkForm();">
                
               <div class="form-group organic-form-2">
                 <label>用户名</label>
                 <input type="text" id="username" name="username" class="form-control" maxlength="20">
                </div>
                
                <div class="form-group organic-form-2">
                  <label>密码</label>
                 <input class="form-control" type="Password" id="password" name="password" maxlength="20" autocomplete="off">
                </div>
                <div class="form-group remember-me">
                  <div class="checkbox pull-left">
                    <label>
                      <input type="checkbox"> Remember me
                    </label>
                  </div>
                  <a class="pull-right" href="#">Lost your password?</a>
                </div>
                <div class="form-group footer-form">
                  <button class="btn btn-brand pill" type="submit">SUBMIT</button>
                </div>
              </form>
              
            </div>
          </div>
        </div>
      </section>
    </div>
   
      <%@ include file="footer.jsp" %>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/function-check-viewport.js"></script>
    <script src="js/slick.min.js"></script>
    <script src="js/select2.full.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/jquery.mmenu.all.min.js"></script>
    <script src="js/rellax.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/bootstrap-notify.min.js"></script>
    <script src="js/bootstrap-slider.js"></script>
    <script src="js/in-view.min.js"></script>
    <script src="js/countup.js"></script>
    <script src="js/animsition.min.js"></script>
    <script src="js/global.js"></script>
    <script src="js/config-mm-menu.js"></script>
    <script src="js/config-set-bg-blog-thumb.js"></script>
    <script src="js/config-accrodion.js">


    </script>
  </body>
</html>

