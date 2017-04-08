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
	<link rel="stylesheet" type="text/css" href="css/special.css">
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
						<li><div class="mydiv hidden-md hidden-sm hidden-xs"></div><a href="page/index.jsp"  class="col-lg-2 col-md-2 col-sm-3 col-xs-4">首页</a></li>
						<li><a href="page/singer.jsp"  class="col-lg-2 col-md-2 col-sm-3 col-xs-4">歌手</a></li>
						<li><a href="page/special.jsp"  class="col-lg-2 col-md-2  col-xs-2  hidden-sm hidden-xs">专辑</a></li>
						<li><a href="page/mv.jsp"  class="col-lg-2 col-md-2  hidden-xs  hidden-sm hidden-xs">MV</a></li>
						<li><a href="page/friend.jsp"  class="col-lg-2 hidden-md hidden-sm hidden-xs">朋友</a></li>
					</ul>
				</div>
			</div>
		</nav>
        </div>
        </header>
   <article>
        <div class="container">
   	  <div class="lable row">
   	  	  	<li class="col-lg-2 col-md-2 col-sm-3 col-xs-3" id="new_ul"><a href="javascript:void(0)" class="click">最新专辑</a></li>
   	  	  	<li class="col-lg-2 col-md-2 col-sm-3 col-xs-3" id="hot_ul"><a href="javascript:void(0)">热门专辑</a></li>
   	  	  	<li class="col-lg-2 col-md-2 col-sm-3 hidden-xs" id="china_ul"><a href="javascript:void(0)">华语</a></li>
   	  	  	<li class="col-lg-2 col-md-2 hidden-sm hidden-xs" id="hip_ul"><a href="javascript:void(0)">日韩</a></li>
   	  	  	<li class="col-lg-2 col-md-2 hidden-sm hidden-xs" id="eng_ul"><a href="javascript:void(0)">欧美</a></li>
   	  </div>
           <p class="class">最新专辑</p>
            <div class="special">
                <ul class="new_ul">
                    <!-- <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑1.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑1.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑1.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑1.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑1.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑1.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑1.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑1.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                </ul>
                <ul class="hot_ul">
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑2.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑2.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑2.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑2.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑2.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑2.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑2.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑2.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                </ul>
                <ul class="china_ul">
                    <li class="s_li">
                    <div class="list_img">
                        <div class="play">
                            <img src="images/cover_play.png">
                        </div>
                        <img src="images/专辑3.jpg" class="myimg">
                    </div>
                    <span class="s_p">SQUARE TWO</span>
                    <span class="s_p">BLACKPINK</span>
                    <span class="s_p">2016-11-01</span>
                </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑3.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑3.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑3.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑3.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑3.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑3.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑3.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                </ul>
                <ul class="hip_ul">
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑4.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑4.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑4.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑4.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑4.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑4.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑4.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑4.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                </ul>
                <ul class="eng_ul">
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑5.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑5.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑5.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑5.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑5.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑5.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑5.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li>
                    <li class="s_li">
                        <div class="list_img">
                            <div class="play">
                                <img src="images/cover_play.png">
                            </div>
                            <img src="images/专辑5.jpg" class="myimg">
                        </div>
                        <span class="s_p">SQUARE TWO</span>
                        <span class="s_p">BLACKPINK</span>
                        <span class="s_p">2016-11-01</span>
                    </li> -->
                </ul>
            </div>
      <ul class="pagination pagination-lg" id="content">
          <li class="pagenation"><a href="#">&laquo;</a>
          <li class="pagenation"><a href="#">1</a>
          <li class="pagenation"><a href="#">2</a>
          <li class="pagenation"><a href="#">3</a>
          <li class="pagenation"><a href="#">4</a>
          <li class="pagenation"><a href="#">5</a>
          <li class="pagenation"><a href="#">&raquo;</a>
      </ul>
 </div>

   </article>
	
	<!-- 底部注入 -->
      <iframe width=100% height=105 src="iframe/footer.jsp"></iframe>
	
      <nav class="navbar navbar-default navbar-fixed-bottom bg">
        <audio id="music" src="music/夏婉安 - 一个人.mp3"></audio>
        <i><img class="show" id="show" src="images/playbar_02.png"></i>
        <i><img class="play" id="play" onclick="myplay(this)" src="images/playbar_11.png"></i>
        <i><img class="fast" id="fast" src="images/playbar_05.png"></i>
        <i class="mask"><img class="mask1" src="images/fwq.jpg"></i>
        <p class="p_title">一个人</p>
        <div id="progressWrap"> 
        <div id="playProgress"> 
        <div id="playProgresshi"></div>
        </div>
        </div>
        <span id="showProgress"><em>00:00</em>/ <em>00:00</em></span>
        <div class="suop">
            <i><img class="suo" src="images/playbar_49.png"></i>
            <i><img class="suo1" src="images/playbar_51.png"></i>
        </div>
        <i><img title="顺序播放" class="xh" id="xh" src="images/playbar_23.png"></i>
        <i><img title="随机播放" class="sj" id="sj" src="images/playbar_17.png"></i>
        <i><img class="sc" title="收藏" src="images/playbar_40.png"></i>
        <i><img class="muted" id="muted" onclick="Muted(this)" src="images/playbar_14.png"></i>
        <div id="volume">
         <div class="volume_1" id="volume_1">
            <div class="volume_1_1" id="volume_1_1"></div>
         </div>
         <div class="volume_2" id="volume_2"></div>
        </div>
        <i><img class="meu" tabindex="0" hidefocus="true" src="images/playbar_48.png"></i>
        <div class="mymeu">
            <ul>
                <li class="meuli">
                    <span class="span2">阿悄 - 死皮赖脸</span>
                    <span class="span3">03:14</span>
                </li>
                <li class="meuli">
                    <span class="span2">夏婉安 - 一个人</span>
                    <span class="span3">03:14</span>
                </li>
                <li class="meuli">
                    <span class="span2">威仔 - 不爱又何必纠缠</span>
                    <span class="span3">03:14</span>
                </li>
            </ul>
        </div>
        <p class="shuo">0</p>
    </nav>
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
    <script type="text/javascript" src="js/special.js"></script>
    <script type="text/javascript" src="js/bootstrap-paginator.js"></script>
</body>
</html>