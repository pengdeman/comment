<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
    String path = request.getContextPath();
    String basePath =
            request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
                    + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0;"/>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>足迹</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/location.css" />
<link rel="stylesheet" type="text/css" href="css/locationlist.css" />
<script type="text/javascript" src="js/jquery-2.0.3.min.js"></script>
<script type="text/javascript" src="js/phone.js" ></script>
<script type="text/javascript" src="js/login.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>

<body>
<div style="display: none;">
<img src="image/zj.jpg">
</div>   
<div class="whole">
	<div class="zujiquan-title" style="margin-top: 50px;">Welcome to Footprint</div>
    <div class="coordinates-icon">
    	<div class="coordinates topAct">
        	<img src="image/coordinates.png" />
        </div>
        <div class="circle-1-1 circle-show-2"></div>
        <div class="circle-2-2 circle-show-1"></div>
        <div class="circle-3-3 circle-show"></div>
    </div>
</div>
<br>
<div style="text-align: center;">
<br>
<br>
<img src="image/tx.png"><br><br>
<b style="color: red; font-size: 16px;">✽ 请调整页面宽度小于800或者使用手机端访问(扫码或直接手机端访问网址www.pengyingjun.com) ✽</b>
</div>
</body>
</html>
