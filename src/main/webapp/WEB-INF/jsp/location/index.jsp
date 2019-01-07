<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<style type="text/css">
    body, html {width: 100%;height: 100%;margin:0;font-family:"微软雅黑";}
    #allmap{width:100%;height:100%;}
    p{margin-left:5px; font-size:14px;}
</style>
<script type="text/javascript" src="https://api.map.baidu.com/api?v=2.0&ak=ga2vOgjKiex14wPRkTblnAHYIB2bWrTy"></script>
<title>足迹</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="http://api.map.baidu.com/library/CurveLine/1.5/src/CurveLine.min.js"></script>
<script type="text/javascript" src="js/baiducount.js"></script>
</head>
<body>
<div style="display: none;">
<img src="image/zj.jpg">
</div>
<div style="height: 27%; background-color: black; display: block;" id="peopleinfo">
	<div style="width: 40%; height: 100%; float: left;">
		<img onclick="jumpmodifyinfo(${userId})" src="<%=basePath%>pic/slt${picUrl}" style="width: 80%; height: 80%; margin-top: 9%; margin-left: 8%;  -moz-border-radius: 10px;  
        -webkit-border-radius: 10px;  
        border-radius: 10px;">
	</div>
	<div style="width: 60%; height: 100%; float: right;">
		<table style="margin-top: 6%; color: white; width: 90%;">
		<tr>
			<td>昵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称</td>
			<td style="font-size: 10;">&nbsp;&nbsp;&nbsp;&nbsp;${userName }</td>
		</tr>
		<tr>
			<td>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱</td>
			<td style="font-size: 10;">&nbsp;&nbsp;&nbsp;&nbsp;${mail }</td>
		</tr>
		<tr>
			<td>等&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;级</td>
			<td style="font-size: 10;">&nbsp;&nbsp;&nbsp;&nbsp;${levelimg }&nbsp;&nbsp;${level }级</td>
		</tr>
		<tr>
			<td>登&nbsp;陆&nbsp;IP</td>
			<td style="font-size: 10;">&nbsp;&nbsp;&nbsp;&nbsp;${loginIp }</td>
		</tr>
		<tr>
			<td>登&nbsp;陆&nbsp;地</td>
			<td style="font-size: 10; width: 100%;">&nbsp;&nbsp;&nbsp;&nbsp;${loginAdr }</td>
		</tr>
		</table>
	</div>
</div>
	<marquee width="85%" behavior="scroll" direction="left" style="color: white; margin-top: 0.5%; float: left;">
		主页访客： ${sbinfo }
　　 </marquee>
	<a href="javascript:showhiden()" style="color: white; float: right; font-size: 16px;" id="syid">👆</a>
<div id="allmap" style="height: 73%"></div>
<input value="${login.id }" id="userid" type="hidden"/>

<script type="text/javascript" src="js/jquery-2.0.3.min.js"></script>
<script type="text/javascript">
//百度地图API功能
var map = new BMap.Map("allmap",{mapType:BMAP_HYBRID_MAP});    // 创建Map实例
map.centerAndZoom(new BMap.Point(116.404, 39.915), 14);  // 初始化地图,设置中心点坐标和地图级别
map.addControl(new BMap.MapTypeControl());   //添加地图类型控件
map.setCurrentCity("北京");          // 设置地图显示的城市 此项是必须设置的
map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
map.setDefaultCursor("url('bird.cur')");   //设置地图默认的鼠标指针样式
map.enableInertialDragging();
map.enableContinuousZoom();

var size = new BMap.Size(80, 18);

//添加带有定位的导航控件
var navigationControl = new BMap.NavigationControl({
  // 靠左上角位置
  anchor: BMAP_ANCHOR_TOP_LEFT,
  // LARGE类型
  type: BMAP_NAVIGATION_CONTROL_LARGE,
  // 启用显示定位
  enableGeolocation: true
});
map.addControl(navigationControl);
// 添加定位控件
var geolocationControl = new BMap.GeolocationControl();
geolocationControl.addEventListener("locationSuccess", function(e){
  // 定位成功事件
  var address = '';
  address += e.addressComponent.province;
  address += e.addressComponent.city;
  address += e.addressComponent.district;
  address += e.addressComponent.street;
  address += e.addressComponent.streetNumber;
  alert("当前定位地址为：" + address);
});
geolocationControl.addEventListener("locationError",function(e){
  // 定位失败事件
  alert(e.message);
});
map.addControl(geolocationControl);


//定义一个控件类,即function
function ZoomControl4(){
	// 默认停靠位置和偏移量
	this.defaultAnchor = BMAP_ANCHOR_BOTTOM_RIGHT;
	this.defaultOffset = new BMap.Size(10, 170);
}

function ZoomControl(){
	// 默认停靠位置和偏移量
	this.defaultAnchor = BMAP_ANCHOR_BOTTOM_RIGHT;
	this.defaultOffset = new BMap.Size(10, 135);
}

function ZoomControl1(){
	// 默认停靠位置和偏移量
	this.defaultAnchor = BMAP_ANCHOR_BOTTOM_RIGHT;
	this.defaultOffset = new BMap.Size(10, 100);
}

function ZoomControl2(){
	// 默认停靠位置和偏移量
	this.defaultAnchor = BMAP_ANCHOR_BOTTOM_RIGHT;
	this.defaultOffset = new BMap.Size(10, 65);
}

function ZoomControl3(){
	// 默认停靠位置和偏移量
	this.defaultAnchor = BMAP_ANCHOR_BOTTOM_RIGHT;
	this.defaultOffset = new BMap.Size(10, 30);
}
// 通过JavaScript的prototype属性继承于BMap.Control
ZoomControl.prototype = new BMap.Control();
ZoomControl1.prototype = new BMap.Control();
ZoomControl2.prototype = new BMap.Control();
ZoomControl3.prototype = new BMap.Control();
ZoomControl4.prototype = new BMap.Control();
//----------------------------------------------------------------

//----------------------------------------------------------------

ZoomControl4.prototype.initialize = function(map){
var a4=document.createElement("a"); 
a4.innerHTML="⬇️  收 起️ ";  
a4.style.cursor = "pointer";
a4.style.border = "1px solid gray";
a4.style.backgroundColor = "#428bca";
a4.style.padding = "5px";
a4.style.borderRadius = "10px";
a4.style.color = "white";
a4.onclick = function(e){
	
};
map.getContainer().appendChild(a4);
//将DOM元素返回
return a4;
}
//创建控件
var myZoomCtrl4 = new ZoomControl4();
// 添加到地图当中
map.addControl(myZoomCtrl4);

//----------------------------------------------------------------

// 自定义控件必须实现自己的initialize方法,并且将控件的DOM元素返回
// 在本方法中创建个div元素作为控件的容器,并将其添加到地图容器中
ZoomControl.prototype.initialize = function(map){
// 创建一个DOM元素
var a=document.createElement("a");  
//a.href="javascript:jumpnew()";  
a.innerHTML="足 迹 圈 子";  
a.style.cursor = "pointer";
a.style.border = "1px solid gray";
a.style.backgroundColor = "#428bca";
a.style.padding = "5px";
a.style.borderRadius = "10px";
a.style.color = "white";
//var img=new Image();  
//img.src="http://img.baidu.com/img/post-jg.gif";  
//img.style.border="none";  
//a.appendChild(img)  

// 绑定事件,点击一次放大两级
a.onclick = function(e){
//map.setZoom(map.getZoom() + 2);
	window.location.href="<%=basePath%>jumppeople"; 
};
// 添加DOM元素到地图中
map.getContainer().appendChild(a);
// 将DOM元素返回
return a;
}
//创建控件
var myZoomCtrl = new ZoomControl();
// 添加到地图当中
map.addControl(myZoomCtrl);

//----------------------------------------------------------------

ZoomControl1.prototype.initialize = function(map){
var a1=document.createElement("a"); 
a1.innerHTML="发 布 足 迹";  
a1.style.cursor = "pointer";
a1.style.border = "1px solid gray";
a1.style.backgroundColor = "#428bca";
a1.style.padding = "5px";
a1.style.borderRadius = "10px";
a1.style.color = "white";
a1.onclick = function(e){
	window.location.href="<%=basePath%>jumpnew"; 
}
map.getContainer().appendChild(a1);
//将DOM元素返回
return a1;
}
//创建控件
var myZoomCtrl1 = new ZoomControl1();
// 添加到地图当中
map.addControl(myZoomCtrl1);

//----------------------------------------------------------------
ZoomControl2.prototype.initialize = function(map){
	var a2=document.createElement("a");  
	a2.innerHTML="全 球 定 位";  
	a2.style.cursor = "pointer";
	a2.style.border = "1px solid gray";
	a2.style.backgroundColor = "#428bca";
	a2.style.padding = "5px";
	a2.style.borderRadius = "10px";
	a2.style.color = "white";
	a2.onclick = function(e){
		window.location.href="<%=basePath%>globallocation"; 
	};
	map.getContainer().appendChild(a2);
	//将DOM元素返回
	return a2;
	}
	//创建控件
	var myZoomCtrl2 = new ZoomControl2();
	// 添加到地图当中
	map.addControl(myZoomCtrl2);

//----------------------------------------------------------------
	
//----------------------------------------------------------------
ZoomControl3.prototype.initialize = function(map){
	var a3=document.createElement("a");  
	a3.innerHTML="退 出 登 陆";  
	a3.style.cursor = "pointer";
	a3.style.border = "1px solid gray";
	a3.style.backgroundColor = "#428bca";
	a3.style.padding = "5px";
	a3.style.borderRadius = "10px";
	a3.style.color = "white";
	a3.onclick = function(e){
		window.location.href="<%=basePath%>location"; 
	}
	map.getContainer().appendChild(a3);
	//将DOM元素返回
	return a3;
	}
	//创建控件
	var myZoomCtrl3 = new ZoomControl3();
	// 添加到地图当中
	map.addControl(myZoomCtrl3);

//----------------------------------------------------------------
	
var cc = "";
var userid = $("#userid").val();
$.ajax({
	cache:true,
	type:"POST",
	url:"<%=basePath%>getpoint",
	data:{userid:userid},
	async:false,
	success:function(data){
		var points = new Array(); 
		var jsonObj=eval("("+data+")");  
		$.each(jsonObj, function (i, item) {
			var point = new BMap.Point(item.lng, item.lat);
			points.push(point);
			
			
			var sContent =
				"<img style='float:right;margin:4px' src='<%=basePath%>pic/slt"+item.picurl+"' width='250' height='154'/>" + 
				"<p style='margin-left: -6%;line-height:1.5;font-size:8px;text-indent:2em;color:blue;'>签到地址："+item.location+"</p><br>" +
				"<p style='margin:0;line-height:1.5;font-size:13px;text-indent:2em'>"+item.comment+"</p><br>&nbsp;发表时间：" + item.creTime +
				"&nbsp;&nbsp;<input type='button' style='border-radius:25px; color:red; background-color:black; padding: 1px;' value='删除' onclick='deletepoint("+item.id+")'/></div>";
			
//			var myIcon = new BMap.Icon("http://developer.baidu.com/map/jsdemo/img/fox.gif", new BMap.Size(300,157));
//			var marker = new BMap.Marker(point,{icon:myIcon});  // 创建标注
			var marker = new BMap.Marker(point);  // 创建标注
			//设置窗口高度和宽度
			var fourOpts = { 
			width:256
			} 
			var infoWindow = new BMap.InfoWindow(sContent,fourOpts);  // 创建信息窗口对象
			map.centerAndZoom(point, 15);
			map.addOverlay(marker);               // 将标注添加到地图中
			marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
			map.centerAndZoom(point, 10);
			marker.addEventListener("click", function(){
				   this.openInfoWindow(infoWindow);
				   //图片加载完毕重绘infowindow
				   //document.getElementById('imgDemo').onload = function (){
					//   infoWindow.redraw();   //防止在网速较慢，图片未加载时，生成的信息框高度比图片的总高度小，导致图片部分被隐藏
				   //}
			});
		});
		var curve = new BMapLib.CurveLine(points, {strokeColor:"blue", strokeWeight:3, strokeOpacity:0.5}); //创建弧线对象
		map.addOverlay(curve); //添加到地图中
//		curve.enableEditing(); //开启编辑功能
	}
});


function deletepoint(id){
	if(confirm("真的要删除这条足迹分享吗?")){
		window.location.href="<%=basePath%>deletepoint?id="+id;
	}
}

function showhiden(){
	if($("#peopleinfo").css("display")=="none"){
		$("#peopleinfo").show();
		$("#syid").text('👆');
		$("#allmap").css("height", "70%");
	}else{
		$("#peopleinfo").hide();
		$("#syid").text('👇');
		$("#allmap").css("height", "100%");
	}
}

function jumpmodifyinfo(userId){
	window.location.href="<%=basePath%>jumpmodifyinfo?userId="+userId;
}
</script>

</body>
</html>