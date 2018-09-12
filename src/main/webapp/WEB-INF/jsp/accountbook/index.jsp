<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Dashboard Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="dashboard.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Project name</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Dashboard</a></li>
            <li><a href="#">Settings</a></li>
            <li><a href="#">Profile</a></li>
            <li><a href="#">Help</a></li>
          </ul>
          <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search...">
          </form>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active"><a href="#">Overview <span class="sr-only">(current)</span></a></li>
            <li><a href="#">Reports</a></li>
            <li><a href="#">Analytics</a></li>
            <li><a href="#">Export</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="">Nav item</a></li>
            <li><a href="">Nav item again</a></li>
            <li><a href="">One more nav</a></li>
            <li><a href="">Another nav item</a></li>
            <li><a href="">More navigation</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="">Nav item again</a></li>
            <li><a href="">One more nav</a></li>
            <li><a href="">Another nav item</a></li>
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">Dashboard</h1>

          <div class="row placeholders">
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
          </div>

          <h2 class="sub-header">Section title</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Header</th>
                  <th>Header</th>
                  <th>Header</th>
                  <th>Header</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1,001</td>
                  <td>Lorem</td>
                  <td>ipsum</td>
                  <td>dolor</td>
                  <td>sit</td>
                </tr>
                <tr>
                  <td>1,002</td>
                  <td>amet</td>
                  <td>consectetur</td>
                  <td>adipiscing</td>
                  <td>elit</td>
                </tr>
                <tr>
                  <td>1,003</td>
                  <td>Integer</td>
                  <td>nec</td>
                  <td>odio</td>
                  <td>Praesent</td>
                </tr>
                <tr>
                  <td>1,003</td>
                  <td>libero</td>
                  <td>Sed</td>
                  <td>cursus</td>
                  <td>ante</td>
                </tr>
                <tr>
                  <td>1,004</td>
                  <td>dapibus</td>
                  <td>diam</td>
                  <td>Sed</td>
                  <td>nisi</td>
                </tr>
                <tr>
                  <td>1,005</td>
                  <td>Nulla</td>
                  <td>quis</td>
                  <td>sem</td>
                  <td>at</td>
                </tr>
                <tr>
                  <td>1,006</td>
                  <td>nibh</td>
                  <td>elementum</td>
                  <td>imperdiet</td>
                  <td>Duis</td>
                </tr>
                <tr>
                  <td>1,007</td>
                  <td>sagittis</td>
                  <td>ipsum</td>
                  <td>Praesent</td>
                  <td>mauris</td>
                </tr>
                <tr>
                  <td>1,008</td>
                  <td>Fusce</td>
                  <td>nec</td>
                  <td>tellus</td>
                  <td>sed</td>
                </tr>
                <tr>
                  <td>1,009</td>
                  <td>augue</td>
                  <td>semper</td>
                  <td>porta</td>
                  <td>Mauris</td>
                </tr>
                <tr>
                  <td>1,010</td>
                  <td>massa</td>
                  <td>Vestibulum</td>
                  <td>lacinia</td>
                  <td>arcu</td>
                </tr>
                <tr>
                  <td>1,011</td>
                  <td>eget</td>
                  <td>nulla</td>
                  <td>Class</td>
                  <td>aptent</td>
                </tr>
                <tr>
                  <td>1,012</td>
                  <td>taciti</td>
                  <td>sociosqu</td>
                  <td>ad</td>
                  <td>litora</td>
                </tr>
                <tr>
                  <td>1,013</td>
                  <td>torquent</td>
                  <td>per</td>
                  <td>conubia</td>
                  <td>nostra</td>
                </tr>
                <tr>
                  <td>1,014</td>
                  <td>per</td>
                  <td>inceptos</td>
                  <td>himenaeos</td>
                  <td>Curabitur</td>
                </tr>
                <tr>
                  <td>1,015</td>
                  <td>sodales</td>
                  <td>ligula</td>
                  <td>in</td>
                  <td>libero</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>

	<div id="respond" class="no_webshot">
		<div class="comment-signarea" style="">
			<h3 class="text-muted" id="share_code" style="color: #799961;">
				<i class="fa fa-pencil-square-o" aria-hidden="true"></i> 点我分享笔记
			</h3>
			<p style="font-size: 14px;">笔记需要是本篇文章的内容扩展！</p>
			<br>
		</div>

		<form action="/wp-content/themes/runoob/option/addnote.php"
			method="post" id="commentform" style="display: none;">
			<div id="comment-status"></div>
			<div class="comt">
				<div class="comt-title">
					<i style="font-size: 36px;" class="fa fa-user-circle"
						aria-hidden="true"></i>
					<p>
						<a id="cancel-comment-reply-link" href="javascript:;">取消</a>
					</p>
				</div>
				<div class="comt-box">
					<div class="simditor simditor-mac">
						<div class="simditor-wrapper">
							<div class="simditor-toolbar"
								style="top: 0px; width: 0px; left: 0px;">
								<ul>
									<li><a tabindex="-1" unselectable="on"
										class="toolbar-item toolbar-item-bold" href="javascript:;"
										title="加粗文字 ( Cmd + b )"><span
											class="simditor-icon simditor-icon-bold"></span></a></li>
									<li><a tabindex="-1" unselectable="on"
										class="toolbar-item toolbar-item-code" href="javascript:;"
										title="插入代码"><span
											class="simditor-icon simditor-icon-code"></span></a></li>
									<li><a tabindex="-1" unselectable="on"
										class="toolbar-item toolbar-item-ul" href="javascript:;"
										title="无序列表 ( Cmd + . )"><span
											class="simditor-icon simditor-icon-list-ul"></span></a></li>
									<li><a tabindex="-1" unselectable="on"
										class="toolbar-item toolbar-item-ol" href="javascript:;"
										title="有序列表 ( Cmd + / )"><span
											class="simditor-icon simditor-icon-list-ol"></span></a></li>
									<li><a tabindex="-1" unselectable="on"
										class="toolbar-item toolbar-item-image" href="javascript:;"
										title="插入图片"><span
											class="simditor-icon simditor-icon-picture-o"></span></a>
									<div class="toolbar-menu toolbar-menu-image">
											<ul>
												<li><a tabindex="-1" unselectable="on"
													class="menu-item menu-item-upload-image"
													href="javascript:;" title="上传图片"><span>上传图片</span><input
														type="file" title="上传图片" multiple="multiple"
														accept="image/*"></a></li>
												<li><a tabindex="-1" unselectable="on"
													class="menu-item menu-item-external-image"
													href="javascript:;" title="外链图片"><span>外链图片</span></a></li>
											</ul>
										</div></li>
								</ul>
							</div>
							<div class="simditor-placeholder"
								style="display: block; top: 1px;">写笔记...</div>
							<div class="simditor-body" contenteditable="true">
								<p>
									<br>
								</p>
							</div>
							<div id="mded"></div>
						</div>
						<div class="simditor-popover code-popover">
							<div class="code-settings">
								<div class="settings-field">
									<select class="select-lang">
										<option value="-1">选择程序语言</option>
										<option value="bash">Bash</option>
										<option value="c++">C++</option>
										<option value="cs">C#</option>
										<option value="css">CSS</option>
										<option value="erlang">Erlang</option>
										<option value="less">Less</option>
										<option value="sass">Sass</option>
										<option value="diff">Diff</option>
										<option value="coffeescript">CoffeeScript</option>
										<option value="html">HTML,XML</option>
										<option value="json">JSON</option>
										<option value="java">Java</option>
										<option value="js">JavaScript</option>
										<option value="markdown">Markdown</option>
										<option value="oc">Objective C</option>
										<option value="php">PHP</option>
										<option value="parl">Perl</option>
										<option value="python">Python</option>
										<option value="ruby">Ruby</option>
										<option value="sql">SQL</option>
									</select>
								</div>
							</div>
						</div>
						<div class="simditor-popover image-popover">
							<div class="link-settings">
								<div class="settings-field">
									<label>图片地址</label> <input class="image-src" type="text"
										tabindex="1"> <a class="btn-upload"
										href="javascript:;" title="上传图片" tabindex="-1"> <span
										class="simditor-icon simditor-icon-upload"></span> <input
										type="file" title="上传图片" multiple="multiple" accept="image/*"></a>
								</div>
								<div class="settings-field">
									<label>图片描述</label> <input class="image-alt" id="image-alt"
										type="text" tabindex="1">
								</div>
								<div class="settings-field">
									<label>图片尺寸</label> <input class="image-size" id="image-width"
										type="text" tabindex="2"> <span class="times">×</span>
									<input class="image-size" id="image-height" type="text"
										tabindex="3"> <a class="btn-restore"
										href="javascript:;" title="还原图片尺寸" tabindex="-1"> <span
										class="simditor-icon simditor-icon-undo"></span>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="comt-ctrl">
						<div class="comt-tips">
							<input type="hidden" name="comment_post_ID" value="8184"
								id="comment_post_ID"> <input type="hidden"
								name="comment_parent" id="comment_parent" value="0">
						</div>
						<button type="submit" name="submit" id="submit" tabindex="5">
							<i class="fa fa-pencil" aria-hidden="true"></i> 分享笔记
						</button>
					</div>
				</div>
				<div class="comt-comterinfo">
					<ul id="comment-author-info">
						<li class="form-inline"><label class="hide" for="author">昵称</label><input
							class="ipt" type="text" name="author" id="author" value=""
							tabindex="2" placeholder="昵称"><span class="text-muted">昵称
								(必填)</span></li>
						<li class="form-inline"><label class="hide" for="email">邮箱</label><input
							class="ipt" type="text" name="email" id="email" value=""
							tabindex="3" placeholder="邮箱"><span class="text-muted">邮箱
								(必填)</span></li>
						<li class="form-inline"><label class="hide" for="url">引用地址</label><input
							class="ipt" type="text" name="url" id="url" value="" tabindex="4"
							placeholder="引用地址"><span class="text-muted">引用地址</span></li>
					</ul>
				</div>
			</div>
		</form>
	</div>


	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../../assets/js/vendor/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
  <script type="text/javascript">
$(function() {
	//初始化编辑器
	
	var editor = new Simditor({
	  textarea: $('#mded'),
	  placeholder: '写笔记...',
	  upload: {url:'/api/comment_upload_file.php',params: null,fileKey: 'upload_file',connectionCount: 1,leaveConfirm: '文件正在上传，您确定离开?'},
	  defaultImage: 'http://www.runoob.com/images/logo.png',
	  codeLanguages: '',
	  toolbar: [  'bold','code','ul','ol','image' ]
	});
	editor.on('selectionchanged', function() {
		$(".code-popover").hide();
	});

	// 提交数据
	$("#share_code").click(function() {
		$(".comment-signarea").hide();
		$("#commentform").show();
		
	});

	// 提交笔记
	var commentform=$('#commentform');
	commentform.prepend('<div id="comment-status" ></div>');
	var statusdiv=$('#comment-status');
	
	commentform.submit(function(e){
		e.preventDefault();
		var noteContent = editor.getValue();
		// console.log(noteContent);
		noteContent = noteContent.replace(/<pre><code>/g,"<pre>");
		noteContent = noteContent.replace(/<\/code><\/pre>/g,"</pre>");
		
		// 系列化表单数据
		var comment_parent = 0;
		var is_user_logged_in = $("#is_user_logged_in").val();
		var comment_post_ID =  8184;
		var _wp_unfiltered_html_comment = $("#_wp_unfiltered_html_comment").val();
		var comment = noteContent;
		var author = $("#author").val();
		var url = $("#url").val();
		var email = $("#email").val();
		if(isBlank(author) && is_user_logged_in==0) {
			statusdiv.html('<p  class="ajax-error">请输入昵称！</p>');
		} else if(isBlank(email)  && is_user_logged_in==0) {
			statusdiv.html('<p  class="ajax-error">请输入邮箱！</p>');
		} else {
			// var formdata=commentform.serialize() + "&comment=" + noteContent ;
			// 添加状态信息
			statusdiv.html('<p>Processing...</p>');
			// 获取表单提交地址
			var formurl=commentform.attr('action');
			
			// 异步提交
			$.ajax({
					type: 'post',
					url: formurl,
					dataType:'json',
					data: {"comment_parent":comment_parent,"comment_post_ID":comment_post_ID, "_wp_unfiltered_html_comment":_wp_unfiltered_html_comment,"comment":comment,"url":url, "email":email,"author":author},
					error: function(XMLHttpRequest, textStatus, errorThrown){
					statusdiv.html('<p class="ajax-error" >数据不完整或表单提交太快了！</p>');
				},
				success: function(data, textStatus){
					if(data.errorno=="0") {
						$("#submit").prop('disabled', true);
						statusdiv.html('<p class="ajax-success" >笔记已提交审核，感谢分享笔记！</p>');
						alert('笔记已提交审核，感谢分享笔记！');
					}else{
						statusdiv.html('<p class="ajax-error" >'+data.msg+'</p>');
					}
					commentform.find('textarea[name=comment]').val('');
				}
			});
			setTimeout(function(){
		        $("#submit").prop('disabled', false);
		    }, 10*1000);
		}
		return false;

	});
	
});
function isBlank(str) {
    return (!str || /^\s*$/.test(str));
}
</script>
</html>
