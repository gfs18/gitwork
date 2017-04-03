<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<base href="${deployName }">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>幻听-网站后台登陆</title>
<link rel="shortcut icon" type="image/icon" href="images/log.png" />
<link type="text/css" rel="stylesheet" href="easyui/themes/icon.css">
<link type="text/css" rel="stylesheet"
	href="easyui/themes/default/easyui.css">
<link type="text/css" rel="stylesheet" href="css/login.css">
</head>
<body>

	<div id="loginDiv">
		<p id="til"><img src="images/log.png" style="width: 40px;height: 40px;"><strong>幻听音乐</strong></p>
		<form action="admin/login" id="loginForm" method="POST">
			<p id="error"><label>${errorMsg }</label></p><c:remove var="errorMsg" scope="session"/>
			<p><input name="aname" placeholder="请输入用户名或id" required="required" id="aname" value="DJJPYMU"></p>
			<p><input type="password" name="apwd" placeholder="请输入密码" required="required" id="apwd"></p>
			<p><img src="vcode.jpg" title="看不清,换一张"/>&nbsp;<input name="vcode" placeholder="请输入验证码"  id="vcode" required="required"></p>
			<p><a id="btnLogin" href="javascript:void(0)">登录</a></p>
		</form> 
	</div>

	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="js/login.js"></script>
</body>
</html>