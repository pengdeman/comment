<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>李曼涤个人主页</title>
	<meta name="description" content="" />
	<meta name="author" content="" />
	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" /> 
	
	<script type="application/x-javascript">
		addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){
			window.scrollTo(0,1);
		}
	</script>
	
	<!-- CSS -->
	<link rel="stylesheet" href="peopleshow/css/base.css" />
	<link rel="stylesheet" href="peopleshow/css/amazium.css" />
	<link rel="stylesheet" href="peopleshow/css/layout.css" />
    <link rel="stylesheet" href="peopleshow/css/fonts.css" />
    <link rel="stylesheet" href="peopleshow/css/prettyPhoto.css" />
	
	<!-- Favicons -->
	<link rel="shortcut icon" href="peopleshow/images/favicon.ico" />
	<link rel="apple-touch-icon-precomposed" href="peopleshow/images/apple-touch-icon.png" />
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="peopleshow/images/apple-touch-icon-57x57.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="peopleshow/images/apple-touch-icon-72x72.png" />
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="peopleshow/images/apple-touch-icon-114x114.png" />
	
	<!-- To Top scripts -->
	
	<script type="text/javascript" src="peopleshow/js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" language="javascript" src="peopleshow/js/jquery.carouFredSel-5.5.5-packed.js"></script>
	<script src="peopleshow/js/jquery.easytabs.js" type="text/javascript"></script>
	<script src="peopleshow/js/smoothscroll.js" type="text/javascript"></script>
	<script src="peopleshow/js/jquery.hashchange.min.js" type="text/javascript"></script>
    <script src="peopleshow/js/jquery.easytabs.min.js" type="text/javascript"></script>
    <script src="peopleshow/js/jquery.validate.js" type="text/javascript"></script>
    <script type="text/javascript" src="peopleshow/js/jquery.prettyPhoto.js"></script>
	<script src="peopleshow/js/filterable.pack.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript" src="peopleshow/js/jquery.tweet.js"></script>
    <script type="text/javascript" src="peopleshow/js/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="peopleshow/js/custom.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
  <header>
  	<audio id ="pdm" src="1.mp3" controls="controls" autoplay="autoplay" loop hidden="true"></audio>
    	<div class="row">
            <div class="row">
                <div class="grid_3">
                    <div id="photo">
                        <img src="peopleshow/images/lmd.jpg" alt="My Photo"  width="167px;" height="181px;"/>
                    </div>
                </div>
                <div class="grid_9">
                    <div class="name-wrap">
                        <h1>李曼涤 <span>美丽 善良 💓小仙女</span></h1>
                    </div>
                    <div class="contact-info"> <span class="phone-icon">+13522556784</span> <span class="email-icon"><a href="#">872422345@qq.com</a></span>
                        
                    </div>
                    
                </div>
                
            </div>
        </div>
    </header>
    <div class="row">
    	<div class="social-icons">
            <ul>
                <li class="twitter"><a href="#">Twitter</a></li>
                <li class="facebook"><a href="#">Twitter</a></li>
                <li class="vimeo"><a href="#">Twitter</a></li>
                <li class="buzz"><a href="#">Twitter</a></li>
                <li class="dribble"><a href="#">Twitter</a></li>
            </ul>
        </div>
    </div>    
    <div id="tab-container" class='tab-container'>
        <ul class='etabs'>
            <li class='tab'><a href="#home" class="home">主页</a></li>
            <li class='tab'><a href="#web" class="about">日志</a></li>
            <li class='tab'><a href="#about" class="social">相册</a></li>
            <li class='tab'><a href="#contact" class="contact">留言板</a></li>
        </ul>
        <div class="row">
        	<div class="grid_12">
            <div class='panel-container'>
              	<div id="home" class="page">
                    <h2><span>我的简介</span></h2>
                    <div class="content-wrap">
                    	<div class="row">
                            <div class="grid_6">
                                <div class="content-pad">
                                	<blockquote class="quote">
                                        我叫李曼涤，是一个很漂亮的小仙女，希望能多多结识新朋友，大家快来找我玩吧，爱你们❤️。
                                    </blockquote>
                                    <p>    很高兴你来到了我的主页，我是一个很喜欢交朋友的小孩，大家一起学习，一同进步，你在哪？我们相聚多远？希望我们有一天能在一起吃肘子！</p>
                                    <p>    我有很多爱好，我喜欢摔跤，吃肉，喝可乐，你可以带我去吃你们那的好吃的吗？</p>
                                </div>	
                            </div>
                            <div class="grid_3">
                            	<div class="content-pad shadow-wrap">
                                	<h3>我的目标</h3>
                                    <ul class="objective">
                                    	<li>努力减肥，做一个瘦瘦的小仙女</li>
                                        <li>努力学习，用知识改变命运</li>
                                        <li>努力成长，长大了孝顺我的爸爸妈妈</li>
                                        <li>努力追赶我小舅，因为他是我的偶像</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="grid_3">
                               	<div class="content-pad shadow-wrap">
                                	<h3>联系方式</h3>
                                    <p>邮箱: <a href="#">872422345@qq.com</a></p>
                                    <p>电话: 18745439244</p>
                                    <p>家乡: 中国.桦南</p>
                                    <p>主页地址: <a href="http://www.pengyingjun.com/lmd">www.pengyingjun.com/lmd</a></p>
                                    <div class="download-card">
                                    	<a href="javascript:alert('下载完成！')">下载我的名片</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix">&nbsp;</div>
                    </div>
                </div>
                <div id="web" class="page">
                    <h2><span>我的日志</span></h2>
                    <div class="content-wrap">
                    	<div class="row">
                            <div class="grid_4">
                                <div class="content-pad">
                                	<h3>日志列表</h3>
                                	<ul class="my-skills">
                                    	<li>我的爸爸妈妈<span>1</span><span>1</span><span>1</span><span>1</span><span>1</span></li>
                                        <li>我的姥姥姥爷<span>1</span><span>1</span><span>1</span></li>
                                        <li>我的帅气老舅<span>1</span><span>1</span></li>
                                        <li>今天小日记<span>1</span><span>1</span><span>1</span><span>1</span></li>
                                        <li>快要过年了<span>1</span><span>1</span><span>1</span></li>
                                        <li>没人知道我的心里想什么<span>1</span><span>1</span></li>
                                    </ul>
                                </div>	
                            </div>
                            <div class="grid_4">
                            	<div class="content-pad shadow-wrap">
                                	<h3>热门日志展示</h3>
                                	<div class="list_carousel responsive">
                                        <ul id="education">
                                            <li>
                                            	<h4>我的爸爸妈妈 <span>( 2018.02.15 )</span></h4>
                                                <p>我的爸爸是很善良的一个人，他辛勤的付出，养育着我，很感谢他。 </p>    
                                                <p>我的妈妈是一个漂亮的女生，她每天都是美美的，而且很爱我。 </p>                                        
                                            </li>
                                            <li>
                                            	<h4>今天小日记 <span>( 2018.02.16 )</span></h4>
                                                <p>今天天气不错，跟我的心情一样。我要做一个努力的人，加油哦！ </p>                                           
                                            </li>
                                            <li>
                                            	<h4>快要过年了 <span>( 2018.01.13 )</span></h4>
                                                <p>快要过年了！小舅和小姨都要回来了！好开心，一家人在一起，很高兴 </p>                                        
                                            </li>
                                        </ul>                                        
                                        <div class="clearfix"></div>
                                        <div id="education-pager" class="pager"></div>
                                	</div>
                                </div>
                            	
                            </div>
                            <div class="grid_4">
                               	<div class="content-pad shadow-wrap">
                                	<h3>日志阅读量排行</h3>
                                	<div class="list_carousel responsive">
                                        <ul id="work-expeirence">
                                            <li>
                                            	<h4>我的姥姥姥爷 <span> 来自一个小仙女的日志 ( 230👍)</span></h4>
                                                <p>我的姥姥很能干，是一个勤劳的人，我的姥爷就知道喝酒，不过他很爱我！ </p></li>
                                          	<li>
                                            	<h4>我帅气的老舅 <span> 来自一个小仙女的日志 ( 202👍)</span></h4>
                                                <p>我老舅可以说是世界上最帅气的男子了，是我的偶像，男神！ </p></li>
                                            <li>
                                            	<h4>没人知道我的心里想什么 <span> 来自一个小仙女的日志 ( 20👍)</span></h4>
                                                <p>我很爱我的家人，希望家里人都健健康康，平平安安！ </p></li>
                                        </ul>                                        
                                        <div class="clearfix"></div>
                                        <div id="expeirence-pager" class="pager"></div>
                                	</div>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix">&nbsp;</div>                      
                    </div>
                </div>
                <div id="about" class="page">
                    <h2><span>我的相册</span></h2>
                    <div class="content-wrap">
                   	  	<div class="row">
                            <div class="boundingbox" id="content">                            	
                               	<div class="grid_12">
                               		<div class="portfolio-filter">
                                        <ul id="portfolio-filter">
                                            <li><a href="#all" title="">全部</a></li>
                                            <li><a href="#design" title="" rel="design">可爱</a></li>
                                            <li><a href="#partner" title="" rel="partner">小时候</a></li>
                                            <li><a href="#political" title="" rel="political">美女</a></li>
                                            <li><a href="#university" title="" rel="university">在家</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="grid_12">
                                    <div class="portfolio-item">
                                        <ul id="portfolio-list">
                                            <li class="business ecommerce partner cms programming jquery search">
                                                <div class="portfolio-box">
                                                    <div class="portoflio-img">
                                                        <a rel="prettyPhoto" class="portfolio-item-preview" href="images/portfolio1.jpg" title="Title goes here">
                                                        <img src="peopleshow/images/lmd.jpg" class="portfolio-img pretty-box max-image" alt="" style="height: 230px;"/></a>
                                                    </div>
                                                    <h3>可爱自拍</h3>
                                                    <p>我很喜欢这张可爱自拍</p>
                                                </div>
                                            </li>
                                            <li class="nonprofit partner cms jquery">
                                                <div class="portfolio-box">
                                                    <div class="portoflio-img">
                                                        <a rel="prettyPhoto" class="portfolio-item-preview" href="images/portfolio2.jpg" title="Title goes here">
                                                        <img src="peopleshow/images/lmd/1.jpg" class="portfolio-img pretty-box max-image" alt="" style="height: 230px;"/></a>
                                                    </div>
                                                    <h3>大雪天去玩</h3>
                                                    <p>大雪天我和小舅出去得瑟</p>
                                                </div>
                                            </li>
                                            <li class="business design">
                                                <div class="portfolio-box">
                                                    <div class="portoflio-img">
                                                        <a rel="prettyPhoto" class="portfolio-item-preview" href="images/portfolio3.jpg" title="Title goes here">
                                                        <img src="peopleshow/images/lmd/2.jpg" class="portfolio-img pretty-box max-image" alt="" style="height: 230px;"/></a>
                                                    </div>
                                                    <h3>我很小的时候</h3>
                                                    <p>我小时候和小舅自拍</p>
                                                </div>
                                            </li>
                                            <li class="nonprofit university design cms jquery video">
                                                <div class="portfolio-box">
                                                    <div class="portoflio-img">
                                                        <a rel="prettyPhoto" class="portfolio-item-preview" href="images/portfolio4.jpg" title="Title goes here">
                                                        <img src="peopleshow/images/lmd/3.jpg" class="portfolio-img pretty-box max-image" alt="" style="height: 230px;"/></a>
                                                    </div>
                                                    <h3>2017过年</h3>
                                                    <p>过年和小舅自拍</p>
                                                </div>
                                            </li>
                                            <li class="political design cms">
                                                <div class="portfolio-box">
                                                    <div class="portoflio-img">
                                                        <a rel="prettyPhoto" class="portfolio-item-preview" href="images/portfolio5.jpg" title="Title goes here">
                                                        <img src="peopleshow/images/lmd/4.jpg" class="portfolio-img pretty-box max-image" alt="" style="height: 230px;"/></a>
                                                    </div>
                                                    <h3>冬天去外面得瑟</h3>
                                                    <p>和小舅去拍雪照</p>
                                                </div>
                                            </li>
                                            <li class="university partner design cms jquery">
                                                <div class="portfolio-box">
                                                    <div class="portoflio-img">
                                                        <a rel="prettyPhoto" class="portfolio-item-preview" href="images/portfolio6.jpg" title="Title goes here">
                                                        <img src="peopleshow/images/lmd/5.jpg" class="portfolio-img pretty-box max-image" alt="" style="height: 230px;"/></a>
                                                    </div>
                                                    <h3>我咋这么黑</h3>
                                                    <p>这张照的我好黑啊</p>
                                                </div>
                                            </li>
                                            <li class="nonprofit econdev partner cms jquery search">
                                                <div class="portfolio-box">
                                                    <div class="portoflio-img">
                                                        <a rel="prettyPhoto" class="portfolio-item-preview" href="images/portfolio7.jpg" title="Title goes here">
                                                        <img src="peopleshow/images/lmd/6.jpg" class="portfolio-img pretty-box max-image" alt="" style="height: 230px;"/></a>
                                                    </div>
                                                    <h3>刮大风去玩</h3>
                                                    <p>冻死了，但是很开心</p>
                                                </div>
                                            </li>
                                            <li class="political design cms video">
                                                <div class="portfolio-box">
                                                    <div class="portoflio-img">
                                                        <a rel="prettyPhoto" class="portfolio-item-preview" href="images/portfolio8.jpg" title="Title goes here">
                                                        <img src="peopleshow/images/lmd/7.jpg" class="portfolio-img pretty-box max-image" alt="" style="height: 230px;"/></a>
                                                    </div>
                                                    <h3>我美吗</h3>
                                                    <p>大声告诉我我美吗？</p>
                                                </div>
                                            </li>
                                        <li style="overflow: hidden; clear: both; height: 0px; position: relative; float: none; display: block; background:none;"></li>
                                    </ul>
                                    </div>      
                                </div>                          
        						<div class="clearfix"></div>
                       		</div>
                        	<div class="clearfix">&nbsp;</div>                      
                    	</div>    
                	</div>
             	</div>
             
                 <div id="contact" class="page">
                        <h2><span>我的留言板</span></h2>
                        <div class="content-wrap">
                            <div class="row">
                                <div class="grid_6">
                                    <div class="content-pad">
                                        <h3>给我留言吧</h3>
                                        <p class="contact-txt">很高兴来到这里，给我留句话再走吧！</p>
                                        
                                        <div class="form-div">
                                            <div id="sucessmessage" class="form-row"> </div>
                                            <form id="contact_form" method="post" action="#" />
                                                <div class="form-row">
                                                    <input type="text" placeholder="First Name..." name="name" />
                                                </div>  
                                                <div class="form-row">
                                                    <input type="text" name="email" placeholder="Email..." id="email" />
                                                </div>                              
                                                <div class="form-row">
                                                    <input type="text" name="phone" placeholder="Website..." id="phone" />
                                                </div>
                                                <div class="clearfix"></div>
                                                <div class="form-row">
                                                    <textarea name="comment" placeholder="Your comments..."></textarea>
                                                </div>
                                                <div class="clearfix"></div>
                                                <div class="form-row">
                                                    <input type="submit" class="btn" value="留言" />
                                                </div>                                            
                                            </form>
                                        </div>
                                    </div>	
                                </div>
                                <div class="grid_6">
                                    <div class="content-pad">
                                        <h3>我的名片</h3>
                                        <p>电话 :18745439244</p>
                                        <p>传真 :18745439244</p>
                                        <p>邮箱 : <a href="#">872422345@qq.com</a></p>
                                        <p>我的主页 : <a href="https://www.pengyingjun.com/lmd">www.pengyingjun.com/lmd</a></p>
                                        
                                        <div class="contact-map">小舅：要努力哦李曼涤！！！</br>小姨：抓紧时间减肥吧，小丫头！
                                            <iframe width="100%" scrolling="no" height="310" frameborder="0" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Manhattan,+New+York,+NY&amp;sll=37.0625,-95.677068&amp;sspn=71.810722,137.724609&amp;ie=UTF8&amp;hq=&amp;hnear=Manhattan,+New+York&amp;ll=40.783401,-73.966141&amp;spn=0.06421,0.102654&amp;z=12&amp;iwloc=A&amp;output=embed" marginwidth="0" marginheight="0" class="map"></iframe>
                                         </div>
                                    </div>	
                                </div>
                            </div>
                            <div class="clearfix">&nbsp;</div>                      
                        </div>      
                    </div>
             </div>
    	</div>
    </div>
	</div>
    <footer>
    	<div class="row">
        	<div class="grid_6">
            	Copyright © 2018 Limandi Here. 
            </div>
            <div class="grid_6">
            </div>
        </div>
    	<div class="bottom-line">&nbsp;</div>
    </footer>
    
    <p id="back-top" style="display: block;">
        <a href="#top">&nbsp;</a>
    </p>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
<script type="text/javascript">
var audio = document.getElementById('pdm');
window.onload=function(){
    audio.play();
}
</script>
</body>
</html>