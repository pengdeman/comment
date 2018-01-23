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
    	<form action="<%=basePath%>locationreg" id="signup-form_id" method="post" enctype="multipart/form-data">
        	<div class="user-name common-div">
            	<span class="eamil-icon common-icon">
                	<img src="image/txs.png" />
                </span>
                <input type="" name="signup_name" value="" placeholder="输入您的昵称" />        
            </div>
            <div class="user-name common-div">
            	<span class="eamil-icon common-icon">
                	<img src="image/eamil.png" />
                </span>
                <input type="email" name="signup_email" value="" placeholder="输入您的Email" />        
            </div>
            <div class="user-pasw common-div">
            	<span class="pasw-icon common-icon">
                	<img src="image/password.png" />
                </span>
                <input type="password" name="signup_password" value="" placeholder="输入您的密码" />        
            </div>
            <div class="user-name common-div">
            	<span class="eamil-icon common-icon">
                	<img src="image/pic.png" />
                </span>
                <input type="file" name="pic" value="" placeholder="上传您的头像" title="上传你的头像" style="margin-top: 7%; font-size: 19px;"/>        
            </div>
            <div class="login-btn common-div" onclick="subform();">注册</div>
        </form>
    </div>
    <div class="forgets" style="text-align: center;">
        <a href="<%=basePath%>location">已有账号?点我登录</a>
    </div>
</div>
<br><br>
<script type="text/javascript">

function subform() {
	if ($("input[name='signup_name']").val().length == 0) {
		alert("请输入昵称。");
		return;
	}
	if ($("input[name='signup_email']").val().length == 0) {
		alert("请输入Email。");
		return;
	}
	if ($("input[name='signup_password']").val().length == 0) {
		alert("请输入密码。");
		return;
	}
	if ($("input[name='pic']").val().length == 0) {
		alert("请上传头像。");
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
