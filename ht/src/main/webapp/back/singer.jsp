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
<link rel="stylesheet" href="dist/css/bootstrap.css">
</head>
<body>
	<!-- 头部 -->
	<header>
		<nav class="navbar navbar-ht">
			<div class="container-fluid">
				<div class="navbar-header">
					<a href="javascript:void(0)" class="navbar-brand"> <img
						src="images/log.png">
					</a> <a href="javascript:void(0)" class="navbar-brand">
						<h4>幻听音乐</h4>
					</a>
				</div>
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-left" id="topnav">
						<li><div class="mydiv hidden-md hidden-sm hidden-xs"></div> <a
							href="back/manage.jsp">单曲管理</a></li>
						<li><a href="back/singer.jsp">歌手管理</a></li>
						<li><a href="back/specialInfo.jsp">专辑管理</a></li>
						<li><a href="back/mvManage.jsp">短片管理</a></li>
						<li><a href="back/userManage.jsp">用户管理</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<c:if test="${login_admin != null }">
							<li><a href="javascript:void(0)">${login_admin }</a></li>
							<li class="dropdown"><a href="javascript:void(0)"
							class="dropdown-toggle" data-toggle="dropdown" role="button"
							aria-haspopup="true" aria-expanded="false"><span
								class="caret"></span> </a>
							<ul class="dropdown-menu">
								<li><a href="javascript:void(0)" onclick="loginOut()">注销</a></li>
								<li><a href="back/login.jsp">切换用户</a></li>
							</ul></li>
						</c:if>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- 内容 -->
	<article>
		<div id="articleDiv">
			<ul class="nav nav-pills nav-stacked">
				<li role="presentation" class="active"><a href="back/singer.jsp">歌手信息</a></li>
				<li role="presentation"><a href="back/singerRefer.jsp">歌手查询</a></li>
			</ul>
		</div>
		<div id="panelDiv">
			<div class="panel panel-default">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>歌手编号</th>
							<th>歌手名</th>
							<th>歌手英文名</th>
							<th>国籍</th>
							<th>性别</th>
							<th>头像路径</th>
							<th>歌手介绍</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody id="tableBody">
						
					</tbody>
				</table>
			</div>

			<!-- 分页 -->
			<nav>
				<ul class="pagination">
					
				</ul>
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
	<script type="text/javascript" src="js/singermanage.js"></script>
	<script type="text/javascript" src="js/singerRefer.js"></script>
</body>
</html>