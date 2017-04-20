<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<base href="${deployName }">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改个人信息</title>
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
				
	</header>
	<!-- 内容 -->
	<article>
		<div id="panelDiv">
			<div class="formDiv">
				<form action="user/modifyFore" method="post" enctype="multipart/form-data" >
					<div class="form-group"> 
						<label>用户编号:</label>
						<label id="labelid"></label>
						<input type="hidden" id="userid" class="form-control" name="userid" />
					</div>
					<div class="form-group">
						<label>用户名:</label>
						<label id="labelname"></label>
						 <input type="hidden" class="form-control"  name="uname">
					</div>
					<div class="form-group">
						<label for="uemail">用户邮箱:</label> <input type="text"
							class="form-control" id="uemail" name="uemail" />
					</div>
					<div class="form-group">
						<label>头像:</label> <input type="file"
						 name="picData" onchange="chgPic(this)"><img id="upicPath"/>
					</div>
					<div class="form-group">
						<label for="uintroduce">简介:</label> <input type="text" id="uintroduce"
							class="form-control" name="uintroduce" />
					</div>
					<button type="submit" class="btn btn-default">修改</button>
				</form>
			</div>
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
	<script type="text/javascript" src="js/userModify.js"></script>
</body>
</html>