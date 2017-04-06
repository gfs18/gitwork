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
	<link rel="stylesheet" type="text/css" href="css/mv.css">
</head>
<body>
		<nav id="head">
			<nav class="navbar navbar-default" id="lognav">
				<div class="container">
					<div class="navbar-header navbar-left">
						<a href="" class="navbar-brand"><img src="images/log.png"></a>
						<a href="" class="navbar-brand"><h3>幻听音乐</h3></a>
					</div>
                    <ul class="nav navbar-nav navbar-right" id="nav_a">
                        <li><a href="javascript:" class="hidden-md hidden-sm hidden-xs" id="denglu" data-toggle="modal" data-target="#myModal">登录</a></li>
                        <li id="newL"><a href="" class="hidden-md hidden-sm hidden-xs" id="out" data-toggle="modal" data-target="#myModals">注册</a></li>
                        <li><a href="vip.jsp" class="hidden-md hidden-sm hidden-xs">VIP</a></li>
                        <li><a href="" class="hidden-md hidden-sm hidden-xs">客服中心</a></li>
                    </ul>
				</div>
			</nav>
            <nav class="navbar navbar-default" style="border-radius: 0" id="navbartop">
                <div class="container">
                    <div class="row">
                        <ul class="nav navbar-nav navbar-left" id="topnav">
                            <li><div class="mydiv hidden-md hidden-sm hidden-xs"></div>
                            <a href="page/index.jsp"  class="col-lg-2 col-md-2 col-sm-3 col-xs-4" id="">首页</a></li>
                            <li><a href="page/singer.jsp"  class="col-lg-2 col-md-2 col-sm-3 col-xs-4">歌手</a></li>
                            <li><a href="page/special.jsp"  class="col-lg-2 col-md-2  col-xs-2  hidden-sm hidden-xs">专辑</a></li>
                            <li><a href="page/mv.jsp"  class="col-lg-2 col-md-2  hidden-xs  hidden-sm hidden-xs">MV</a></li>
                            <li><a href="page/friend.jsp"  class="col-lg-2 hidden-md hidden-sm hidden-xs">朋友</a></li>
                        </ul>
                    </div>
                </div>
             </nav>
            </nav>
   <article>
        <div class="container">
   	  <div class="lable row">
   	  	  	<li class="col-lg-2 col-md-2 col-sm-3 col-xs-3" id="new_ul"><a href="#" class="click">最新专辑</a></li>
   	  	  	<li class="col-lg-2 col-md-2 col-sm-3 col-xs-3" id="hot_ul"><a href="#">热门专辑</a></li>
   	  	  	<li class="col-lg-2 col-md-2 col-sm-3 hidden-xs" id="china_ul"><a href="#">华语</a></li>
   	  	  	<li class="col-lg-2 col-md-2 hidden-sm hidden-xs" id="hip_ul"><a href="#">日韩</a></li>
   	  	  	<li class="col-lg-2 col-md-2 hidden-sm hidden-xs" id="eng_ul"><a href="#">欧美</a></li>
   	  </div>
            <p class="class">站内MV</p>
            <div class="mv">
                <ul class="mv_1">
                    <li mv_list>
                        <div class="mv_img">
                            <img src="images/mv-1.jpg">
                        </div>
                        <div class="mask">
                            <img src="images/cover_play.png">
                            <p class="mv_info">每一天-鞠婧祎</p>
                        </div>
                    </li>
                    <li mv_list>
                        <div class="mv_img">
                            <img src="images/mv-1.jpg">
                        </div>
                        <div class="mask">
                            <img src="images/cover_play.png">
                            <p class="mv_info">每一天-鞠婧祎</p>
                        </div>
                    </li>
                    <li mv_list>
                        <div class="mv_img">
                            <img src="images/mv-1.jpg">
                        </div>
                        <div class="mask">
                            <img src="images/cover_play.png">
                            <p class="mv_info">每一天-鞠婧祎</p>
                        </div>
                    </li>
                    <li mv_list>
                        <div class="mv_img">
                            <img src="images/mv-1.jpg">
                        </div>
                        <div class="mask">
                            <img src="images/cover_play.png">
                            <p class="mv_info">每一天-鞠婧祎</p>
                        </div>
                    </li>
                    <li mv_list>
                        <div class="mv_img">
                            <img src="images/mv-1.jpg">
                        </div>
                        <div class="mask">
                            <img src="images/cover_play.png">
                            <p class="mv_info">每一天-鞠婧祎</p>
                        </div>
                    </li>
                    <li mv_list>
                        <div class="mv_img">
                            <img src="images/mv-1.jpg">
                        </div>
                        <div class="mask">
                            <img src="images/cover_play.png">
                            <p class="mv_info">每一天-鞠婧祎</p>
                        </div>
                    </li>
                </ul>
            </div>
      <ul class="pagination pagination-lg">
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
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery-1.11.0.js"></script>
	<script type="text/javascript" src="dist/js/bootstrap.js"></script>
    <script type="text/javascript" src="js/index.js"></script>
</body>
</html>