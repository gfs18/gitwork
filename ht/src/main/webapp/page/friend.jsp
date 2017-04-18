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
<link rel="stylesheet" type="text/css" href="css/friend.css" />
<link rel="stylesheet" href="dist/css/bootstrap.css">
<link rel="stylesheet" href="css/index.css">
</head>
<body>
	<div class="big_box"></div>
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
		<nav class="navbar navbar-default" id="navbartop">
			<div class="container">
				<div class="row">
					<ul class="nav navbar-nav navbar-left" id="topnav">
						<li> <a
							href="page/index.jsp" class="col-lg-2 col-md-2 col-sm-3 col-xs-4"
							id="">首页</a></li>
						<li><a href="page/singer.jsp"
							class="col-lg-2 col-md-2 col-sm-3 col-xs-4">歌手</a></li>
						<li><a href="page/special.jsp"
							class="col-lg-2 col-md-2  col-xs-2  hidden-sm hidden-xs">专辑</a></li>
						<li><a href="page/mv.jsp"
							class="col-lg-2 col-md-2  hidden-xs  hidden-sm hidden-xs">MV</a></li>
						<li><div class="mydiv hidden-md hidden-sm hidden-xs"></div><a href="page/friend.jsp"
							class="col-lg-2 hidden-md hidden-sm hidden-xs">朋友</a></li>

					</ul>
				</div>
			</div>
		</nav>
	</div>
	<article>

		<div class="container friend">
			<form action="friend/commentInsert" method="post"
				enctype="multipart/form-data">
				<input type="text" id="content" class="form-control" name="content"
					placeholder="说点什么吧" src="images/2_1.png" />
				<button class="btn btn-primary" id="ok">发表</button>
				<span class="add_img"> <img src="images/not_image.png"
					class="show_img"> <input class="myfile" type="file"
					name="picData" accept="image/*" onchange="chgPic(this)" />
				</span>
			</form>
			<p class="news">动态</p>
			<div class="content">
				<!-- 评论显示 -->
			</div>
			<!-- 分页 -->
			<div id="paginationDiv">
				<ul class="pagination"></ul>
			</div>

		</div>
		<!-- <p id="mymore" onclick="showMoreArticle()">更多动态</p> -->
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
	<script type="text/javascript" src="js/friend.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/index.js"></script>
</body>
</html>