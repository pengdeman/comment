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
	<div class="title">Welcome to Locaticus</div>
    <div class="coordinates-icon">
    	<div class="coordinates topAct">
        	<img src="image/coordinates.png" />
        </div>
        <div class="circle-1-1 circle-show-2"></div>
        <div class="circle-2-2 circle-show-1"></div>
        <div class="circle-3-3 circle-show"></div>
    </div>
    <div class="login-form" id="loginform"><!-- 登录form -->
    	<form action="<%=basePath%>locationresetpassword" id="reset-form_id">
    	<input type="hidden" name="mail" value="${user.mail }">
        	<div class="user-pasw common-div">
            	<span class="pasw-icon common-icon">
                	<img src="image/password.png" />
                </span>
                <input type="password" name="pass1" value="" placeholder="输入您的新密码" />        
            </div>
            <div class="user-pasw common-div">
            	<span class="pasw-icon common-icon">
                	<img src="image/password.png" />
                </span>
                <input type="password" name="pass2" value="" placeholder="再次输入您的新密码" />        
            </div>
            <div class="login-btn common-div" onclick="modify()">确认修改</div>
        </form>
    </div>
    <div class="forgets" style="text-align: center;">
        <a href="<%=basePath%>location">已有账号?点我登录</a>
    </div>
</div>
<br><br>
<script type="text/javascript">

function modify() {
	layer.open({
		type: 2
		,content: '提交中...'
		,time: 5
	 });
	$("#reset-form_id").submit();
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
