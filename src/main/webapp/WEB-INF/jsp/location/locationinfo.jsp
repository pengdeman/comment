<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<script type="text/javascript" src="https://api.map.baidu.com/api?v=2.0&ak=ga2vOgjKiex14wPRkTblnAHYIB2bWrTy"></script>
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
    	<form action="<%=basePath%>locationinfo" id="signup-form_id" method="post" enctype="multipart/form-data">
        	<div class="user-name common-div" style="height: 185px;">
            	<span class="eamil-icon common-icon">
                	<img src="image/xie.png" />
                </span>
                <textarea rows="10" cols="50" name="comment" id="comment" style="margin: 0px; height: 179px; width: 368px; font-size: 16px;"></textarea>
            </div>
            <div class="user-name common-div">
            	<span class="eamil-icon common-icon">
                	<img src="image/share.png" />
                </span>
                <div style="margin-top: 30px;">
                	<select id="selid" name="selname">
                		<option value="1">☞ 分享到足迹圈</option>
                		<option value="2">☞ 仅自己可见</option>
                	</select>
                </div>
            </div>
            <div class="user-name common-div">
            	<span class="eamil-icon common-icon" onclick="getlocattion()">
                	<img src="image/coordinates.png" style="height: 40px;" title="点我定位"/>
                </span>
                <!--  <input style="font-size: 16px;" type="text" name="adr" id="adr" value="" readonly="true"/> -->
				<select id="sele1" style="margin-top: 30px; max-width: 350px;" name="adr">
					<option value="">☞定位中☢...</option>
				</select>
                <input type="hidden" name="lng" id="lng" value=""/> 
                <input type="hidden" name="lat" id="lat" value=""/>        
            </div>
            <div class="user-name common-div">
            	<span class="eamil-icon common-icon">
                	<img src="image/pic.png" />
                </span>
                <input type="file" name="pic" value="" style="margin-top: 7%; font-size: 19px; color: transparent;"/>        
            </div>
            <div class="login-btn common-div" onclick="subform();">发布足迹</div>
        </form>
    </div>
</div>
<br><br>
<script type="text/javascript">
function fanhui(){
	history.go(-1);
}
function refresh(){
	window.location.href="<%=basePath%>jumpnew";
}
function subform() {
	if ($("#comment").val().length == 0) {
		alert("请填写文字分享下您的心情吧。");
		return;
	}
	
	if ($("#sele1").val() == "") {
		alert("请选择您的足迹👣地理位置。");
		return;
	}

	if ($("input[name='pic']").val().length == 0) {
		alert("请选择上传您要分享的照片。");
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
	getlocattion();
});

function getlocattion(){
	$("#sele1").html("");
	$("#sele1").html("<option value=''>☞定位中☢...</option>");
	var geolocation = new BMap.Geolocation();
	var geoc = new BMap.Geocoder();    
	geolocation.getCurrentPosition(function(r){
		if(this.getStatus() == BMAP_STATUS_SUCCESS){
			var pt = new BMap.Point(r.point.lng, r.point.lat);
			var dzs = "";
			var dzss = "";
			geoc.getLocation(pt, function(rs){
				var addComp = rs.addressComponents;
				$("#lng").val(r.point.lng);
				$("#lat").val(r.point.lat);
				dzs = addComp.province +"."+ addComp.city +"."+ addComp.district +".";
				dzss = addComp.province +"."+ addComp.city +"."+ addComp.district +"."+addComp.street;
/* 				if(addComp.street != ""){
					dzs = dzs + addComp.street+"•";
				} */
				//addComp.province +  +"•"+ addComp.streetNumber
			});    
			$.ajax({
				url:"https://api.map.baidu.com/place/v2/search?query=旅游景区&location="+r.point.lat+","+r.point.lng+"&radius=1000&page_size=20&output=json&ak=ga2vOgjKiex14wPRkTblnAHYIB2bWrTy",
				type:"GET",
				dataType: "JSONP",
				error:function(request){
					alert("获取失败！");
				},
				success:function(data){
					var selelist = "<option value=''>☞请选择位置（点击左侧图标数秒后重新定位）</option><option value='"+dzss+"'>☞"+dzss+"</option>";
					if(status == 0){
						$.each(data.results, function (i, item) {
							selelist = selelist + "<option value='"+dzs+""+item.name+"'>☞"+item.name+"</option>"
						});
					}else{
						selelist = selelist + dzs;
					}
					$("#sele1").html(selelist);
				}
		    });  
			
			$("#adr").val(dzs);
		}     
	},{enableHighAccuracy: true})
}
</script>

</body>
</html>
