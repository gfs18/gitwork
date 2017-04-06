<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<base href="${deployName }">
	<title>幻听-原创音乐网站</title>
	<link rel="shortcut icon" type="image/icon" href="images/log.png"/>
	<link rel="stylesheet" type="text/css" href="css/index.css"/>
	<link rel="stylesheet" href="dist/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/singer.css">
  <link rel="stylesheet" type="text/css" href="css/respect.css">
</head>
<body>
		<div id="head">
			<nav class="navbar navbar-default" id="lognav">
				<div class="container">
					<div class="navbar-header navbar-left">
						<a href="" class="navbar-brand"><img src="images/log.png"></a>
						<a href="" class="navbar-brand"><h3>幻听音乐</h3></a>
					</div>
                    <ul class="nav navbar-nav navbar-right" id="nav_a">
                        <li><a href="javascript:" class="hidden-md hidden-sm hidden-xs" id="denglu" data-toggle="modal" data-target="#myModal">登录</a></li>
                        <li id="newL"><a href="" class="hidden-md hidden-sm hidden-xs" id="out" data-toggle="modal" data-target="#myModals">注册</a></li>
                        <li><a href="page/vip.jsp" class="hidden-md hidden-sm hidden-xs">VIP</a></li>
                        <li><a href="" class="hidden-md hidden-sm hidden-xs">客服中心</a></li>
                    </ul>
				</div>
			</nav>
			<nav class="navbar navbar-default" style="border-radius: 0" id="navbartop">
				<div class="container">
                    <div class="row">
					<ul class="nav navbar-nav navbar-left" id="topnav">
						<li><div class="mydiv hidden-md hidden-sm hidden-xs"></div><a href="page/index.jsp"  class="col-lg-2 col-md-2 col-sm-3 col-xs-4" id="">首页</a></li>
						<li><a href="page/singer.jsp"  class="col-lg-2 col-md-2 col-sm-3 col-xs-4">歌手</a></li>
						<li><a href="page/special.jsp"  class="col-lg-2 col-md-2  col-xs-2  hidden-sm hidden-xs">专辑</a></li>
						<li><a href="page/mv.jsp"  class="col-lg-2 col-md-2  hidden-xs  hidden-sm hidden-xs">MV</a></li>
						<li><a href=""  class="col-lg-2 hidden-md hidden-sm hidden-xs">电台</a></li>
					</ul>
				</div>
			</div>
			</nav>
		</div>
   <article>
   	  <div class="respect">
          <p class="vip_title">VIP</p>
          <p class="vip_content">拥有音乐特权、演唱会特权、游戏特权、身份特权四大类别</p>
          <p class="vip_content">为用户提供尊贵的音乐享受！</p>
          <div class="vip_myimg">
              <span><img src="vip/vip.png"></span>
              <span class="icon"><i class="icon_1"><img src="vip/icon_sprite_1_08.png"></i></span>
              <span class="icon"><i class="icon_2"><img src="vip/icon_sprite_2_14.png"></i></span>
              <span class="icon"><i class="icon_3"><img src="vip/icon_sprite_2_22.png"></i></span>
              <span class="icon"><i class="icon_4"><img src="vip/icon_sprite_2_23.png"></i></span>
              <span class="icon"><i class="icon_5"><img src="vip/icon_sprite_2_15.png"></i></span>
              <span class="icon"><i class="icon_6"><img src="vip/icon_sprite_2_25.png"></i></span>
              <span class="icon"><i class="icon_7"><img src="vip/icon_sprite_2_27.png"></i></span>
              <span class="icon"><i class="icon_8"><img src="vip/icon_sprite_1_09.png"></i></span>
              <span class="icon"><i class="icon_9"><img src="vip/icon_sprite_2_16.png"></i></span>
          </div>
      </div>
      <div class="privilege">
        <div class="privilege_1">
        <p class="privilege_title">音乐特权</p>
        <h3>优质音乐，无处不乐！</h3>
        <p class="privilege_content">幻听音乐为用户提供高品质音乐和无损音乐，最大限度的保存了所有声音细节，再现音乐现场；同时，通过音乐云存储，让用户可以随时随地享受“个人乐库”所有好音乐；此外，VIP还可以通过设置空间背景音乐和点歌，把好音乐分享给大家，让好音乐无处不在。</p>
      </div>
      <div class="privilege_2">
      <div class="privilege_2_1" id="privilege_2_1">
        <span><i class="music_cd_3"><img class="music_cd" src="vip/icon_sprite_2_39.png"></i></span>
        <span><i class="music_cd_4"><img class="music_cd" src="vip/icon_sprite_2_30.png"></i></span>
        <span><i class="music_cd_5"><img class="music_cd" src="vip/icon_sprite_2_37.png"></i></span>
      </div>
      <div class="privilege_2_2">
        <span><i class="music_cd_1" id="music_cd_1"><img src="vip/music_cd.png"></i></span>
        <span><i class="music_cd_2" id="music_cd_2"><img src="vip/music_cd_c.png"></i></span>
      </div>
      </div>
      </div>
      <div class="game">
        <div class="game_1">
        <p class="game_title">游戏特权</p>
        <h3>潮流音乐，游戏人生！</h3>
        <p class="game_content">音乐用户喜欢的游戏推荐、最新的游戏抢先体验；专属道具、经验加成、豪华礼包，绿钻给您最畅快的游戏体验。</p>
        </div>
        <div class="game_2">
          <span><i class="icon_sprite_1"><img src="vip/game_03.png"></i></span>
          <span><i class="icon_sprite_2"><img src="vip/icon_sprite_1_5.png"></i></span>
           <span><i class="icon_sprite_3"><img src="vip/icon_sprite_1_6.png"></i></span>
            <span><i class="icon_sprite_4"><img src="vip/icon_sprite_1_7.png"></i></span>
          <span><i class="icon_sprite_5"><img src="vip/icon_sprite_1_16.png"></i></span>
          <div class="zg1"></div>
          <span><i class="icon_sprite_5_1"><img src="vip/icon_sprite_1_16_1.png"></i></span>
          <span><i class="icon_sprite_6"><img src="vip/icon_sprite_1_14.png"></i></span>
          <div class="zg2"></div>
          <span><i class="icon_sprite_6_1"><img src="vip/icon_sprite_1_14_1.png"></i></span>
          <span><i class="icon_sprite_7"><img src="vip/icon_sprite_1_18.png"></i></span>
          <div class="zg3"></div>
          <span><i class="icon_sprite_7_1"><img src="vip/icon_sprite_1_18_1.png"></i></span>
        </div>
      </div>
   </article>
	
	<!-- 底部注入 -->
      <iframe width=100% height=105 src="iframe/footer.jsp"></iframe>

	<div>
    <div id="mylogin">
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" id="admin">
                <div class="login">
                    <div class="login_top"><p>登录幻听</p>
                    <div class="login_close"  data-dismiss="modal"></div>
                    </div>
                    <div class="login_content">
                        <form>
                            <input type="text" id="uname" placeholder="请输入您的用户名"/><br/>
                            <input type="text" id="pwd" placeholder="请输入您的密码"/><br/>
                            <button id="go">登录</button>
                        </form>
                    </div>
                    <div class="login_bottom"></div>
                </div>
            </div>
        </div>
    </div>

    <div id="myreg">
        <div class="modal fade" id="myModals" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" id="regs">
                <div class="regs">
                    <div class="reg_top"><p>注册用户</p>
                        <div class="reg_close"  data-dismiss="modal"></div>
                    </div>
                    <div class="reg_content">
                        <form>
                            <input type="text" id="newname" placeholder="设置我的账户名"/><br/>
                            <input type="text" id="newpwd" placeholder="请设置我的密码"/><br/>
                            <input type="email" id="email" placeholder="您的邮箱账户"/><br/>
                            <input type="text" id="txt" placeholder="请输入您收到的验证码"/><br/>
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
    <script type="text/javascript" src="js/index.js"></script>
    <script type="text/javascript" src="js/vip.js"></script>
</body>
</html>