<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<base href="${deployName }">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="shortcut icon" type="image/icon" href="images/log.png" />
<link rel="stylesheet" type="text/css" href="css/manage.css" />
<link rel="stylesheet" type="text/css" href="css/index.css" />
<link rel="stylesheet" type="text/css" href="css/singer.css">
<link rel="stylesheet" href="dist/css/bootstrap.css">
</head>
<body>
	<!-- 头部 -->
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
						<div  id="search" class="navbar-form navbar-left" role="search">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="单曲/歌手/专辑">
							</div>
							<a class="btn btn-default" href="page/index.jsp">查询</a>
						</div>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<!-- 内容 -->
	<article>
		<div id="panelDiv">
			<div class="panel panel-default">
				<table class="table table-striped">
					<thead>
						<tr>
							<th width="150px">单曲名</th>
							<th width="100px">图片</th>
							<th>出版时间</th>
							<th>单曲时长</th>
							<th> </th>
						</tr>
					</thead>
					<tbody id="tableBody"></tbody>
				</table>
			</div>

			<!-- 分页 -->
			<nav>
				<ul class="pagination"></ul>
			</nav>

		</div>
	</article>
	<!-- 底部 -->
	<footer>
		<div class="container-fluid" id="myfooter">
			<div class="container" id="footer_content">
				<div class="row" id="myrow">
					<span class="col-lg-3 col-md-3 col-sm-3 col-xs-3">关于我们</span> <span
						class="col-lg-3 col-md-3 col-sm-3 col-xs-3">幻听服务</span> <span
						class="col-lg-3 col-md-3 col-sm-3 col-xs-3">联系我们</span> <span
						class="col-lg-3 col-md-3 col-sm-3 col-xs-3">招商合作</span>
				</div>
				<p>幻听-原创音乐网站-版权所有 ©</p>
			</div>
		</div>
	</footer>

	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery-1.11.0.js"></script>
	<script type="text/javascript" src="dist/js/bootstrap.js"></script>
	<script type="text/javascript" src="js/search.js"></script>
</body>
</html>