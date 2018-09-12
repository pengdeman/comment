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
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ga2vOgjKiex14wPRkTblnAHYIB2bWrTy"></script>
<title>测一下你附近有多少人暗恋你！</title>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/baiducount.js"></script>
</head>
<body>
	<div style="text-align: center; margin-top: 20%">
		<img style="width: 90%; height: 80%;" alt="" src="js/33.jpg"><br>
	</div>
</body>
</html>
