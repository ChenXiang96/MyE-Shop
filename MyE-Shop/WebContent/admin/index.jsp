<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta http-equiv="Pragma" content="no-cache"> 
<meta http-equiv="Cache-Control" content="no-cache"> 
<meta http-equiv="Expires" content="0"> 
<title>网上商城管理中心</title> 
<link href="${pageContext.request.contextPath }/css/login.css" type="text/css" rel="stylesheet"> 

</head> 
<body> 

<div class="login">
    <div class="message">Organic蔬菜商城-管理登录</div>
    <div id="darkbannerwrap"></div>
    <center><font color="red"><s:actionerror /></font></center>
    <form method="post" action="${pageContext.request.contextPath }/adminUser_login.action">
		<input name="action" value="login" type="hidden">
		<input name="username" placeholder="用户名" required="" type="text">
		<hr class="hr15">
		<input name="password" placeholder="密码" required="" type="password">
		<hr class="hr15">
		<input value="登录" style="width:100%;" type="submit" class="button"/>
		<hr class="hr20">
		<!-- 帮助 <a onClick="alert('请联系管理员')">忘记密码</a> -->
	</form>

	
</div>

<div class="copyright">Organic<a href="${pageContext.request.contextPath}/index.action"target="_blank">返回首页</a></div>

</body>
</html>