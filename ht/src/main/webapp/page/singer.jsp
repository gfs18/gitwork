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
<link rel="stylesheet" type="text/css" href="css/index.css" />
<link rel="stylesheet" href="dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/singer.css">
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
						<li><a href="javascript:"
							class="hidden-md hidden-sm hidden-xs" id="denglu"
							data-toggle="modal" data-target="#myModal">登录</a></li>
						<li id="newL"><a href=""
							class="hidden-md hidden-sm hidden-xs" id="out"
							data-toggle="modal" data-target="#myModals">注册</a></li>
						<li><a href="page/vip.jsp"
							class="hidden-md hidden-sm hidden-xs">VIP</a></li>
						<li><a href="" class="hidden-md hidden-sm hidden-xs">客服中心</a></li>
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
					</div>
				</div>
			</nav>
		</div>
	</header>
	<article>
		<div id="mygroup">
			<div class="group">
				<li><a href="#">全部</a></li>
				<li><a href="#">华语男歌手</a></li>
				<li><a href="#">华语女歌手</a></li>
				<li><a href="#">华语女歌手</a></li>
				<li><a href="#">日韩男歌手</a></li>
				<li><a href="#">日韩女歌手</a></li>
				<li><a href="#">日韩组合</a></li>
				<li><a href="#">欧美男歌手</a></li>
				<li><a href="#">欧美女歌手</a></li>
				<li><a href="#">欧美组合</a></li>
				<li><a href="#">其他</a></li>

			</div>

			<div class="English">
				<li class="order"><a href="#">热门</a></li>
				<li class="lish"><a href="#">A</a></li>
				<li class="lish"><a href="#">B</a></li>
				<li class="lish"><a href="#">D</a></li>
				<li class="lish"><a href="#">E</a></li>
				<li class="lish"><a href="#">F</a></li>
				<li class="lish"><a href="#">G</a></li>
				<li class="lish"><a href="#">H</a></li>
				<li class="lish"><a href="#">I</a></li>
				<li class="lish"><a href="#">J</a></li>
				<li class="lish"><a href="#">K</a></li>
				<li class="lish"><a href="#">L</a></li>
				<li class="lish"><a href="#">M</a></li>
				<li class="lish"><a href="#">N</a></li>
				<li class="lish"><a href="#">O</a></li>
				<li class="lish"><a href="#">P</a></li>
				<li class="lish"><a href="#">Q</a></li>
				<li class="lish"><a href="#">R</a></li>
				<li class="lish"><a href="#">S</a></li>
				<li class="lish"><a href="#">T</a></li>
				<li class="lish"><a href="#">U</a></li>
				<li class="lish"><a href="#">V</a></li>
				<li class="lish"><a href="#">W</a></li>
				<li class="lish"><a href="#">X</a></li>
				<li class="lish"><a href="#">Y</a></li>
				<li class="lish"><a href="#">Z</a></li>
				<li class="order"><a href="#">其他</a></li>
			</div>
		</div>
		<div class="book">
			<div class="page_left">
				<ul class="singer_list__list">
					<li class="singer_list__item">
						<div class="singer_list__item_box">
							<a href=""><img src="images/chensheng.jpg"></a>
							<h4>
								<a href="">陈楚生</a>
							</h4>
						</div>
					</li>
					<li class="singer_list__item">
						<div class="singer_list__item_box">
							<a href=""><img src="images/cjy.jpg"></a>
							<h4>
								<a href="">蔡键雅</a>
							</h4>
						</div>
					</li>
					<li class="singer_list__item">
						<div class="singer_list__item_box">
							<a href=""><img src="images/dengziqi.jpg"></a>
							<h4>
								<a href="">邓紫棋</a>
							</h4>
						</div>
					</li>
					<li class="singer_list__item">
						<div class="singer_list__item_box">
							<a href=""><img src="images/hx.jpg"></a>
							<h4>
								<a href="">胡夏</a>
							</h4>
						</div>
					</li>
					<li class="singer_list__item">
						<div class="singer_list__item_box">
							<a href=""><img src="images/llh.jpg"></a>
							<h4>
								<a href="">刘力扬</a>
							</h4>
						</div>
					</li>
					<li class="singer_list__item">
						<div class="singer_list__item_box">
							<a href=""><img src="images/lxj.jpg"></a>
							<h4>
								<a href="">刘惜君</a>
							</h4>
						</div>
					</li>
				</ul>
				<p class="p1">1</p>
			</div>

			<div class="page_right">
				<span><ul class="singer_list__list">
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/wangsulong.jpg"></a>
								<h4>
									<a href="">汪苏泷</a>
								</h4>
							</div>
						</li>
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/xusong.jpg"></a>
								<h4>
									<a href="">许嵩</a>
								</h4>
							</div>
						</li>
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href="singer_more.jsp"><img src="images/qz.jpg"></a>
								<h4>
									<a href="singer_more.jsp">薛之谦</a>
								</h4>
							</div>
						</li>
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/zhuojielun.jpg"></a>
								<h4>
									<a href="">周杰伦</a>
								</h4>
							</div>
						</li>
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/cyx.jpg"></a>
								<h4>
									<a href="">陈奕迅</a>
								</h4>
							</div>
						</li>
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/ljj.jpg"></a>
								<h4>
									<a href="">林俊杰</a>
								</h4>
							</div>
						</li>
					</ul>
					<p class="p2">2</p></span> <span>
					<ul class="singer_list__list">
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/yy.jpg"></a>
								<h4>
									<a href="">杨洋</a>
								</h4>
							</div>
						</li>
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/ycl.jpg"></a>
								<h4>
									<a href="">杨丞琳</a>
								</h4>
							</div>
						</li>
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/yk.jpg"></a>
								<h4>
									<a href="">杨坤</a>
								</h4>
							</div>
						</li>
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/hge.jpg"></a>
								<h4>
									<a href="">胡歌</a>
								</h4>
							</div>
						</li>
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/fwq.jpg"></a>
								<h4>
									<a href="">范玮琪</a>
								</h4>
							</div>
						</li>
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/dc.jpg"></a>
								<h4>
									<a href="">邓超</a>
								</h4>
							</div>
						</li>
					</ul>
					<p class="p1">3</p>
				</span>
			</div>
			<div class="page_right">
				<span><ul class="singer_list__list">
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/ryl.jpg"></a>
								<h4>
									<a href="">乔任梁</a>
								</h4>
							</div>
						</li>
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/qw.jpg"></a>
								<h4>
									<a href="">戚薇</a>
								</h4>
							</div>
						</li>
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/szh.jpg"></a>
								<h4>
									<a href="">孙子涵</a>
								</h4>
							</div>
						</li>
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/tg.jpg"></a>
								<h4>
									<a href="">唐古</a>
								</h4>
							</div>
						</li>
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/kzxd.jpg"></a>
								<h4>
									<a href="">筷子兄弟</a>
								</h4>
							</div>
						</li>
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/xyx.jpg"></a>
								<h4>
									<a href="">萧亚轩</a>
								</h4>
							</div>
						</li>
					</ul>
					<p class="p2">4</p></span> <span><ul class="singer_list__list">
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/xwa.jpg"></a>
								<h4>
									<a href="">夏婉安</a>
								</h4>
							</div>
						</li>
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/hh.jpg"></a>
								<h4>
									<a href="">韩红</a>
								</h4>
							</div>
						</li>
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/huayuqunxing.jpg"></a>
								<h4>
									<a href="">华语群星</a>
								</h4>
							</div>
						</li>
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/zhangjie.jpg"></a>
								<h4>
									<a href="">张杰</a>
								</h4>
							</div>
						</li>
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/jinsha.jpg"></a>
								<h4>
									<a href="">金沙</a>
								</h4>
							</div>
						</li>
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/lh.jpg"></a>
								<h4>
									<a href="">鹿晗</a>
								</h4>
							</div>
						</li>
					</ul>
					<p class="p1">5</p></span>
			</div>
			<div class="page_right_end">
				<span><ul class="singer_list__list">
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/liutao.jpg"></a>
								<h4>
									<a href="">刘涛</a>
								</h4>
							</div>
						</li>
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/liudhua.jpg"></a>
								<h4>
									<a href="">刘德华</a>
								</h4>
							</div>
						</li>
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/bwb.jpg"></a>
								<h4>
									<a href="">潘玮柏</a>
								</h4>
							</div>
						</li>
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/sdal.jpg"></a>
								<h4>
									<a href="">苏打绿</a>
								</h4>
							</div>
						</li>
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/wlh.jpg"></a>
								<h4>
									<a href="">王力宏</a>
								</h4>
							</div>
						</li>
						<li class="singer_list__item">
							<div class="singer_list__item_box">
								<a href=""><img src="images/rzr.jpg"></a>
								<h4>
									<a href="">容祖儿</a>
								</h4>
							</div>
						</li>
					</ul>
					<p class="p2">End</p></span>
			</div>
		</div>
		<a class="carousel-control left" id="carouse_left"
			onclick="show_left()" data-slide="prev">&lsaquo;</a> <a
			class="carousel-control right" id="carouse_right"
			onclick="show_right()" data-slide="next">&rsaquo;</a>
		<div class="singer_list_mytxt">
			<ul class="singer_list_txt">
				<li class="singer_list_txt__item"><a href="">MC梦柯</a></li>
				<li class="singer_list_txt__item"><a href="">张学良</a></li>
				<li class="singer_list_txt__item"><a href="">汪峰</a></li>
				<li class="singer_list_txt__item"><a href="">Jam</a></li>
				<li class="singer_list_txt__item"><a href="">7妹</a></li>
				<li class="singer_list_txt__item"><a href="">雨宗林</a></li>
				<li class="singer_list_txt__item"><a href="">华晨雨</a></li>
				<li class="singer_list_txt__item"><a href="">周传雄</a></li>
				<li class="singer_list_txt__item"><a href="">陈粒</a></li>
				<li class="singer_list_txt__item"><a href="">Eminem (艾米纳姆)</a></li>
				<li class="singer_list_txt__item"><a href="">One Direction
						(单向组合)</a></li>
				<li class="singer_list_txt__item"><a href="">蒋蒋</a></li>
				<li class="singer_list_txt__item"><a href="">蒙面哥</a></li>
				<li class="singer_list_txt__item"><a href="">高安</a></li>
				<li class="singer_list_txt__item"><a href="">小沈阳</a></li>
				<li class="singer_list_txt__item"><a href="">云菲菲</a></li>
				<li class="singer_list_txt__item"><a href="">本兮</a></li>
				<li class="singer_list_txt__item"><a href="">梁静茹</a></li>
				<li class="singer_list_txt__item"><a href="">阿悄</a></li>
				<li class="singer_list_txt__item"><a href="">高进</a></li>
				<li class="singer_list_txt__item"><a href="">王杰</a></li>
				<li class="singer_list_txt__item"><a href="">邓丽君</a></li>
				<li class="singer_list_txt__item"><a href="">李宇春</a></li>
				<li class="singer_list_txt__item"><a href="">欢子</a></li>
				<li class="singer_list_txt__item"><a href="">童可可</a></li>
				<li class="singer_list_txt__item"><a href="">郁可唯</a></li>
				<li class="singer_list_txt__item"><a href="">大张伟</a></li>
				<li class="singer_list_txt__item"><a href="">五月天</a></li>
				<li class="singer_list_txt__item"><a href="">海明威</a></li>
				<li class="singer_list_txt__item"><a href="">卫兰</a></li>
			</ul>
			<ul class="pagination pagination-lg">
				<li class="pagenation"><a href="#">&laquo;</a></li>
				<li class="pagenation"><a href="#">1</a></li>
				<li class="pagenation"><a href="#">2</a></li>
				<li class="pagenation"><a href="#">3</a></li>
				<li class="pagenation"><a href="#">4</a></li>
				<li class="pagenation"><a href="#">5</a></li>
				<li class="pagenation"><a href="#">&raquo;</a></li>
			</ul>
		</div>

	</article>
	
	<!-- 底部注入 -->
      <iframe width=100% height=105 src="iframe/footer.jsp"></iframe>
	
	<!--<nav class="navbar navbar-default navbar-fixed-bottom bg">-->
	<!--<audio id="music" src="music/夏婉安 - 一个人.mp3"></audio>-->
	<!--<i><img class="show" id="show" src="images/playbar_02.png"></i>-->
	<!--<i><img class="play" id="play" onclick="myplay(this)" src="images/playbar_11.png"></i>-->
	<!--<i><img class="fast" id="fast" src="images/playbar_05.png"></i>-->
	<!--<i class="mask"><img class="mask1" src="images/fwq.jpg"></i>-->
	<!--<p class="p_title">一个人</p>-->
	<!--<div id="progressWrap">  -->
	<!--<div id="playProgress">  -->
	<!--<div id="playProgresshi"></div>-->
	<!--</div>-->
	<!--</div>-->
	<!--<span id="showProgress"><em>00:00</em>/ <em>00:00</em></span>-->
	<!--<div class="suop">-->
	<!--<i><img class="suo" src="images/playbar_49.png"></i>-->
	<!--<i><img class="suo1" src="images/playbar_51.png"></i>-->
	<!--</div>-->
	<!--<i><img title="顺序播放" class="xh" id="xh" src="images/playbar_23.png"></i>-->
	<!--<i><img title="随机播放" class="sj" id="sj" src="images/playbar_17.png"></i>-->
	<!--<i><img class="sc" title="收藏" src="images/playbar_40.png"></i>-->
	<!--<i><img class="muted" id="muted" onclick="Muted(this)" src="images/playbar_14.png"></i>-->
	<!--<div id="volume">-->
	<!--<div class="volume_1" id="volume_1">-->
	<!--<div class="volume_1_1" id="volume_1_1"></div>-->
	<!--</div>-->
	<!--<div class="volume_2" id="volume_2"></div>-->
	<!--</div>-->
	<!--<i><img class="meu" tabindex="0" hidefocus="true" src="images/playbar_48.png"></i>-->
	<!--<div class="mymeu">-->
	<!--<ul>-->
	<!--<li class="meuli">-->
	<!--<span class="span2">阿悄 - 死皮赖脸</span>-->
	<!--<span class="span3">03:14</span>-->
	<!--</li>-->
	<!--<li class="meuli">-->
	<!--<span class="span2">夏婉安 - 一个人</span>-->
	<!--<span class="span3">03:14</span>-->
	<!--</li>-->
	<!--<li class="meuli">-->
	<!--<span class="span2">威仔 - 不爱又何必纠缠</span>-->
	<!--<span class="span3">03:14</span>-->
	<!--</li>-->
	<!--</ul>-->
	<!--</div>-->
	<!--<p class="shuo">0</p>-->
	<!--</nav>-->
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
	<script type="text/javascript" src="js/index.js"></script>
	<script type="text/javascript" src="js/singer.js"></script>
</body>
</html>