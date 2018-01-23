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
    	<form action="<%=basePath%>modifyinfo" id="signup-form_id" method="post" enctype="multipart/form-data">
        	<div class="user-name common-div">
            	<span class="eamil-icon common-icon">
                	<img src="image/txs.png" />
                </span>
                <input name="signup_name" value="${userName }" placeholder="输入您的昵称" />
                <input name="userId" value="${userId }" type="hidden" id="userId"/>        
            </div>
            <div class="user-name common-div">
            	<span class="eamil-icon common-icon">
                	<img src="image/pic.png" />
                </span>
                <input type="file" name="pic" value="" placeholder="上传您的头像" title="上传你的头像" style="margin-top: 7%; font-size: 19px;"/>        
            </div>
            <div class="login-btn common-div" onclick="subform();">确认修改</div>
        </form>
    </div>
</div>
<br><br>
<script type="text/javascript">
function fanhui(){
	history.go(-1);
}
function refresh(){
	var userId = $("#userId").val();
	window.location.href="<%=basePath%>jumpmodifyinfo?userId="+userId;
}
function subform() {
	if ($("input[name='signup_name']").val().length == 0) {
		alert("请输入昵称。");
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
</script>

</body>
</html>
