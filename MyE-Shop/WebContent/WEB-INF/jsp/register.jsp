<%@ page language="java" contentType="text/html; charset=UTF-8"
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
    	   //校验确认密码
    	   var repassword = document.getElementById("repassword").value;
    	   if(repassword != password){
    		   alert("两次输入密码不一致！");
    	   }
       }
       function checkUsername(){
       // 传统ajax校验
       //获得文本框的值
       var username = document.getElementById("username").value;
       //1.创建异步交互的对象
       var xhr = createXmlHttp();
       //2.设置监听
       xhr.onreadystatechange = function(){
     		if(xhr.readyState == 4){
     			if(xhr.status == 200){
     				document.getElementById("span1").innerHTML = xhr.responseText;
     			}
     		}
     	} 
       //3.打开连接
       xhr.open("GET","${pageContext.request.contextPath}/user_findByName.action?time="+new Date().getTime()+"&username="+username,true);//参数为请求方式，请求路径(action调service，service调dao查询)，异步
       //4.发送	 
       xhr.send(null);
       
      }
       
       
       function createXmlHttp(){
      	 var xmlHttp;
      	 try{//Firefox,Opera 8.0+,Safari
      		 xmlHttp=new XMLHttpRequest();
      	 }
      	 catch(e){
      		 try{// Internet Explorer
      			 xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
      		 }
      		 catch(e){
      			 try{
      				 xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
      			 }
      			 catch(e){}
      		     }
      	 }
      	 return xmlHttp;
       }
       
       function change(){
      	 var img1 = document.getElementById("checkImg");
      	 img1.src = "${pageContext.request.contextPath}/checkImg.action?"+new Date().getTime();
       }
    
    </script>
     
     
</head>
  <body class="animsition">
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
              <h3>Register</h3>
              <form id="registerForm"  action="${ pageContext.request.contextPath }/user_regist.action" method="post" novalidate="novalidate" onsubmit="return checkForm();">
                <div class="form-group organic-form-2">
                  <label><font color="red">*</font> 用户名</label>
                  <input type="text" id="username" name="username" class="form-control" maxlength="20" onblur="checkUsername()">
                  <span id="span1"></span>
                </div>
                <div class="form-group organic-form-2">
                 <label><font color="red">*</font> 邮箱</label>
                  <input class="form-control" type="Email" id="email" name="email">
                  <span><font color="red"><s:fielderror fieldName="email"/></font></span>
                </div>
                <div class="form-group organic-form-2">
                   <label><font color="red">*</font> 密码</label>
                  <input class="form-control" type="Password" id="password" name="password" maxlength="20" autocomplete="off">
                  <span><font color="red"><s:fielderror fieldName="password"/></font></span>
                </div>
                <div class="form-group organic-form-2">
                    <label><font color="red">*</font> 确认密码</label>
                  <input class="form-control" type="Password"id="repassword" name="repassword" maxlength="20" autocomplete="off">
                </div>
                
                <div class="form-group organic-form-2">
                   <label><font color="red">*</font>真实姓名</label>
                  <input type="text"  name="name" class="form-control" maxlength="20">
                  <span><font color="red"><s:fielderror fieldName="name"/></font></span>
                </div>
                
                  <div class="form-group organic-form-2">
                    <label><font color="red">*</font>电话</label>
                  <input type="text"  name="phone" class="form-control" maxlength="20">
                  <span><font color="red"><s:fielderror fieldName="phone"/></font></span>
                </div>
                
                  <div class="form-group organic-form-2">
                   <label><font color="red">*</font>地址</label>
                  <input type="text"  name="addr" class="form-control" maxlength="20">
                  <span><font color="red"><s:fielderror fieldName="addr"/></font></span>
                </div>
                
                 <div class="form-group organic-form-2">
                   <label><font color="red">*</font>验证码</label>
                  <input type="text" id="checkcode" name="checkcode" class="form-control" maxlength="4" autocomplete="off"><img id="checkImg" class="captchaImage" src="${pageContext.request.contextPath}/checkImg.action" onclick="change()" title="点击更换验证码">
                  
                </div>
               
                 <font color="red"><s:actionerror/></font>
              
                
                <div class="form-group remember-me">
                  <div class="checkbox pull-left">
                    <label>
                      <input type="checkbox"> Privacy Policy Agreement?
                    </label>
                  </div>
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
