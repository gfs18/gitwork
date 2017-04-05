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
</head>
<body>
	<header>
		<nav id="head">
			<nav class="navbar navbar-default" id="lognav">
				<div class="container">
					<div class="navbar-header navbar-left">
						<a href="javascript:void(0)" class="navbar-brand"><img
							src="images/log.png"></a> <a href="javascript:void(0)"
							class="navbar-brand"><h3>幻听音乐</h3></a>
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
			<nav class="navbar navbar-default" style="border-radius: 0"
				id="navbartop">
				<div class="container">
					<div class="row">
						<ul class="nav navbar-nav navbar-left" id="topnav">
							<li><div class="mydiv hidden-md hidden-sm hidden-xs"></div>
								<a href="page/index.jsp"
								class="col-lg-2 col-md-2 col-sm-3 col-xs-4">首页</a></li>
							<li><a href="page/singer.jsp"
								class="col-lg-2 col-md-2 col-sm-3 col-xs-4">歌手</a></li>
							<li><a href="page/special.jsp"
								class="col-lg-2 col-md-2  col-xs-2  hidden-sm hidden-xs">专辑</a></li>
							<li><a href="page/mv.jsp"
								class="col-lg-2 col-md-2  hidden-xs  hidden-sm hidden-xs">MV</a></li>
							<li><a href="page/friend.jsp"
								class="col-lg-2 hidden-md hidden-sm hidden-xs">朋友</a></li>
						</ul>

						<form  id="search" class="navbar-form navbar-left" role="search">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="单曲/歌手/专辑">
							</div>
							<button type="submit" class="btn btn-default">查询</button>
						</form>
					</div>

				</div>

			</nav>

		</nav>
		<div class="banner">
			<div class="row">
				<div id="myCarousel" class="carousel slide">
					<div class="carousel-inner">
						<div class="active item">
							<img src="images/img4.jpg">
						</div>
						<div class="item">
							<img src="images/img2.jpg">
						</div>
						<div class="item">
							<img src="images/img3.jpg">
						</div>
					</div>
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>

					<a class="carousel-control left" id="carousel_left"
						data-slide="prev">&lsaquo;</a> <a class="carousel-control right"
						id="carousel_right" data-slide="next">&rsaquo;</a>
				</div>
			</div>
		</div>
	</header>
	<article>
		<div class="content1">
			<div class="container">
				<div class="row">
					<div class="album">
						<a class="pull-left"><h4>专辑上架</h4></a> <a
							href="javascript:void(0)" class="pull-right more">更多</a>
					</div>
					<div class="content1_1">
						<div class="content1_1_1">
							<!-- 站内专辑显示 -->
						</div>

						<div class="content1_1_2 hidden-md hidden-sm hidden-xs">
							<span class="span1">站内歌曲</span>

							<table id="mytablet">

								<!-- <tr>
									<td class="td"><span>2.生日那天</span></td>
									<td><a href=""><i
											class="glyphicon glyphicon-play-circle tp1" title="播放"></i></a></td>
									<td><a href=""><i
											class="glyphicon glyphicon-plus-sign tp2" title="添加到播放列表"></i></a></td>
								</tr>
								<tr>
									<td class="td"><span>3.童话镇</span></td>
									<td><a href=""><i
											class="glyphicon glyphicon-play-circle tp1" title="播放"></i></a></td>
									<td><a href=""><i
											class="glyphicon glyphicon-plus-sign tp2" title="添加到播放列表"></i></a></td>
								</tr>
								<tr>
									<td class="td"><span>4.悲歌</span></td>
									<td><a href=""><i
											class="glyphicon glyphicon-play-circle tp1" title="播放"></i></a></td>
									<td><a href=""><i
											class="glyphicon glyphicon-plus-sign tp2" title="添加到播放列表"></i></a></td>
								</tr>
								<tr>
									<td class="td"><span>5.选择</span></td>
									<td><a href=""><i
											class="glyphicon glyphicon-play-circle tp1" title="播放"></i></a></td>
									<td><a href=""><i
											class="glyphicon glyphicon-plus-sign tp2" title="添加到播放列表"></i></a></td>
								</tr>
								<tr>
									<td class="td"><span>6.白</span></td>
									<td><a href=""><i
											class="glyphicon glyphicon-play-circle tp1" title="播放"></i></a></td>
									<td><a href=""><i
											class="glyphicon glyphicon-plus-sign tp2" title="添加到播放列表"></i></a></td>
								</tr>
								<tr>
									<td class="td"><span>7.蓝</span></td>
									<td><a href=""><i
											class="glyphicon glyphicon-play-circle tp1" title="播放"></i></a></td>
									<td><a href=""><i
											class="glyphicon glyphicon-plus-sign tp2" title="添加到播放列表"></i></a></td>
								</tr>
								<tr>
									<td class="td"><span>8.全世界谁倾听你</span></td>
									<td><a href=""><i
											class="glyphicon glyphicon-play-circle tp1" title="播放"></i></a></td>
									<td><a href=""><i
											class="glyphicon glyphicon-plus-sign tp2" title="添加到播放列表"></i></a></td>
								</tr>
								<tr>
									<td class="td"><span>9.Bad boy</span></td>
									<td><a href=""><i
											class="glyphicon glyphicon-play-circle tp1" title="播放"></i></a></td>
									<td><a href=""><i
											class="glyphicon glyphicon-plus-sign tp2" title="添加到播放列表"></i></a></td>
								</tr>
								<tr>
									<td class="td"><span>10.说散就散</span></td>
									<td><a href=""><i
											class="glyphicon glyphicon-play-circle tp1" title="播放"></i></a></td>
									<td><a href=""><i
											class="glyphicon glyphicon-plus-sign tp2" title="添加到播放列表"></i></a></td>
								</tr>
								<tr>
									<td class="td"><span>11.我从崖边跌落</span></td>
									<td><a href=""><i
											class="glyphicon glyphicon-play-circle tp1" title="播放"></i></a></td>
									<td><a href=""><i
											class="glyphicon glyphicon-plus-sign tp2" title="添加到播放列表"></i></a></td>
								</tr>
				------------------------------------------------------------------------------------				
								 <div class="cpt cptBig">
                            
                                        <p class="cptT"><span class="icon icon-select_icon"></span><span class="num">49.1万</span></p>
                                          
                                            <img  _src="http://imge.kugou.com/soft/collection/480/20170331/20170331150607204938.jpg" width="325" height="325" src="http://www.kugou.com/yy/static/images/blank.gif" _def="http://static.kgimg.com/public/root/images/rankdefalut.jpg">
                                        
                                        <div class="Cover" >
                                            <a target="_blank" href="http://www.kugou.com/yy/special/single/123120.html">
                                            </a>
                                            <div class="playBtn icon icon-play_s" data-index="0" data-id="123120">播放</div>
                                        </div>
                                        <p class="cptBg"></p>
                                        <div class="cptB">
                                            <p class="songListName">你曾予我怦然欢喜，未料爱情徒有虚名</p>
                                            <p class="songListSinger">柠檬茶</p>
                                        </div>
                                </div>
								
								<a target="_blank" href="http://www.kugou.com/yy/special/single/123120.html">
                                            </a>
								
								
								
								
								
								
								
								
								
								
								
								
								
								
								
								
 -->
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="content2">
			<div class="container">
				<div class="row">
					<div class="mymv">
						<a class="pull-left"><h4>最新MV</h4></a> <a href=""
							class="pull-right more">更多</a>
					</div>
					<div class="mv">
						<ul id="warp">
							<li><div class="mv-1">
									<a href=""><img src="images/mv-1.jpg"></a>
								</div>
								<div class="mv_2">
									<a href=""><span>每一天</span><span class="mv_2_1">鞠婧祎</span></a>
								</div>
								<div class="mv_3">
									<img src="images/cover_play.png">
								</div>
								<div class="mv_4"></div></li>
							<li><div class="mv-1">
									<a href=""><img src="images/mv-2.jpg"></a>
								</div>
								<div class="mv_2">
									<a href=""><span>告白气球</span><span class="mv_2_1">周杰伦</span></a>
								</div>
								<div class="mv_3">
									<img src="images/cover_play.png">
								</div>
								<div class="mv_4"></div></li>
							<li><div class="mv-1">
									<a href=""><img src="images/mv-3.jpg"></a>
								</div>
								<div class="mv_2">
									<a href=""><span>你一言我一语</span><span class="mv_2_1">李建</span></a>
								</div>
								<div class="mv_3">
									<img src="images/cover_play.png">
								</div>
								<div class="mv_4"></div></li>
							<li><div class="mv-1">
									<a href=""><img src="images/mv-7.jpg"></a>
								</div>
								<div class="mv_2">
									<a href=""><span>呵护</span><span class="mv_2_1">梁静茹</span></a>
								</div>
								<div class="mv_3">
									<img src="images/cover_play.png">
								</div>
								<div class="mv_4"></div></li>
							<li><div class="mv-1">
									<a href=""><img src="images/mv-5.jpg"></a>
								</div>
								<div class="mv_2">
									<a href=""><span>你干嘛</span><span class="mv_2_1">罗志祥</span></a>
								</div>
								<div class="mv_3">
									<img src="images/cover_play.png">
								</div>
								<div class="mv_4"></div></li>
							<li><div class="mv-1">
									<a href=""><img src="images/mv-10.jpg"></a>
								</div>
								<div class="mv_2">
									<a href=""><span>败将</span><span class="mv_2_1">陈势安</span></a>
								</div>
								<div class="mv_3">
									<img src="images/cover_play.png">
								</div>
								<div class="mv_4"></div></li>
						</ul>

					</div>
				</div>
			</div>
		</div>
		<div class="content3">
			<div class="container">
				<div class="row">
					<div class="sing">
						<a class="pull-left"><h4>站内歌手</h4></a> <a href=""
							class="pull-right more">更多</a>
					</div>

					<div class="content3_1">
						<!-- <div class="content3_1_1">
							<div class="col-lg-3 col-md-3 col-sm-4 col-xs-6">
								<div class="thumbnail pull-left">
									<a href=""> <img src="images/chensheng.jpg" />
										<div class="caption">
											<h3>陈楚生</h3>
										</div>
									</a>
								</div>
							</div>
						</div>
						<div class="content3_1_1">
							<div class="col-lg-3 col-md-3 col-sm-4 col-xs-6">
								<div class="thumbnail pull-left thumbnail_1">
									<a href=""> <img src="images/cjy.jpg" />
										<div class="caption">
											<h3>蔡键雅</h3>
										</div>
									</a>
								</div>
							</div>
						</div>
						<div class="content3_1_1">
							<div class="col-lg-3 col-md-3 col-sm-4 hidden-xs">
								<div class="thumbnail pull-left thumbnail_2">
									<a href=""> <img src="images/dengziqi.jpg" />
										<div class="caption">
											<h3>邓紫棋</h3>
										</div>
									</a>
								</div>
							</div>
						</div>
						<div class="content3_1_1">
							<div class="col-lg-3 col-md-3 hidden-sm hidden-xs">
								<div class="thumbnail pull-left thumbnail_3">
									<a href=""> <img src="images/hx.jpg" />
										<div class="caption">
											<h3>胡夏</h3>
										</div>
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="content3_2">
						<div class="content3_1_1">
							<div class="col-lg-3 col-md-3 col-sm-4 col-xs-6">
								<div class="thumbnail pull-left">
									<a href=""> <img src="images/llh.jpg" />
										<div class="caption">
											<h3>刘力扬</h3>
										</div>
									</a>
								</div>
							</div>
						</div>
						<div class="content3_1_1">
							<div class="col-lg-3 col-md-4 col-sm-4 col-xs-6">
								<div class="thumbnail pull-left thumbnail_1">
									<a href=""> <img src="images/lxj.jpg" />
										<div class="caption">
											<h3>刘惜君</h3>
										</div>
									</a>
								</div>
							</div>
						</div>
						<div class="content3_1_1">
							<div class="col-lg-3 col-md-4 col-sm-4 hidden-xs">
								<div class="thumbnail pull-left thumbnail_2">
									<a href=""> <img src="images/wangsulong.jpg" />
										<div class="caption">
											<h3>汪苏泷</h3>
										</div>
									</a>
								</div>
							</div>
						</div>
						<div class="content3_1_1">
							<div class="col-lg-3 col-md-3 hidden-sm hidden-xs">
								<div class="thumbnail pull-left thumbnail_3">
									<a href=""> <img src="images/xusong.jpg" />
										<div class="caption">
											<h3>许嵩</h3>
										</div>
									</a>
								</div>
							</div>
						</div> -->
					</div>

				</div>
			</div>
		</div>
	</article>
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
								<input type="password" id="pwd" placeholder="请输入您的密码" /><br />
								<p id="go" onclick="userLogin()">登录</p>
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
								<div class="ins">
									<input type="text" id="newname" placeholder="账户名由4-7个字符组成" /><span
										class=""></span>
								</div>
								<div class="ins">
									<input type="password" id="newpwd"
										placeholder="密码名由6-16个数字、字母组成" /><span class=""></span>
								</div>
								<div class="ins">
									<input type="email" id="email" placeholder="您的邮箱账户" /><span
										class=""></span>
								</div>
								<div class="ins">
									<input type="text" id="txt" placeholder="请输入您收到的验证码" /> <span
										id="myspanb" onclick="sendCode()">获取验证码</span>
								</div>
								<p id="new" onclick="userRegister()">马上注册</p>
							</form>
						</div>
						<div class="reg_bottom"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery-1.11.0.js"></script>
	<script type="text/javascript" src="dist/js/bootstrap.js"></script>
	<script type="text/javascript" src="js/index.js"></script>
</body>
</html>