<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="chrome=1">
<meta charset="UTF-8">
<base href="${deployName }">
<title>幻听-原创音乐网站</title>
<link rel="shortcut icon" type="image/icon" href="images/log.png" />
<link rel="stylesheet" type="text/css" href="css/index.css" />
<link rel="stylesheet" href="dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/stylesheet.css"
	media="screen">
<link rel="stylesheet" type="text/css" href="css/github-dark.css"
	media="screen">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/demo.css">

<title></title>
</head>

<body>

	<header>
		<a href="page/index.html"><span
			class="glyphicon glyphicon-chevron-left"></span> 回首页</a>
	</header>
	<ul id="myul">
		<li class="list_1">播放列表</li>
		<li class="m_list" name="music/nhbk.mp3" id="0" onclick="show(0,this)">男孩别哭 - 海龟先生</li>
		<li class="m_list" name="music/wzrmgcczj.mp3" id="1" onclick="show(1,this)">我在人民广场吃炸鸡 - 阿肆</li>
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
	
<script src="js/jquery-1.11.0.js"></script>
<script src="js/underscore.js"></script>
<script src="js/demo.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>

</body>
</html>
