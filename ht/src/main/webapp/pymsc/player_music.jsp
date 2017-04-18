<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<base href="${deployName }">
<title>幻听-原创音乐网站</title>
<link rel="shortcut icon" type="image/icon" href="images/log.png" />
<link rel="stylesheet" type="text/css" href="css/index.css" />
<link rel="stylesheet" href="dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="pymsc/css/player_music.css">
<link rel="stylesheet" href="pymsc/src/css/smusic.css" />
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
						<c:choose>
							<c:when test="${login_user !=null}">
								<li><a href="javascript:void(0)"
									class="hidden-md hidden-sm hidden-xs">${login_user }</a></li>
								<li><a href='javascript:void(0)'
									class="hidden-md hidden-sm hidden-xs" onclick='userout()'
									id='tuichu'>退出</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="javascript:void(0)"
									class="hidden-md hidden-sm hidden-xs" id="denglu"
									data-toggle="modal" data-target="#myModal">登录</a></li>
								<li id="newL"><a href="javescript:void(0)"
									class="hidden-md hidden-sm hidden-xs" id="out"
									data-toggle="modal" data-target="#myModals">注册</a></li>
							</c:otherwise>
						</c:choose>
						<li><a href="page/vip.jsp"
							class="hidden-md hidden-sm hidden-xs">VIP</a></li>
						<li><a href="javascript:void(0)"
							class="hidden-md hidden-sm hidden-xs">关于我们</a></li>
					</ul>
				</div>
			</nav>
			<nav class="navbar navbar-default" style="border-radius: 0"
				id="navbartop">
				<div class="container">
					<div class="row">
						<ul class="nav navbar-nav navbar-left" id="topnav">
							<li><div class="mydiv hidden-md hidden-sm hidden-xs"></div>
								<a href="page/index.jsp"
								class="col-lg-2 col-md-2 col-sm-3 col-xs-4" id="">首页</a></li>
							<li><a href="page/singer.jsp"
								class="col-lg-2 col-md-2 col-sm-3 col-xs-4">歌手</a></li>
							<li><a href="page/special.jsp"
								class="col-lg-2 col-md-2  col-xs-2  hidden-sm hidden-xs">专辑</a></li>
							<li><a href=""
								class="col-lg-2 col-md-2  hidden-xs  hidden-sm hidden-xs">MV</a></li>
							<li><a href=""
								class="col-lg-2 hidden-md hidden-sm hidden-xs">电台</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<article>
		<!--内容  -->
		<div id="MyPlayerDiv">
			<div class="grid-music-container f-usn">
				<div class="m-music-play-wrap">
					<div class="u-cover"></div>
					<div class="m-now-info">
						<h1 class="u-music-title">
							<strong>标题</strong><small>歌手</small>
						</h1>
						<div class="m-now-controls">
							<div class="u-control u-process">
								<span class="buffer-process"></span> <span
									class="current-process"></span>
							</div>
							<div class="u-control u-time">00:00/00:00</div>
							<div class="u-control u-volume">
								<div class="volume-process" data-volume="0.50">
									<span class="volume-current"></span> <span class="volume-bar"></span>
									<span class="volume-event"></span>
								</div>
								<a class="volume-control"></a>
							</div>
						</div>
						<div class="m-play-controls">
							<a class="u-play-btn prev" title="上一曲"></a> <a
								class="u-play-btn ctrl-play play" title="暂停"></a> <a
								class="u-play-btn next" title="下一曲"></a> <a
								class="u-play-btn mode mode-list current" title="列表循环"></a> <a
								class="u-play-btn mode mode-random" title="随机播放"></a> <a
								class="u-play-btn mode mode-single" title="单曲循环"></a>
						</div>
					</div>
				</div>
				<div class="m-music-list-wrap"></div>
			</div>
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
	<script type="text/javascript" src="dist/js/bootstrap.js"></script>
	<script type="text/javascript" src="pymsc/js/player_music.js"></script>
	<script src="pymsc/src/js/smusic.min.js"></script>
	<script type="text/javascript">

	var musicList = [
	             	{
	             		title : 'Sugar',
	             		singer : 'Maroon 5',
	             		cover  : 'pymsc/images/Maroon5.jpg',
	             		src    : ''
	             	},
	             	{
	             		title : '洋葱',
	             		singer : '平安',
	             		cover  : 'pymsc/images/yangcong.jpg',
	             		src    : ''
	             	},	
	             	{
	             		title : '她说',
	             		singer : '张碧晨',
	             		cover  : 'pymsc/images/yangcong.jpg',
	             		src    : ''
	             	},
	             	{
	             		title : '海阔天空',
	             		singer : 'beyond',
	             		cover  : 'pymsc/images/yangcong.jpg',
	             		src    : ''
	             	}
	 ];
	new SMusic({
	       musicList:musicList
	 });
	</script>
</body>
</html>
