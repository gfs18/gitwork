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
<link rel="stylesheet" type="text/css" href="css/singer_more.css" />
<link rel="stylesheet" href="dist/css/bootstrap.css">
<link rel="stylesheet" href="css/index.css">
</head>
<body>
	<div class="big_box"></div>
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
							<li>
								<a href="page/index.jsp"
								class="col-lg-2 col-md-2 col-sm-3 col-xs-4" id="">首页</a></li>
							<li><div class="mydiv hidden-md hidden-sm hidden-xs"></div><a href="page/singer.jsp"
								class="col-lg-2 col-md-2 col-sm-3 col-xs-4">歌手</a></li>
							<li><a href="page/special.jsp"
								class="col-lg-2 col-md-2  col-xs-2  hidden-sm hidden-xs">专辑</a></li>
							<li><a href="page/mv.jsp"
								class="col-lg-2 col-md-2  hidden-xs  hidden-sm hidden-xs">MV</a></li>
							<li><a href="page/friend.jsp"
								class="col-lg-2 hidden-md hidden-sm hidden-xs">朋友</a></li>
						</ul>
						<!-- <form  id="search" class="navbar-form navbar-left" role="search">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="单曲/歌手/专辑">
							</div>
							<button type="submit" class="btn btn-default">查询</button>
						</form> -->
					</div>
				</div>
			</nav>
		</div>
	</header>
	<article>
		<div class="content">
			<div class="container">
				<div class="row" id="headrow">
					<div id="singer" class="col-lg-4 col-md-4 hidden-sm hidden-xs">
						<!-- <img src="images/singer1.jpg" id="currentUserPhoto"/> -->
					</div>
					<div id="singer_right"
						class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
						<!--  <p id="singer_name">薛之谦</p>
                <p id="singer_info">歌手介绍：</p>
                <p id="singer_opus">单曲 <span id="opus"> &nbsp;0&nbsp;</span>&nbsp;&nbsp;&nbsp;专辑&nbsp;<span id="special">&nbsp;1</span>&nbsp;</p> -->
					</div>
					<div class="btns">
						<button class="t_play">
							<span class="glyphicon glyphicon-play"></span> 播放歌曲
						</button>
						<!-- <button class="t_add hidden-sm hidden-xs">
							<span class="glyphicon glyphicon-plus"></span> 关注该歌手
						</button> -->
					</div>
				</div>
				<p id="zp">作品</p>
				<div id="user_con">
					<div class="row" id="first" >
						<div class="opus_no_1 col-lg-1 col-md-1 col-sm-1 col-xs-1"></div>
						<div class="opus_name_! col-lg-7 col-md-7 col-sm-11 col-xs-11"
							style="border-left: 1px solid #E1E1E1;">
							<span class="m_name_1">歌曲名</span>
						</div>
						<div class="opus_play_1 col-lg-2 col-md-2 hidden-sm hidden-xs"
							style="border-left: 1px solid #E1E1E1; width:379px;">时长</div>
						
					</div>
					<div id="big">


						<div class="row">

							<div id="ROW"></div>

							<div id="ROW1"></div>
						</div>

					</div>

				</div>
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

	<script type="text/javascript" src="js/jquery-1.11.0.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/index.js"></script>
	<script type="text/javascript" src="js/singer_more.js"></script>
</body>
</html>