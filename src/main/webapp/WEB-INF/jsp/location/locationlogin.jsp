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
<base href="<%=basePath%>">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0;"/>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ga2vOgjKiex14wPRkTblnAHYIB2bWrTy"></script>
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
 <%
    String username = "";
    String password = "";
    //获取当前站点的所有Cookie
    Cookie[] cookies = request.getCookies();
    for (int i = 0; i < cookies.length; i++) {//对cookies中的数据进行遍历，找到用户名、密码的数据
       if ("username".equals(cookies[i].getName())) {
           username = cookies[i].getValue();
       } else if ("password".equals(cookies[i].getName())) {
           password = cookies[i].getValue();
       }
    }
%>
    
    <div class="login-form" id="loginform"><!-- 登录form -->
    	<form action="<%=basePath%>locationsign" id="signin-form_id">
        	<div class="user-name common-div">
            	<span class="eamil-icon common-icon">
                	<img src="image/eamil.png" />
                </span>
                <input type="email" name="username" value="<%=username%>" placeholder="E-mail address" />        
            </div>
            <input type="hidden" id="wz" name="wz" value=""/>
            <div class="user-pasw common-div">
            	<span class="pasw-icon common-icon">
                	<img src="image/password.png" />
                </span>
                <input type="password" name="password" value="<%=password%>" placeholder="******" /> 
            </div>
            <div class="login-btn common-div" onclick="subform()">登录</div>
        </form>
    </div>
    <div class="login-form" style="display: none;" id="resetform"><!-- 修改密码form -->
    	<form action="<%=basePath%>sendresetlink" id="reset-form_id">
        	<div class="user-name common-div">
            	<span class="eamil-icon common-icon">
                	<img src="image/eamil.png" />
                </span>
                <input type="email" name="mail" value="" placeholder="Enter Your E-mail" />        
            </div>
            <div class="login-btns common-div" onclick="sumb()">发送密码重置链接至邮箱</div>
        </form>
    </div>
    <div class="forgets">
    	<a href="javascript:reset()" id="wzs">忘记密码?</a>
        <a href="<%=basePath%>tosignup">没有账号?注册</a>
    </div>
</div>
<br><br>
<script type="text/javascript">
function reset(){
	var z = $('#resetform').css('display');
	if(z == 'none'){
		$("#wzs").html("返回登录");
		var loginform =document.getElementById("loginform");
		var resetform =document.getElementById("resetform");
		loginform.style.display="none";
		resetform.style.display="";
	}
	if(z == 'block'){
		$("#wzs").html("忘记密码?");
		var loginform =document.getElementById("loginform");
		var resetform =document.getElementById("resetform");
		loginform.style.display="";
		resetform.style.display="none";
	}
}

/**
 * 发送重置链接校验js
 */
function sumb() {
	if ($("input[name='mail']").val().length == 0) {
		alert("请输入您的邮箱。");
		return;
	}
	layer.open({
		type: 2
		,content: '发送中...'
		,time: 5
	 });
	$("#reset-form_id").submit();
}

/**
 * 登录
 */
function subform() {
	if ($("input[name='username']").val().length == 0) {
		alert("请输入用户名。");
		return;
	}
	if ($("input[name='password']").val().length == 0) {
		alert("请输入密码。");
		return;
	}
	$("#signin-form_id").submit();
}

/**
 * 获取后台message信息
 */
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
	
	//百度地图API功能
	var geolocation = new BMap.Geolocation();
	geolocation.getCurrentPosition(function(r){
		if(this.getStatus() == BMAP_STATUS_SUCCESS){
				$.ajax({
				cache:true,
				type:"POST",
				url:"<%=basePath%>wz/wzinsert",
				data:{lng:r.point.lng, lat:r.point.lat},
				async:false,
				success:function(data){
					var jsonObj=eval("("+data+")");
				    $("#wz").val(jsonObj.wz);
				}
		    }); 
		}
		else {
			alert('failed'+this.getStatus());
		}        
	},{enableHighAccuracy: true})
	
});
</script>

</body>
</html>
