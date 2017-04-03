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
	<link rel="stylesheet" type="text/css" href="css/mvbf.css"/>
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
						<li><a href=""class="hidden-md hidden-sm hidden-xs" data-toggle="modal" data-target="#myModal">登录</a></li>
						<li><a href="" class="hidden-md hidden-sm hidden-xs" data-toggle="modal" data-target="#myModals">注册</a></li>
						<li><a href="page/vip.html" class="hidden-md hidden-sm hidden-xs">VIP</a></li>
						<li><a href="" class="hidden-md hidden-sm hidden-xs">客服中心</a></li>
					</ul>
				</div>
			</nav>
            <nav class="navbar navbar-default" style="border-radius: 0" id="navbartop">
                <div class="container">
                    <div class="row">
                        <ul class="nav navbar-nav navbar-left" id="topnav">
                            <li><div class="mydiv hidden-md hidden-sm hidden-xs"></div><a href="page/index.html"  class="col-lg-2 col-md-2 col-sm-3 col-xs-4">首页</a></li>
                            <li><a href="page/singer.html"  class="col-lg-2 col-md-2 col-sm-3 col-xs-4">歌手</a></li>
                            <li><a href="page/special.html"  class="col-lg-2 col-md-2  col-xs-2  hidden-sm hidden-xs">专辑</a></li>
                            <li><a href="page/mv.html"  class="col-lg-2 col-md-2  hidden-xs  hidden-sm hidden-xs">MV</a></li>
                            <li><a href="page/friend.html"  class="col-lg-2 hidden-md hidden-sm hidden-xs">朋友</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
		</div>
		</header>
     <article>
        <div id="mzPlayer"><p class="playm">歌名</p><p class="plays">歌手</p></div>
        <div id="Player">
     	<video id="myPlayer" src="mv/lightNight.mp4" onclick="play()" autoplay="autoplay">
				你的网页不支持html5
	   </video>
	   <div id="xgPlayer">
	    <span id="xgmv">相关mv</span>
	   	<ul id="myul1">

	   	</ul>
	   </div>
	   <div id="controls1">
		    <div id="progressWrap1">  
	            <div id="playProgress1">
	            <div id="dian"></div>
                <div id="dianxianshi"></div> 
	            </div>
            </div>
            
            <span id="showProgress1"><em>00:00</em>/ <em>00:00</em></span>
                <i><img class="play1"  id="play1" src="images/playbar_09.png" onclick="Play1(this)"></i>
                <i><img class="muted1" src="images/playbar_14.png" id="muted1" onclick="Muted1(this)"></i>
                <div id="volume1">
                <div id="xianshi"></div>
		  		 <div class="volume_3" id="volume_3"></div>
		  		</div>
		  		<a><i class="glyphicon glyphicon-fullscreen quanp" id="quanp"></i></a>
	   </div>
	</div>
	<div id="controls2">
		<p class="tjmv">推荐MV</p>
		<div class="mvp">
		<ul>
		<li>
			<div class="mvp_1"><a href=""><img src="images/mv-1.jpg"></a></div>
			<div class="mvp_2"><a href=""><span>每一天</span><span class="mv_2_1">鞠婧祎</span></a></div>
		</li>
		<li class="li1"><div class="mvp_1"><a href=""><img src="images/mv-2.jpg"></a></div>
			<div class="mvp_2"><a href=""><span>告白气球</span><span class="mv_2_1">周杰伦</span></a></div>
			</li>
        <li class="li1"><div class="mvp_1"><a href=""><img src="images/mv-3.jpg"></a></div>
		<div class="mvp_2"><a href=""><span>你一言我一语</span><span class="mv_2_1">李建</span></a></div>
		</li>
		<li><div class="mvp_1"><a href=""><img src="images/mv-7.jpg"></a></div>
			<div class="mvp_2"><a href=""><span>呵护</span><span class="mv_2_1">梁静茹</span></a></div>
			</li>
			<li id="li1"><div class="mvp_1"><a href=""><img src="images/mv-5.jpg"></a></div>
			<div class="mvp_2"><a href=""><span>你干嘛</span><span class="mv_2_1">罗志祥</span></a></div>
			</li>
			<li id="li2"><div class="mvp_1"><a href=""><img src="images/mv-10.jpg"></a></div>
			<div class="mvp_2"><a href=""><span>败将</span><span class="mv_2_1">陈势安</span></a></div>
			</li>
                            
        </ul>
		</div>
	</div>
     </article>
	<footer>
		<div class="container-fluid"  id="myfooter">
            <div class="container" id="footer_content">
                <div class="row" id="myrow">
                <span class="col-lg-3 col-md-3 col-sm-3 col-xs-3">关于我们</span>
                <span class="col-lg-3 col-md-3 col-sm-3 col-xs-3">幻听服务</span>
                <span class="col-lg-3 col-md-3 col-sm-3 col-xs-3">联系我们</span>
                <span class="col-lg-3 col-md-3 col-sm-3 col-xs-3">招商合作</span>
           </div>
                <p>幻听-原创音乐网站-版权所有 ©</p>
        </div>
		</div>
	</footer>
   
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
    <script type="text/javascript" src="js/mvbf.js"></script>

</body>
</html>