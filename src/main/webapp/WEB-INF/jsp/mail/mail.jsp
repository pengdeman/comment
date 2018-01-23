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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>足迹邮件</title>
<script type="text/javascript" src="js/jquery-2.0.3.min.js"></script>
</head>
<body>
<div><!-- 发送主题 -->
<b>发送主题：</b>
<input style="border: solid 1px; width: 550px; height: 25px;" id="mailtitle">
<input style="border: solid 1px; width: 53px; height: 25px;" type="button" value="发送" onclick="sendmail()">
</div>
<br>
<div><!-- 发送内容 -->
<div><b>发送内容：</b></div>
<textarea rows="20" style="width: 605px; margin-top: -15px; margin-left: 84px;" id="texta"></textarea>
</div>
<br>
<div><!-- 发送人 -->
<div><b>发送人员：</b></div>
	<div style="border: solid 1px; padding: 5px; width: 595px; height: 200px; margin-top: -15px; margin-left: 84px;">
		<input type="checkbox" value="" onclick="selectAll()" name="controlAll" id="controlAll">全选<br><br>
		<c:forEach items="${ulist }" var="item" varStatus="v">
			<input type="checkbox" value="${item.mail }" name="selected">${item.userName }&nbsp;&nbsp;&nbsp;&nbsp;
			<c:if test="${v.count % 5 == 0 }"><br></c:if>
		</c:forEach>
	</div>
</div>


<script type="text/javascript">
function sendmail(){
	var radArr = document.getElementsByName("selected"); 
	var mails = '';
	for(var i=0; i<radArr.length; i++){ 
		if(radArr[i].checked){ 
			mails = mails+radArr[i].value+","
		} 
	}
	var maillist = mails.substring(0,mails.length-1);//邮件集合
	var mailtext = $("#texta").val();//邮件内容
	var mailtitle = $("#mailtitle").val();//邮件主题
	window.location.href="<%=basePath%>sendmail?maillist="+maillist+"&mailtext="+mailtext+"&mailtitle="+mailtitle;
}

function selectAll(){
	 var checklist = document.getElementsByName("selected");
	   if(document.getElementById("controlAll").checked)
	   {
	   for(var i=0;i<checklist.length;i++)
	   {
	      checklist[i].checked = 1;
	   } 
	 }else{
	  for(var j=0;j<checklist.length;j++)
	  {
	     checklist[j].checked = 0;
	  }
	 }
	}
</script>
</body>
</html>