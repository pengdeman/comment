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
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ga2vOgjKiex14wPRkTblnAHYIB2bWrTy"></script>
<title>位置监控</title>
	<!-- Open Sans font from Google CDN -->
	<link href="assets/stylesheets/font.css" rel="stylesheet" type="text/css">

	<!-- Pixel Admin's stylesheets -->
	<link href="assets/stylesheets/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="assets/stylesheets/pixel-admin.min.css" rel="stylesheet" type="text/css">
	<link href="assets/stylesheets/widgets.min.css" rel="stylesheet" type="text/css">
	<link href="assets/stylesheets/rtl.min.css" rel="stylesheet" type="text/css">
	<link href="assets/stylesheets/themes.min.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="js/baiducount.js"></script>
</head>
<body class="theme-default main-menu-animated">
<script>var init = [];</script>
<!-- Demo script --> <script src="assets/demo/demo.js"></script> <!-- / Demo script -->

<div><!-- 最外层div开始 -->
<div style="background-image: url(assets/demo/bj.jpg); background-size:100% 100%; width: 100%; height: 15%; padding-top: 25px;"><!-- 上部分图片div开始 -->
<b style="margin-left: 15%; font-size: 40px;">位置监控!</b>
</div><!-- 上部分图片div结束 -->
<div><!-- 中部分统计图开始 -->


<!-- 11. $JQUERY_DATA_TABLES ===========================================================================

				jQuery Data Tables
-->
				<!-- Javascript -->
				<script>
					init.push(function () {
						$('#jq-datatables-example').dataTable();
						$('#jq-datatables-example_wrapper .table-caption').text('');
						$('#jq-datatables-example_wrapper .dataTables_filter input').attr('placeholder', 'Search...');
					});
				</script>
				<!-- / Javascript -->

				<div class="panel">
					<div class="panel-body">
						<div class="table-primary">
							<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="jq-datatables-example">
								<thead>
									<tr>
										<th style="text-align: center;">位置</th>
										<th style="text-align: center;">经度</th>
										<th style="text-align: center;">纬度</th>
										<th style="text-align: center;">获取时间</th>
										<th style="text-align: center;">信息来源</th>
										<th style="text-align: center;">操作</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach items="${ls}" var="item">
									<tr class="odd gradeX">
										<td style="text-align: center;">${item.adr }</td>
										<td style="text-align: center;">${item.lng }</td>
										<td style="text-align: center;">${item.lat }</td>
										<td style="text-align: center;">
										<fmt:parseDate value="${item.creTime }" pattern="yyyy-MM-dd HH:mm:ss" var="receiveDate"></fmt:parseDate>
          		    					<fmt:formatDate value="${receiveDate}" pattern="yyyy-MM-dd HH:mm:ss" ></fmt:formatDate>
										</td>
										<td style="text-align: center;">${item.name }</td>
										<td style="text-align: center;"><a href="javascript:theLocation(${item.lng }, ${item.lat }, '${item.adr }')">查看位置</a></td>
									</tr>
								</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
<!-- /11. $JQUERY_DATA_TABLES -->
</div><!-- 中部分统计图结束 -->
<br>
<div id="allmap" style="min-height: 70%;"></div>
<br>
<br>
<div style="text-align: center;">
系统版本：V1.0
<br>
联系方式：872422345
<br>
技术支持：彭英峻技术有限公司
</div>
<br>
</div><!-- 最外层div结束 -->

<!-- Get jQuery from Google CDN -->
<!--[if !IE]> -->
	<script type="text/javascript"> window.jQuery || document.write('<script src="assets/javascripts/jquery-2.0.3.min.js">'+"<"+"/script>"); </script>
<!-- <![endif]-->
<!--[if lte IE 9]>
	<script type="text/javascript"> window.jQuery || document.write('<script src="assets/javascripts/jquery-1.8.3.min.js">'+"<"+"/script>"); </script>
<![endif]-->

<!-- Pixel Admin's javascripts -->
<script src="assets/javascripts/bootstrap.min.js"></script>
<script src="assets/javascripts/pixel-admin.min.js"></script>

<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("allmap");
	map.centerAndZoom(new BMap.Point(116.331398,39.897445),11);
	map.enableScrollWheelZoom(true);
	
	// 用经纬度设置地图中心点
	function theLocation(lng, lat, adr){
		if(lng != "" && lat != ""){
			map.clearOverlays(); 
			var new_point = new BMap.Point(lng, lat);
			var marker = new BMap.Marker(new_point);  // 创建标注
			map.addOverlay(marker);              // 将标注添加到地图中
			map.panTo(new_point);  
			map.centerAndZoom(new_point, 22);
			var opts = {
			  width : 200,     // 信息窗口宽度
			  height: 100,     // 信息窗口高度
			  title : "位置定位" , // 信息窗口标题
//			  enableMessage:true,//设置允许信息窗发送短息
//			  message:""
			}
			var infoWindow = new BMap.InfoWindow("地址："+adr, opts);  // 创建信息窗口对象 
			marker.addEventListener("click", function(){          
				map.openInfoWindow(infoWindow,new_point); //开启信息窗口
			});
		}
	}

</script>

<script type="text/javascript">
	init.push(function () {
		// Javascript code here
	})
	window.PixelAdmin.start(init);
</script>
</body>
</html>