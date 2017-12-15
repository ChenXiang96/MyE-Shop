<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
  <head>
    <title>editOK</title>
    <meta charset="utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="css/647be82565184316a7ba9bc638b40a97.css" rel="stylesheet" />
    <link href="css/1025b57c3b8b4b63a93efd3b6bed0d58.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/main.css" />
  </head>
  <body class="animsition">
    <div class="faq" id="page">
     
         <%@ include file="menu.jsp" %>
      <section class="sub-header shop-layout-1">
        <img class="rellax bg-overlay" src="picture/xcc.jpg" alt="">
        <div class="overlay-call-to-action"></div>
        <h3 class="heading-style-3">您的资料</h3>
      </section>
      <section class="boxed-sm">
        <div class="container">
          <div class="faq-wrapper">
            <div class="row">
              <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                <div class="panel panel-default">
                  <div class="panel-heading" id="headingOne" role="tab">
               <form id="registerForm" action="${pageContext.request.contextPath}/user_update.action" method="post"  >
               <input type="hidden" name="uid" value="<s:property value="model.uid"/>" />
			   <input type="hidden" name="state" value="<s:property value="model.state"/>" />
			   <input type="hidden" name="code" value="<s:property value="model.code"/>" />
                <div class="form-group organic-form-2">
                  <label><font color="red">*</font> 用户名</label>
                  <input type="text" id="username" name="username" value="<s:property value="model.username"/>" class="form-control" maxlength="20" onblur="checkUsername()">
                  <span id="span1"></span>
                </div>
                 <div class="form-group organic-form-2">
                   <label><font color="red">*</font>真实姓名</label>
                  <input type="text"  name="name"  value="<s:property value="model.name"/>" class="form-control" maxlength="20">
                  <span><font color="red"><s:fielderror fieldName="name"/></font></span>
                </div>
                <div class="form-group organic-form-2">
                 <label><font color="red">*</font> 邮箱</label>
                  <input class="form-control" type="Email" id="email" name="email" value="<s:property value="model.email"/>" >
                  <span><font color="red"><s:fielderror fieldName="email"/></font></span>
                </div>
                <div class="form-group organic-form-2">
                   <label><font color="red">*</font> 密码</label>
                  <input class="form-control" type="Password" id="password" name="password"  value="<s:property value="model.password"/>"  maxlength="20" autocomplete="off">
                  <span><font color="red"><s:fielderror fieldName="password"/></font></span>
                </div>
                
                
                  <div class="form-group organic-form-2">
                    <label><font color="red">*</font>电话</label>
                  <input type="text"  name="phone" value="<s:property value="model.phone"/>" class="form-control" maxlength="20">
                  <span><font color="red"><s:fielderror fieldName="phone"/></font></span>
                </div>
                
                  <div class="form-group organic-form-2">
                   <label><font color="red">*</font>地址</label>
                  <input type="text"  name="addr" value="<s:property value="model.addr"/>" class="form-control" maxlength="20">
                  <span><font color="red"><s:fielderror fieldName="addr"/></font></span>
                </div>
                           <div>
						<button type="submit" id="userAction_save_do_submit" value="确定" class="button_ok">
							&#30830;&#23450;
						</button>
			               </div>

                        
                
               </form>
       </div>
                  
                 
       </div>
                
               
               
                
               
               
              
              </div>
              <!-- panel-group-->
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
