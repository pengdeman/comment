<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0;" />
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
	src="https://api.map.baidu.com/api?v=2.0&ak=ga2vOgjKiex14wPRkTblnAHYIB2bWrTy"></script>
<title>足迹</title>
<link rel="stylesheet" type="text/css"
	href="layer/mobile/need/layer.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/location.css" />
<link rel="stylesheet" type="text/css" href="css/locationlist.css" />
<script type="text/javascript" src="js/jquery-2.0.3.min.js"></script>
<script type="text/javascript" src="js/phone.js"></script>
<script type="text/javascript" src="layer/mobile/layer.js"></script>
<script type="text/javascript" src="js/login.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/baiducount.js"></script>
</head>

<body>
	<div style="display: none;">
		<img src="image/zj.jpg">
	</div>
	<div id="scroll" style="border-color: #3cfed3;">
		<div id="toTop" class="scrollItem">回到顶部</div>
		<div id="toBottom" class="scrollItem">回到底部</div>
	</div>
	<div class="whole">
		<div class="zujiquan-index" onclick="fanhui();"
			style="font-size: 60px;">☜</div>
		<div class="zujiquan-index"
			style="width: 20%; font-size: 20px; margin-left: 41%; margin-top: -102px;">足迹圈</div>
		<c:if test="${userId != ''}">
			<div class="zujiquan-index"
				style="float: right; margin-top: -102px; color: white;"
				onclick="refresh(${footprintId});">✽</div>
		</c:if>
		<c:if test="${userId == ''}">
			<div class="zujiquan-index"
				style="float: right; margin-top: -98px; color: white;"
				onclick="locationss()">
				<img src="image/txr.png" style="width: 35px; margin-top: 5px;" />
			</div>
		</c:if>
		<HR style="margin-top: -30px;">
		<div class="zujiquan-title" style="margin-top: -50px;">Welcome
			to Footprint</div>
		<div class="coordinates-icon">
			<div class="coordinates topAct">
				<img src="image/coordinates.png" />
			</div>
			<div class="circle-1-1 circle-show-2"></div>
			<div class="circle-2-2 circle-show-1"></div>
			<div class="circle-3-3 circle-show"></div>
		</div>
		<div id="zwcnr" style="margin-top: -50px;">
			<!-- 最外层内容 -->
			<c:forEach items="${flist}" var="item" varStatus="v">
				<!-- 足迹记录循环 -->
				<div id="zjpl${item.id }${v.index }">
					<!-- 每条足迹记录信息 -->
					<div class="login-form" id="loginform"
						style="width: 99%; border: solid 2px; color: white;">
						<!-- 登录form -->
						<div class="common-div" style="height: auto; width: auto;">
							<div
								style="text-align: center; margin-top: -16.5px; margin-bottom: -16.5px; margin-left: -2px; margin-right: -2px;">
								<br> <img onclick="fz(${item.id })" src="pic/slt${item.picurl }"
									style="width: 100%; height: 500px;" /><br>
							</div>
							<br>
							<div style="color: white; border: solid 2px;">
								<div style="margin-bottom: 3px; margin-top: 6px;"
									onclick="showsomebodyindex(${item.userId })">
									<img alt="" src="pic/slt${item.upicurl }"
										style="width: 50px; height: 50px; border-radius: 50%;">
								</div>
								<p style="padding: 3px">
									<a style="color: #66ffff;"
										href="javascript:showsomebodyindex(${item.userId })">${item.creName }</a>&nbsp;&nbsp;
									<fmt:parseDate value="${item.creTime }"
										pattern="yyyy-MM-dd HH:mm:ss" var="receiveDate"></fmt:parseDate>
									<fmt:formatDate value="${receiveDate}"
										pattern="yyyy年MM月dd日 HH:mm:ss"></fmt:formatDate>
									发布了：<br>
									<br>
								<div onclick="fz(${item.id })"
									style="max-height: 120px; overflow: hidden;">
									${item.comment }</div>
								<br> <br> <img src="image/coordinates.png"
									style="height: 25px;" /><label data-toggle="modal"
									data-target="#dituModal" style="color: red;"
									onclick="mm(${item.lng }, ${item.lat }, '${item.location }')">${item.location }</label>
								</p>
							</div>
						</div>
						<div style="margin-top: -31px; float: right; font-size: 15;">
							<c:if test="${item.userId == userId || userId == 4}">
								<a href="javascript:deletepoint(${item.id }, ${v.index })"
									style="margin-right: 5px; color: white; font-size: 20px;"><img
									src="image/sc.png" style="height: 20px;" /></a>
							</c:if>
							&nbsp;&nbsp;&nbsp;&nbsp;<a
								style="margin-right: 5px; color: white; font-size: 20px;"
								href="javascript:fz(${item.id })"><img src="image/zf.png"
								style="height: 20px;" />&nbsp;&nbsp;${item.zfNum }</a> &nbsp;&nbsp;<a
								style="margin-right: 5px; color: white; font-size: 20px;"
								href="javascript:fz(${item.id })"><img src="image/pl.png"
								style="height: 20px;" />&nbsp;&nbsp;${item.sayNum }</a> &nbsp;&nbsp;<a
								id="aid${v.index }"
								style="margin-right: 5px; color: white; font-size: 20px;"
								href="javascript:zan(${item.id }, ${v.index })"> <c:if
									test="${item.iszan == 1 }">
									<img src="image/yz.png" style="height: 20px;" />
								</c:if> <c:if test="${item.iszan != 1 }">
									<img src="image/z.png" style="height: 20px;" />
								</c:if> &nbsp;&nbsp;${item.clickNum }
							</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<!-- 地图模态框（Modal） -->
		<div class="modal fade" id="dituModal" tabindex="-1" role="dialog"
			aria-labelledby="dituModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-body" id="moadlimg">
						<div id="allmap" style="width: 100%; height: 80%" id="mapid"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>
	</div>
	<br>
	<div style="text-align: center;">
		<input class="zujiquan-more" onclick="getpeople()"
			value="☢ Load More ☢" type="button" id="xiayige">
	</div>
	<br>
	<script type="text/javascript">
    var system ={};  
    var p = navigator.platform;       
    system.win = p.indexOf("Win") == 0;  
    system.mac = p.indexOf("Mac") == 0;  
    system.x11 = (p == "X11") || (p.indexOf("Linux") == 0); 
    if(system.win||system.mac||system.xll){//如果是电脑        
        window.location.href="<%=basePath%>jjuummpp";  
    }else{  //如果是手机        
    } 
</script>
	<script type="text/javascript">
var windowHeight = parseInt($("body").css("height" ))+5000000;//整个页面的高度
$( function () {
    var speed = 1000;//自定义滚动速度
    //回到顶部
    $( "#toTop").click( function () {
        $( "html,body").animate({ "scrollTop" : 0 }, speed);
        });
    //回到底部
    $( "#toBottom").click(function () {
        $( "html,body").animate({ "scrollTop" : windowHeight }, speed);
    });
});
var beginNum = 0;
var endNum = 10;

function getpeople(){
	layer.open({
		type: 2
		,content: '读取中...'
		,time: 4
	 });
	beginNum = beginNum + 10;
	$.ajax({
		cache:true,
		type:"POST",
		url:"<%=basePath%>getpeople",
		data:{beginNum: beginNum, endNum: endNum},
		async:false,
		error:function(request){
			beginNum = beginNum - 10;
			alert("查询失败！");
		},
		success:function(data){
			var comment = "";
			var jsonObj=eval("("+data+")");
			if(jsonObj.length < 10){
				$("#xiayige").val("别点我，没数据了😢");
			}
			if(jsonObj.length == 0){
				$("#xiayige").val("别点我，没数据了😢");
			}else{
				$.each(jsonObj, function (i, item) {
					comment += "<div id='zjpl"+item.id+beginNum+i+"'><div class='login-form' id='loginform' style='width: 99%; border: solid 2px;color: white;'>";
					comment += "<div class='common-div' style='height: auto; width: auto;'>";
					comment += "<div style='text-align: center; margin-top: -16.5px; margin-bottom: -16.5px; margin-left: -2px; margin-right: -2px;'><br>";
					comment += "<img onclick='fz("+item.id+")' src='pic/slt"+item.picurl+"' style='width: 100%; height: 500px;'/><br></div><br>";
					comment += "<div style='color: white; border: solid 2px;'><div style='margin-bottom: 3px; margin-top: 3px;' onclick='showsomebodyindex("+item.userId+")'>";
					comment += "<img src='pic/slt"+item.upicurl+"' style='width: 50px; height: 50px; border-radius: 50%;'></div>";
					comment += "<p style='padding: 3px'><a style='color: #66ffff;'  href='javascript:showsomebodyindex("+item.userId+")'>"+item.creName+"</a>&nbsp;&nbsp;";
					
					var t = item.creTime.substring(0,19);
					t = t.replace('-', '年');
					t = t.replace('-', '月');
					var t2 = t;
					t2 = t2.substring(10,19);
					t = t.substring(0,10);
					t = t+"日"+t2;
					
					comment += t+" 发布了：<br><br>"+item.comment+"<br><br>";
					comment += "<img src='image/coordinates.png' style='height: 25px;'/><label data-toggle='modal' data-target='#dituModal' style='color: red;' onclick='mm("+item.lng+", "+item.lat+", \""+item.location+"\")'>"+item.location+"</label></p></div></div>";
					comment += "<div style='margin-top: -31px; float: right; font-size: 15'>";
					comment += "<c:if test='${item.userId == userId || userId == 4}'>";
					comment += "<a href='javascript:deletepoint("+item.id+", "+beginNum+i+")' style='margin-right: 5px; color: white; font-size: 20px;'><img src='image/sc.png' style='height: 20px;'/></a></c:if>";
					comment += "&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:fz("+item.id+")' style='margin-right: 5px; color: white; font-size: 20px;'><img src='image/zf.png' style='height: 20px;'/>&nbsp;&nbsp;"+item.zfNum+"</a>";
					comment += "&nbsp;&nbsp;<a  href='javascript:fz("+item.id+")' style='margin-right: 5px; color: white; font-size: 20px;'><img src='image/pl.png' style='height: 20px;'/>&nbsp;&nbsp;"+item.sayNum+"</a>";
					comment += "&nbsp;&nbsp;<a id='aid"+beginNum+i+"' style='margin-right: 5px; color: white; font-size: 20px;' href='javascript:zan("+item.id+", "+beginNum+i+")'>";
					if(item.iszan == 1){
						comment += "<img src='image/yz.png' style='height: 20px;'/>";
					}else if(item.iszan != 1){
						comment += "<img src='image/z.png' style='height: 20px;'/>";
					}
                    comment += "&nbsp;&nbsp;"+item.clickNum+"</a>";
					comment += "</div></div></div>";
				});
				$("#zwcnr").append(comment);
			}
		}
	});
}

function fz(footprintId){
	window.location.href="<%=basePath%>gotolocationdetails?footprintId="+footprintId;
}
/**
 * 足迹圈足迹列表删除
 */
function deletepoint(id, zjplindex){
	if(confirm("真的要删除这条足迹分享吗?")){
		$.ajax({
			cache:true,
			type:"POST",
			url:"<%=basePath%>deletezj",
			data:{id: id},
			async:false,
			error:function(request){
				alert("删除失败！");
			},
			success:function(data){
				$("#zjpl"+id+zjplindex).empty();
				var jsonObj=eval("("+data+")");
				alert(jsonObj.mess);
			}
	});
	}
}

function sub(){
	$("#savereply-form_id").submit();
}

function zan(id, ad){
	var aid = "aid"+ad;
	$.ajax({
		cache:true,
		type:"POST",
		url:"<%=basePath%>zan",
		data:{id: id},
		async:false,
		error:function(request){
			alert("Connection error");
		},
		success:function(data){
			var jsonObj=eval("("+data+")");
			if(jsonObj.num == 10000000){
				alert("您已点过赞了！");
			}else if(jsonObj.num == 20000000){
				alert("请您先登录再点赞！");
			}else{
				document.getElementById(aid).innerHTML = "<img src='image/yz.png' style='height: 20px;'/>&nbsp;&nbsp;"+jsonObj.num;
				alert("点赞成功！");
			}
		}
});
}



function mm(lng, lat, location){
	$("#allmap").show();
	setTimeout(function(){chakanditu(lng, lat, location);},200);
}
function chakanditu(lng, lat, location){
	var map = new BMap.Map("allmap");    // 创建Map实例;
	map.clearOverlays(); 
	map.addControl(new BMap.MapTypeControl());   //添加地图类型控件
	map.setCurrentCity("北京");          // 设置地图显示的城市 此项是必须设置的
	map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
	
	var point = new BMap.Point(lng, lat);
	var sContent =
		"<p style='margin-left: -6%;line-height:1.5;font-size:8px;text-indent:2em;color:blue;'>签到地址："+location+"</p><br>" +
		"</div>";
	var marker = new BMap.Marker(point);  // 创建标注
	var opts = {
			  height: 30,     // 信息窗口高度
			}
	var infoWindow = new BMap.InfoWindow(sContent, opts);  // 创建信息窗口对象
	map.addOverlay(marker);     
	// 将标注添加到地图中
	//var point2 = new BMap.Point(lng-0.01, lat+0.008);
	map.centerAndZoom(point, 16);
	marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
	marker.addEventListener("click", function(){
		   this.openInfoWindow(infoWindow);
	});
}

function showsomebodyindex(userId){
	window.location.href="<%=basePath%>somebodyindexs?userId="+userId;
}

function fanhui(){
	window.location.href="<%=basePath%>indexs";
}

function locationss(){
	window.location.href="<%=basePath%>location";
}

function refresh(){
	window.location.href="<%=basePath%>jumppeople";
}
function subform() {
	if ($("#comment").val().length == 0) {
		alert("请填写文字分享下你的心情吧。");
		return;
	}
	
	if ($("#adr").val() == "") {
		alert("请点击定位图标定位，定位需几秒钟时间。");
		return;
	}

	if ($("input[name='pic']").val().length == 0) {
		alert("请选择上传照片。");
		return;
	}
	layer.open({
		type: 2
		,content: '提交中...'
		,time: 5
	 });
	$("#signup-form_id").submit();
}

$(function() {
	messge = '${messge}';
	if(messge != ''){
		alert(messge);
	}
	$("signin-form_id").bind("keypress", function(e) {
		if (e.keyCode == 13) {
			subform();
		}
	});
});

function getlocattion(){
	var geolocation = new BMap.Geolocation();
	var geoc = new BMap.Geocoder();    
	geolocation.getCurrentPosition(function(r){
		if(this.getStatus() == BMAP_STATUS_SUCCESS){
			var pt = new BMap.Point(r.point.lng, r.point.lat);
			geoc.getLocation(pt, function(rs){
				var addComp = rs.addressComponents;
				$("#lng").val(r.point.lng);
				$("#lat").val(r.point.lat);
				$("#adr").val(addComp.province + addComp.city + addComp.district + addComp.street + addComp.streetNumber);
			});    
<%--  			$.ajax({
				cache:true,
				type:"POST",
				url:"<%=basePath%>wz/wzinsert",
				data:{lng:r.point.lng, lat:r.point.lat},
				async:false
		    }); --%> 
		}     
	},{enableHighAccuracy: true})
}

</script>

</body>
</html>
