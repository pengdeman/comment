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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>虚拟币行情提醒</title>
<script type="text/javascript" src="js/jquery-2.0.3.min.js"></script>
</head>
<body>
<div>
<br>
<b>输入币种：</b><input value="" id="btccode"><br><br>
<b>买入价格：</b><input value="" id="btcprice"><br><br>
<b>买入数量：</b><input value="" id="btcnum"><br><br>
</div>
<br>
<div id="btc">
</div>

<script type="text/javascript">
var price = 0;
var num = 0;
var code = "";
var my = 0;
function getbtc(){
	price = $("#btcprice").val();
	code = $("#btccode").val();
	num = $("#btcnum").val();
	var comment = "";
	$.ajax({
		cache:true,
		type:"POST",
		url:"<%=basePath%>querybtc",
		async:false,
		error:function(request){
			alert("Connection error");
		},
		success:function(data){
			var jsonObj=eval("("+data+")");
			var z = jsonObj.json;
			my = 0;
			$.each(JSON.parse(z), function (i, item) {
				if(code != ""){
					if(item.symbol.indexOf(code.toUpperCase()+"USDT") >= 0){
						my = item.price;
					}
				}
			});
			$.each(JSON.parse(z), function (i, item) {
				if(item.symbol.indexOf("BTC") >= 0){
					if(code != ""){
						if(item.symbol.indexOf(code.toUpperCase()+"BTC") >= 0){
							comment += "[币种] "+item.symbol+"  <b>-｜-</b>  [当前价格] "+item.price+" BTC  💲"+my+" 美元<br><br>"
							if(price != 0){
								var zl = (item.price-price)/price;
								if(zl>0){
									comment += "[当前价格] 比 [买入价格] 增长了  "+(zl*10).toFixed(4)+"%   盈利  "+((item.price-price)*num).toFixed(8)+" BTC";
								}else if(zl==0){
									comment += "[当前价格] 与 [买入价格] 相同   ";
								}else if(zl<0){
									comment += "[当前价格] 比 [买入价格] 下降了  "+(zl*100).toFixed(4)+"%   亏损  "+((price-item.price)*num).toFixed(8)+" BTC";
								}
							}
						}
					}else{
						comment += "[币种] "+item.symbol+"  <b>-｜-</b>  [当前价格] "+item.price+" BTC<br><br>"
					}
				}
			});
			$("#btc").html("");
			$("#btc").append(comment);
		}
	});
}
window.setInterval("getbtc()",3000); 
</script>
</body>
</html>