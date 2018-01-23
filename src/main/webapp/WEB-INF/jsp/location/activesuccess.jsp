<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>账号激活成功！</title>
	<script src="js/baiducount.js"></script>
  </head>
  
  <body>
    <div style="margin-left: 40%;">
    	<div>
    		<img src="image/active.jpg">
    	</div>
    	<div>
    		<label>尊敬的用户，您的账号已激活，请<a href="<%=basePath%>location">点击登录</a>！</label>
    	</div>
    </div>
  </body>
</html>
