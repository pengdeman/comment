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
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>技术笔记</title>
<script type="text/javascript" src="js/jquery-2.0.3.min.js"></script>
<script type="text/javascript" src="js/baiducount.js"></script>
</head>
<body>

<table border="1">
	<tr>
		<td style="font-size: 10px;">share<br>code</td>
		<td><input id="code" style="width: 80px; border: none;"></td>
		<td rowspan="3" style="font-size: 8px; text-align: center;"><button onclick="z(1);" style="width: 100%; height: 100%;">query</button><br>&nbsp;&nbsp;每三秒<br>自动刷新</td>
	</tr>
	<tr>
		<td style="font-size: 10px;">share<br>name</td>
		<td><input id="bname" value="--" style="width: 80px; border: none;"></td>
	</tr>
	<tr>
		<td style="font-size: 10px;">current<br>price</td>
		<td><input id="bnum" value="00.00" style="width: 80px; border: none;"></td>
	</tr>
</table>
--------------<a href="javascript:showhiden()" id="syid">⬇</a>----------------
<div style="display: none;" id="peopleinfo">
<table border="1">
	<tr>
		<td style="font-size: 10px;">today<br>opening<br>price</td>
		<td><input id="todayprice" value="00.00" style="width: 80px; border: none;"></td>
		<td rowspan="4" style="font-size: 8px; text-align: center; width: 32px;">点<br>击<br>⬆<br>隐<br>藏</td>
	</tr>
	<tr>
		<td style="font-size: 10px;">yesterday<br>opening<br>price</td>
		<td><input id="yesterdayprice" value="00.00" style="width: 80px; border: none;"></td>
	</tr>
	<tr>
		<td style="font-size: 10px;">max<br>price</td>
		<td><input id="maxprice" value="00.00" style="width: 80px; border: none;"></td>
	</tr>
	<tr>
		<td style="font-size: 10px;">min<br>price</td>
		<td><input id="minprice" value="00.00" style="width: 80px; border: none;"></td>
	</tr>
</table>
</div>
<script type="text/javascript">
function showhiden(){
	if($("#peopleinfo").css("display")=="none"){
		$("#peopleinfo").show();
		$("#syid").text('⬆');
		window.resizeTo(210,330);//改变大小 
	}else{
		$("#peopleinfo").hide();
		$("#syid").text('⬇');
		window.resizeTo(210,175);//改变大小 
	}
}

function z(v){
	var code = $("#code").val();
	if(code.length == 0 && v == 1){
		alert("请输出股票代码！");
	}else{
		$.ajax({
			cache:true,
			type:"POST",
			url:"<%=basePath%>sharess",
			data:{code: code},
			async:false,
			error:function(request){
				alert("Connection error");
			},
			success:function(data){
				var jsonObj=eval("("+data+")");
				var z = jsonObj.json;
				z = z.substring(21,z.length-2);
				var elements=z.split(",");
				if(elements[0] != '";'){
					$("#bname").val(elements[0]);
					$("#bnum").val(elements[3]);
					$("#todayprice").val(elements[1]);
					$("#yesterdayprice").val(elements[2]);
					$("#maxprice").val(elements[4]);
					$("#minprice").val(elements[5]);
				}
			}
	});
	}
}
window.setInterval("z(2)",3000); 
</script>
</body>
</html>