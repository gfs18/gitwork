<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<base href="${deployName }">
<title>幻听-原创音乐网站</title>
<link rel="stylesheet" type="text/css" href="css/bof.css" />
<link rel="stylesheet" href="dist/css/bootstrap.css">
<link rel="shortcut icon" type="image/icon" href="images/log.png" />
<link rel="stylesheet" type="text/css" href="css/github-dark.css"
	media="screen">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<!--

<link rel="stylesheet" type="text/css" href="css/stylesheet.css"
	media="screen">


 -->

</head>
<body>
	<header>
		<div id="head">
			<nav class="navbar navbar-default" id="lognav">
				<div class="container">
					<div class="navbar-header navbar-left">
						<a href="" class="navbar-brand"><img src="images/log.png"></a>
						<a href="" class="navbar-brand"><h3>幻听音乐</h3></a>
					</div>
					<ul class="nav navbar-nav navbar-right" id="nav_a">
						<li><a href="javascript:"
							class="hidden-md hidden-sm hidden-xs" id="denglu"
							data-toggle="modal" data-target="#myModal">登录</a></li>
						<li id="newL"><a href=""
							class="hidden-md hidden-sm hidden-xs" id="out"
							data-toggle="modal" data-target="#myModals">注册</a></li>
						<li><a href="page/vip.jsp"
							class="hidden-md hidden-sm hidden-xs">VIP</a></li>
						<li><a href="" class="hidden-md hidden-sm hidden-xs">客服中心</a></li>
					</ul>
				</div>
			</nav>
			<nav class="navbar navbar-default" style="border-radius: 0"
				id="navbartop">
				<div class="container">
					<div class="row">
						<ul class="nav navbar-nav navbar-left top" id="topnav">
							<li><div class="mydiv hidden-md hidden-sm hidden-xs"></div>
								<a href="page/index.jsp"
								class="col-lg-2 col-md-2 col-sm-3 col-xs-4" id="">首页</a></li>
							<li><a href="page/singer.jsp"
								class="col-lg-2 col-md-2 col-sm-3 col-xs-4">歌手</a></li>
							<li><a href="page/special.jsp"
								class="col-lg-2 col-md-2  col-xs-2  hidden-sm hidden-xs">专辑</a></li>
							<li><a href="page/mv.jsp"
								class="col-lg-2 col-md-2  hidden-xs  hidden-sm hidden-xs">MV</a></li>
							<li><a href="page/friend.jsp"
								class="col-lg-2 hidden-md hidden-sm hidden-xs">朋友</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</header>
	
	<article>
		<!-- <header>
		<a href="page/index.jsp"><span
			class="glyphicon glyphicon-chevron-left"></span> 回首页</a>
	</header> -->
	<div class="container-fluid">
  <div class="row-fluid">
    <div class="span2">
      <!--Sidebar content-->
    </div>
    <div class="span10">
      <!--Body content-->
    </div>
  </div>
</div><div class="container-fluid">
  <div class="row-fluid">
    <div class="span2">
      <!--Sidebar content-->
    </div>
    <div class="span10">
      <!--Body content-->
    </div>
  </div>
</div>
		<ul id="myul">
		<li class="list_1">播放列表</li>
		<li class="m_list" name="music/nhbk.mp3" id="0" onclick="show(0,this)">男孩别哭
			- 海龟先生</li>
		<li class="m_list" name="music/wzrmgcczj.mp3" id="1"
			onclick="show(1,this)">我在人民广场吃炸鸡 - 阿肆</li>
	</ul>
	<div class="container">
		<p id="music_info"></p>
		<canvas id='canvas' width="650" height="350"></canvas>
		<div class="photo-box">
			<div class="mod_focus_show" id="divimgplay">
				<div class="lyric-mask">
					<div class="lyric-box">
						<div class="lyric-content" id="show-lrc-content"></div>
					</div>
				</div>
				<ul id="big-photo" class="mod_focus_pic" id="divimginfog_imgPlayer">
					<li id="wlh" style="display: block;"></li>
				</ul>

				<ul id="photo-descriotion" class="mod_focus_title"
					id="ptitleg_imgPlayer">
				</ul>
			</div>
		</div>
		<audio id="player_1" class="mod_focus_title" src="" autoplay controls></audio>
	</div>
	
	</article>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<!-- 底部注入 -->
      <iframe width=100% height=105 src="iframe/footer.jsp"></iframe>
	
	<div>
		<div id="mylogin">
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog" id="admin">
					<div class="login">
						<div class="login_top">
							<p>登录幻听</p>
							<div class="login_close" data-dismiss="modal"></div>
						</div>
						<div class="login_content">
							<form>
								<input type="text" id="uname" placeholder="请输入您的用户名" /><br />
								<input type="text" id="pwd" placeholder="请输入您的密码" /><br />
								<button id="go">登录</button>
							</form>
						</div>
						<div class="login_bottom"></div>
					</div>
				</div>
			</div>
		</div>

		<div id="myreg">
			<div class="modal fade" id="myModals" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog" id="regs">
					<div class="regs">
						<div class="reg_top">
							<p>注册用户</p>
							<div class="reg_close" data-dismiss="modal"></div>
						</div>
						<div class="reg_content">
							<form>
								<input type="text" id="newname" placeholder="设置我的账户名" /><br />
								<input type="text" id="newpwd" placeholder="请设置我的密码" /><br />
								<input type="email" id="email" placeholder="您的邮箱账户" /><br /> <input
									type="text" id="txt" placeholder="请输入您收到的验证码" /><br />
								<button id="new">马上注册</button>
							</form>
						</div>
						<div class="reg_bottom"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery-1.11.0.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/index.js"></script>
	<script type="text/javascript" src="js/singer.js"></script>
</body>
</html>