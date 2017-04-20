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
</head>
<body>
	<header>
		<nav id="head">
			<nav class="navbar navbar-default" id="lognav">
				<div class="container">
					<div class="navbar-header navbar-left">
						<a href="javascript:void(0)" class="navbar-brand"><img
							src="images/log.png"></a> <a href="javascript:void(0)"
							class="navbar-brand"><h3>幻听音乐</h3></a>
					</div>
					<ul class="nav navbar-nav navbar-right" id="nav_a">
						<c:choose>
							<c:when test="${login_user !=null && login_user_id!=null}">
								<li><a href="page/user.jsp?userid=${login_user_id}"
									class="hidden-md hidden-sm hidden-xs">${login_user }</a></li>
								<li class="dropdown"><a href="javascript:void(0)"
									class="dropdown-toggle" data-toggle="dropdown" role="button"
									aria-haspopup="true" aria-expanded="false"><span
										class="caret"></span> </a>
									<ul class="dropdown-menu">
										<li><a
											href="page/userinfoModify.jsp?userid=${login_user_id}">修改个人信息</a></li>
									</ul></li>
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
								class="col-lg-2 col-md-2 col-sm-3 col-xs-4">首页</a></li>
							<li><a href="page/singer.jsp"
								class="col-lg-2 col-md-2 col-sm-3 col-xs-4">歌手</a></li>
							<li><a href="page/special.jsp"
								class="col-lg-2 col-md-2  col-xs-2  hidden-sm hidden-xs">专辑</a></li>
							<li><a href="page/mv.jsp"
								class="col-lg-2 col-md-2  hidden-xs  hidden-sm hidden-xs">MV</a></li>
							<li><a href="page/friend.jsp"
								class="col-lg-2 hidden-md hidden-sm hidden-xs">朋友</a></li>
						</ul>
						<form action="song/search" method="post" id="search" class="navbar-form navbar-left" role="search">
							<div class="form-group">
								<input type="text" name="soname" class="form-control soname" placeholder="单曲" >
							</div>
							<button type="submit" class="btn btn-default">查询</button>
						</form>
					</div>
				</div>
			</nav>
		</nav>
		<div class="banner">
			<div class="row">
				<div id="myCarousel" class="carousel slide">
					<div class="carousel-inner">
						<div class="active item">
							<img src="images/img4.jpg">
						</div>
						<div class="item">
							<img src="images/img2.jpg">
						</div>
						<div class="item">
							<img src="images/img3.jpg">
						</div>
					</div>
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>

					<a class="carousel-control left" id="carousel_left"
						data-slide="prev">&lsaquo;</a> <a class="carousel-control right"
						id="carousel_right" data-slide="next">&rsaquo;</a>
				</div>
			</div>
		</div>
	</header>
	<article>
		<div class="content1">
			<div class="container">
				<div class="row">
					<div class="album">
						<a class="pull-left"><h4>热门专辑</h4></a> <a
							href="javascript:void(0)" class="pull-right more">更多</a>
					</div>
					<div class="content1_1">
						<div class="content1_1_1">
							<!-- 站内专辑显示 -->
						</div>

						<div class="content1_1_2 hidden-md hidden-sm hidden-xs">
							<span class="span1">站内歌曲</span>

							<table id="mytablet">

								<!-- 显示歌曲 -->
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="content2">
			<div class="container">
				<div class="row">
					<div class="mymv">
						<a class="pull-left"><h4>最新MV</h4></a> <a href=""
							class="pull-right more">更多</a>
					</div>
					<div class="mv">
						<ul id="warp">
							<!-- mv显示 -->

						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="content3">
			<div class="container">
				<div class="row">
					<div class="sing">
						<a class="pull-left"><h4>站内歌手</h4></a> <a href=""
							class="pull-right more">更多</a>
					</div>

					<div class="content3_1">
						<!-- 显示歌手 -->
					</div>

				</div>
			</div>
		</div>
	</article>

	<!-- 底部注入 -->
	<iframe width=100% height=108 src="iframe/footer.jsp"></iframe>

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
								<input type="password" id="pwd" placeholder="请输入您的密码" /><br />
								<p id="go" onclick="userLogin()">登录</p>
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
								<div class="ins">
									<input type="text" id="newname" placeholder="账户名由4-7个字符组成" /><span
										class=""></span>
								</div>
								<div class="ins">
									<input type="password" id="newpwd"
										placeholder="密码名由6-16个数字、字母组成" /><span class=""></span>
								</div>
								<div class="ins">
									<input type="email" id="email" placeholder="您的邮箱账户" /><span
										class=""></span>
								</div>
								<div class="ins">
									<input type="text" id="txt" placeholder="请输入您收到的验证码" /> <span
										id="myspanb" onclick="sendCode()">获取验证码</span>
								</div>
								<p id="new" onclick="userRegister()">马上注册</p>
							</form>
						</div>
						<div class="reg_bottom"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery-1.11.0.js"></script>
	<script type="text/javascript" src="dist/js/bootstrap.js"></script>
	<script type="text/javascript" src="js/index.js"></script>
	<script type="text/javascript" src="js/search.js"></script>
</body>
</html>