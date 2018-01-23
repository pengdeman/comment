<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/baiducount.js"></script>
</head>

<body>
<div style="display: none;">
<img src="image/zj.jpg">
</div>
<div id="scroll">
    <div id="toTop" class="scrollItem">
        回到顶部
    </div>
    <div id="toBottom" class="scrollItem">
        回到底部
    </div>
</div>    
<div class="whole">
<div class="zujiquan-index" onclick="fanhui();" style="font-size:60px;">☜</div>
<div class="zujiquan-index" style="width: 20%; font-size: 20px; margin-left: 41%; margin-top: -102px;">足迹正文</div>
<c:if test="${userId != ''}">
<div class="zujiquan-index" style="float: right; margin-top: -102px; color: white;" onclick="refresh(${footprintId});">
	✽
</div>
</c:if>
<c:if test="${userId == ''}">
<div class="zujiquan-index" style="float: right; margin-top: -98px; color: white;" onclick="locationss()">
	<img src="image/txr.png" style="width: 35px; margin-top: 5px;"/>
</div>
</c:if>

<HR style="margin-top: -30px;">
	<div class="zujiquan-title" style="margin-top: -50px;">Welcome to Footprint</div>
    <div class="coordinates-icon">
    	<div class="coordinates topAct">
        	<img src="image/coordinates.png" />
        </div>
        <div class="circle-1-1 circle-show-2"></div>
        <div class="circle-2-2 circle-show-1"></div>
        <div class="circle-3-3 circle-show"></div>
    </div>
    <div id="zwcnr" style="margin-top: -50px;"><!-- 最外层内容 -->
    <div class="login-form" id="loginform" style="width: 99%;; border: solid 2px;color: white;"><!-- 登录form -->
        	<div class="common-div" style="height: auto; width: auto;">
        		<div style="text-align: center; margin-top: -16.5px; margin-bottom: -16.5px; margin-left: -2px; margin-right: -2px;">
        		<br>
                	<img data-toggle="modal" data-target="#myModal" src="pic/slt${f.picurl }" style="width: 100%; height: 500px;"/><br>
				</div>	
				<br>
				<div style="color: white; border: solid 2px;" >
					<div style="margin-bottom: 3px; margin-top: 6px;" onclick="showsomebodyindex(${f.userId })">
    					<img alt="" src="pic/slt${f.upicurl }" style="width: 50px; height: 50px; border-radius: 50%;">
    				</div>
					<p style="padding: 3px">
					<a style="color: #66ffff;" href="javascript:showsomebodyindex(${f.userId })">${f.creName }</a>&nbsp;&nbsp;
					<fmt:parseDate value="${f.creTime }" pattern="yyyy-MM-dd HH:mm:ss" var="receiveDate"></fmt:parseDate>
          	    	<fmt:formatDate value="${receiveDate}" pattern="yyyy年MM月dd日 HH:mm:ss" ></fmt:formatDate>
					发布了：<br><br>
					${f.comment }
					<br>
					<br>
                	<img src="image/coordinates.png" style="height: 25px;"/><label data-toggle="modal" data-target="#dituModal" style="color: red;" onclick="mm(${f.lng }, ${f.lat }, '${f.location }')">${f.location }</label> 
					</p>
				</div>	
            </div>
            <div style="margin-top: -31px; float: right; font-size: 15;">
            	&nbsp;&nbsp;<a id="zfid" href="" data-toggle="modal" data-target="#shareModal" style="margin-right: 5px; color: white; font-size: 20px;"><img src="image/zf.png" style="height: 20px;"/>&nbsp;&nbsp;${f.zfNum }</a>
            	&nbsp;&nbsp;<a href="" data-toggle="modal" data-target="#pingModal" style="margin-right: 5px; color: white;" onclick="fz(${f.id }, ${f.userId })"><img src="image/pl.png" style="height: 20px;"/>&nbsp;&nbsp;${f.sayNum }</a>
            	&nbsp;&nbsp;<a id="zanid" style="margin-right: 5px; color: white;" href="javascript:zan(${f.id })">
            	<c:if test="${f.iszan == 1 }">
            		<img src="image/yz.png" style="height: 20px;"/>
            	</c:if>
            	<c:if test="${f.iszan != 1 }">
            		<img src="image/z.png" style="height: 20px;"/>
            	</c:if>
            	&nbsp;&nbsp;${f.clickNum }</a>
            </div>
    </div>
    <div id="plzj"><!-- 评论最外层 用于追加评论 -->
    <c:if test="${fn:length(footprints) != 0}">
    <c:forEach items="${footprints}" var="itemss" varStatus="vass">
    <div id="pl${itemss.replyId }"><!-- 评论列表每条评论外层 用于删除评论shi yong-->
    <div class="login-form2" id="loginform" style="width: 99%; border: solid 2px;color: white; margin-top: 1%;"><!-- 登录form -->
    	<div class="user-name common-div" style="padding: 5px;display:block;word-break: break-all;word-wrap: break-word;">
    		<div style="margin-bottom: 3px; margin-top: 3px;" onclick="showsomebodyindex(${itemss.replyUserId })">
    			<img alt="" src="pic/slt${itemss.picurl }" style="width: 50px; height: 50px; border-radius: 50%;">
    		</div>
    		<div>
			<a style="color: blue;" href="javascript:showsomebodyindex(${itemss.replyUserId })">${itemss.replyUserName }</a>&nbsp;&nbsp;回复了&nbsp;&nbsp;<a style="color: blue;" href="javascript:showsomebodyindex(${itemss.breplyUserId })">${itemss.breplyUserName }</a>:
			&nbsp;&nbsp;
			${itemss.replyContent } 
			</div>
			<br> 回复时间：
			<fmt:parseDate value="${itemss.replyTime }" pattern="yyyy-MM-dd HH:mm:ss" var="receiveDate"></fmt:parseDate>
			<fmt:formatDate value="${receiveDate}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>
			&nbsp;&nbsp;&nbsp;&nbsp; 
        </div>
        <div style="margin-top: -31px; float: right; font-size: 15">
        		<c:if test="${itemss.replyUserId == userId || userId == 4}">
        			<a href="javascript:deletefoot(${itemss.replyId })" style="margin-right: 5px; color: white;"><img src="image/sc.png" style="height: 20px;"/></a>
				</c:if>
            	&nbsp;&nbsp;&nbsp;&nbsp;<a  href="" data-toggle="modal" data-target="#pingModal" style="margin-right: 5px; color: white; font-size: 20px;" onclick="fz(${f.id }, ${itemss.replyUserId })"><img src="image/pl.png" style="height: 20px;"/>&nbsp;</a>
            	&nbsp;&nbsp;<a id="paid${itemss.replyId }" style="margin-right: 5px; color: white; font-size: 20px;" href="javascript:pzan(${itemss.replyId })">
            	<c:if test="${itemss.iszan == 1 }">
            		<img src="image/yz.png" style="height: 20px;"/>
            	</c:if>
            	<c:if test="${itemss.iszan != 1 }">
            		<img src="image/z.png" style="height: 20px;"/>
            	</c:if>
            	&nbsp;&nbsp;${itemss.replyParentId }</a>
        </div>
     </div>
     </div>
     </c:forEach>
     
     <input type="hidden" id="fid" value="${f.id }">
     <input type="hidden" id="userId" value="${userId }">
     
	</c:if>
	</div>
    <!-- 图片模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    	<div class="modal-dialog">
        	<div class="modal-content">
            	<div class="modal-body" id="moadlimg">
            		<img src="pic/${f.picurl }" style="width: 99%;"/>
            	</div>
            	<div class="modal-footer">
                	<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            	</div>
        	</div><!-- /.modal-content -->
    	</div><!-- /.modal -->
	</div>
    </div>
    <!-- 分享模态框（Modal） -->
	<div class="modal fade" id="shareModal" tabindex="-1" role="dialog" aria-labelledby="shareModalLabel" aria-hidden="true">
    	<div class="modal-dialog">
        	<div class="modal-content">
        		<div class="modal-header">
        	    分享到：
        	    </div>
            	<div class="modal-body" id="moadlimg">
            		<img src="image/1kj.png" style="width: 20px;">
            		<a href="javascript:updatezf(${f.id }, 1)">qq空间</a>
            		&nbsp;&nbsp;<img src="image/1wb.png" style="width: 20px;">
            		<a href="javascript:updatezf(${f.id }, 2)">新浪微博</a>
            		&nbsp;&nbsp;<img src="image/1wx.png" style="width: 20px;">
            		<a href="javascript:updatezf(${f.id }, 3)">微信</a>
            		&nbsp;&nbsp;<img src="image/1qq.png" style="width: 20px;">
            		<a href="javascript:updatezf(${f.id }, 4)">QQ好友</a>
            		&nbsp;&nbsp;<img src="image/1yx.png" style="width: 20px;">
            		<a href="javascript:updatezf(${f.id }, 5)">邮箱</a>
            	</div>
        	</div><!-- /.modal-content -->
    	</div><!-- /.modal -->
	</div>
    <!-- 评论模态框（Modal） -->
	<div class="modal fade" id="pingModal" tabindex="-1" role="dialog" aria-labelledby="pingModalLabel" aria-hidden="true">
    	<div class="modal-dialog">
        	<div class="modal-content">
        		<div class="modal-header">
        	    请在下面输入您的评论：
        	    </div>
            	<div class="modal-body" id="moadlimg">
            	 <!--	<form action="<%=basePath%>saveReply" id="savereply-form_id" method="post">-->
            			<textarea rows="7" style="width: 100%;" name="replyContents" id="replyContents"></textarea>
						<input type="hidden" value="" name="footprintId" id="footprintId">
						<input type="hidden" value="" name="breplyUserId" id="breplyUserId">
				 <!--	</form>-->
            	</div>
            	<div class="modal-footer">
                	<button type="button" class="btn btn-default" data-dismiss="modal" onclick="subsssss()">提交</button>
                	<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            	</div>
        	</div><!-- /.modal-content -->
    	</div><!-- /.modal -->
	</div>	
	 <!-- 地图模态框（Modal） -->
	<div class="modal fade" id="dituModal" tabindex="-1" role="dialog" aria-labelledby="dituModalLabel" aria-hidden="true">
    	<div class="modal-dialog">
        	<div class="modal-content">
            	<div class="modal-body" id="moadlimg">
            		<div id="allmap" style="width: 100%; height: 80%" id="mapid"></div>
            	</div>
            	<div class="modal-footer">
                	<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            	</div>
        	</div><!-- /.modal-content -->
    	</div><!-- /.modal -->
	</div>
</div>
<br>
<script type="text/javascript" src="http://v3.jiathis.com/code_mini/jia.js" charset="utf-8"></script>
<script type="text/javascript">
var jiathis_config = { 
	url: "https://www.pengyingjun.com", 
	title: "足迹👣，一个地理分享社交平台。", 
	summary:"累了，就出去走一走。分享自己的旅行，感受别人的心情。", 
	pic:"<%=basePath%>image/zj.jpg"
}
</script>
<script type="text/javascript">
function updatezf(id, qf){
	$.ajax({
		cache:true,
		type:"POST",
		url:"<%=basePath%>updatezf",
		data:{id: id},
		async:false,
		error:function(request){
			alert("Connection error");
		},
		success:function(data){
			var jsonObj=eval("("+data+")");
			if(jsonObj.messge == 1){
				alert("登陆超时，请重新登录！");
			}else{
				document.getElementById("zfid").innerHTML = "<img src='image/zf.png' style='height: 20px;'/>&nbsp;&nbsp;"+jsonObj.num;
				if(qf == 1){
					window.open("http://www.jiathis.com/send/?webid=qzone&url=https://www.pengyingjun.com/gotolocationdetails?footprintId="+id+"&title=足迹👣，一个地理分享社交平台。&pic=<%=basePath%>image/zj.jpg&summary＝累了，就出去走一走。分享自己的旅行，感受别人的心情。");
				}else if(qf == 2){
					window.open("http://www.jiathis.com/send/?webid=tsina&url=https://www.pengyingjun.com/gotolocationdetails?footprintId="+id+"&title=足迹👣，一个地理分享社交平台。&pic=<%=basePath%>image/zj.jpg&summary＝累了，就出去走一走。分享自己的旅行，感受别人的心情。");
				}else if(qf == 3){
					window.open("http://www.jiathis.com/send/?webid=weixin&url=https://www.pengyingjun.com/gotolocationdetails?footprintId="+id+"&title=足迹👣，一个地理分享社交平台。&pic=<%=basePath%>image/zj.jpg&summary＝累了，就出去走一走。分享自己的旅行，感受别人的心情。");
				}else if(qf == 4){
					window.open("http://www.jiathis.com/send/?webid=cqq&url=https://www.pengyingjun.com/gotolocationdetails?footprintId="+id+"&title=足迹👣，一个地理分享社交平台。&pic=<%=basePath%>image/zj.jpg&summary＝累了，就出去走一走。分享自己的旅行，感受别人的心情。");
				}else if(qf == 5){
					window.open("http://www.jiathis.com/send/?webid=email&url=https://www.pengyingjun.com/gotolocationdetails?footprintId="+id+"&title=足迹👣，一个地理分享社交平台。&pic=<%=basePath%>image/zj.jpg&summary＝累了，就出去走一走。分享自己的旅行，感受别人的心情。");
				}
			}
		}
});
}

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

function fz(footprintId, breplyUserId){
	$("#footprintId").val(footprintId);
	$("#breplyUserId").val(breplyUserId);
}

function deletefoot(id){
if(confirm("真的要删除这条评论吗?")){
	$.ajax({
		cache:true,
		type:"POST",
		url:"<%=basePath%>deletefoot",
		data:{id: id},
		async:false,
		error:function(request){
			alert("删除失败！");
		},
		success:function(data){
			$("#pl"+id).empty();
			var jsonObj=eval("("+data+")");
			alert(jsonObj.mess);
		}
});
}
}

function sub(){
	$("#savereply-form_id").submit();
}

function subsssss(){
	$('pingModal').modal('hide');
	layer.open({
		type: 2
		,content: '正在提交...'
		,time: 6
	 });
	var footprintId = $("#footprintId").val();
	var breplyUserId = $("#breplyUserId").val();
	var replyContents = $("#replyContents").val();
	$.ajax({
		cache:true,
		type:"POST",
		url:"<%=basePath%>ajaxSaveReply",
		data:{footprintId: footprintId, breplyUserId: breplyUserId, replyContents: replyContents},
		async:false,
		error:function(request){
			alert("提交失败！");
		},
		success:function(data){
			var jsonObj=eval("("+data+")");
			if(jsonObj.success == 0){
				window.location.href="<%=basePath%>indexs";
			}else if(jsonObj.success == 1){
				var comment = "";
				comment += "<div id='pl"+jsonObj.footprintReply.replyId+"'><div class='login-form2' id='loginform' style='width: 87%; border: solid 2px;color: white; margin-top: 1%;'>";
				comment += "<div class='user-name common-div' style='padding: 5px;display:block;word-break: break-all;word-wrap: break-word;'><div style='margin-bottom: 3px; margin-top: 3px;' onclick='showsomebodyindex("+jsonObj.footprintReply.replyUserId+")'>";
				comment += "<img src='pic/slt"+jsonObj.footprintReply.picurl+"' style='width: 50px; height: 50px; border-radius: 50%;'></div><div>";
				comment += "<a style='color: blue;' href='javascript:showsomebodyindex("+jsonObj.footprintReply.replyUserId+")'>"+jsonObj.footprintReply.replyUserName+"</a>&nbsp;&nbsp;回复了&nbsp;&nbsp;<a style='color: blue;' href='javascript:showsomebodyindex("+jsonObj.footprintReply.breplyUserId+")'>"+jsonObj.footprintReply.breplyUserName+"</a>:&nbsp;&nbsp;";
				comment += jsonObj.footprintReply.replyContent+"</div><br> 回复时间：";
				var t = jsonObj.footprintReply.replyTime.substring(0,19);
				t = t.replace('-', '年');
				t = t.replace('-', '月');
				var t2 = t;
				t2 = t2.substring(10,19);
				t = t.substring(0,10);
				t = t+"日"+t2;
				
				var fid = $("#fid").val();
				var userId = $("#userId").val();
				
				comment += t+"&nbsp;&nbsp;&nbsp;&nbsp;</div><div style='margin-top: -6%; float: right; font-size: 15'>";
				if(jsonObj.footprintReply.replyUserId == userId || userId == 4){
					comment += "<a href='javascript:deletefoot("+jsonObj.footprintReply.replyId+")' style='margin-right: 5px; color: white;'><img src='image/sc.png' style='height: 20px;'/>&nbsp;&nbsp;</a>";
				}
				comment += "&nbsp;&nbsp;<a  href='' data-toggle='modal' data-target='#pingModal' style='margin-right: 5px; color: white;' onclick='fz("+fid+", "+jsonObj.footprintReply.replyUserId+")'><img src='image/pl.png' style='height: 20px;'/>&nbsp;&nbsp;</a>";	
				comment += "&nbsp;&nbsp;<a id='paid"+jsonObj.footprintReply.replyId+"' style='margin-right: 5px; color: white;' href='javascript:pzan("+jsonObj.footprintReply.replyId+")'><img src='image/z.png' style='height: 20px;'/>&nbsp;&nbsp;"+jsonObj.footprintReply.replyParentId+"</a></div></div></div>";			
				
				$("#plzj").append(comment);
				
				alert("回复成功！");
			}
		}
	});
//	$("#savereply-form_id").submit();
}
function zan(id){
	var zanid = "zanid";
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
				document.getElementById(zanid).innerHTML = "<img src='image/yz.png' style='height: 20px;'/>&nbsp;&nbsp;"+jsonObj.num;
				alert("点赞成功！");
			}
		}
});
}

function pzan(id){
	var paid = "paid"+id;
	$.ajax({
		cache:true,
		type:"POST",
		url:"<%=basePath%>zans",
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
				document.getElementById(paid).innerHTML = "<img src='image/yz.png' style='height: 20px;'/>&nbsp;&nbsp;"+jsonObj.num;
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

function yizan(){
	alert("今天你已经赞过了哟！");
}

function showsomebodyindex(userId){
	window.location.href="<%=basePath%>somebodyindexs?userId="+userId;
}

function fanhui(){
	history.go(-1); 
}

function locationss(){
	window.location.href="<%=basePath%>location";
}

function refresh(footprintId){
	window.location.href="<%=basePath%>gotolocationdetails?footprintId="+footprintId;
}

$(function() {
	messge = '${messge}';
	if(messge != ''){
		alert(messge);
	}
});
</script>

</body>
</html>
