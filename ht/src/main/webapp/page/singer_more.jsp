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
    <link rel="stylesheet" type="text/css" href="css/singer_more.css"/>
    <link rel="stylesheet" href="dist/css/bootstrap.css">
    <link rel="stylesheet" href="css/index.css">
</head>
<body>
<div class="big_box"></div>
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
                        <li><div class="mydiv hidden-md hidden-sm hidden-xs"></div><a href="page/index.jsp"  class="col-lg-2 col-md-2 col-sm-3 col-xs-4" id="">首页</a></li>
                        <li><a href="page/singer.jsp"  class="col-lg-2 col-md-2 col-sm-3 col-xs-4">歌手</a></li>
                        <li><a href="page/special.jsp"  class="col-lg-2 col-md-2  col-xs-2  hidden-sm hidden-xs">专辑</a></li>
                        <li><a href=""  class="col-lg-2 col-md-2  hidden-xs  hidden-sm hidden-xs">MV</a></li>
                        <li><a href=""  class="col-lg-2 hidden-md hidden-sm hidden-xs">电台</a></li>
                    </ul>
                </div>
            </div>
       </nav>
    </div>
</header>
<article>
    <div class="content">
        <div class="container">
        <div class="row" id="headrow">
            <div id="singer" class="col-lg-4 col-md-4 hidden-sm hidden-xs">
                <img src="images/singer1.jpg" id="currentUserPhoto"/>
            </div>
            <div id="singer_right" class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <p id="singer_name">薛之谦</p>
                <p id="singer_info">歌手介绍：</p>
                <p id="singer_opus">单曲 <span id="opus"> &nbsp;0&nbsp;</span>&nbsp;&nbsp;&nbsp;专辑&nbsp;<span id="special">&nbsp;1</span>&nbsp;</p>
            </div>
            <div class="btns">
                <button class="t_play"><span class="glyphicon glyphicon-play" ></span> 播放歌手歌曲</button>
                <button class="t_add hidden-sm hidden-xs"><span class="glyphicon glyphicon-plus" ></span> 关注该歌手</button>
            </div>
        </div>
            <p id="zp">作品</p>
            <div id="user_con">
                <div class="row" id="first">
                    <div  class="opus_no_1 col-lg-1 col-md-1 col-sm-1 col-xs-1" ></div>
                    <div  class="opus_name_! col-lg-7 col-md-7 col-sm-11 col-xs-11" style="border-left:1px solid #E1E1E1; ">
                        <span class="m_name_1">歌曲名</span></div>
                    <div  class="opus_play_1 col-lg-2 col-md-2 hidden-sm hidden-xs" style="border-left:1px solid #E1E1E1;">歌手</div>
                    <div  class="opus_add_1 col-lg-2 col-md-2 hidden-sm hidden-xs" style="border-left:1px solid #E1E1E1;">时长</div>
                </div>
                <div id="big">
                <div class="row">
                    <div  class="opus_no col-lg-1 col-md-1 col-sm-1 col-xs-1">1</div>
                    <div  class="opus_name col-lg-7 col-md-7 col-sm-11 col-xs-11">
                        <a href=""><i class="glyphicon glyphicon-play-circle" id="tp1_1" title="播放"></i></a>
                        <a href=""><i class="glyphicon glyphicon-save" id="tp2_1" title="下载"></i></a>
                        <a href="" class="m_name">River Flows In You</a>
                    </div>
                    <div  class="opus_play col-lg-2 col-md-2 hidden-sm hidden-xs">Martin-Ermen</div>
                    <div  class="opus_add col-lg-2 col-md-2 hidden-sm hidden-xs">3:20</div>
                </div>
                <div class="row">
                    <div  class="opus_no col-lg-1 col-md-1 col-sm-1 col-xs-1">1</div>
                    <div  class="opus_name col-lg-7 col-md-7 col-sm-11 col-xs-11">
                        <i class="glyphicon glyphicon-play-circle" id="tp1_2"  title="播放"></i>
                        <i class="glyphicon glyphicon-save " id="tp2_2" title="下载"></i>
                        <a href="" class="m_name">River Flows In You</a>
                    </div>
                    <div  class="opus_play col-lg-2 col-md-2 hidden-sm hidden-xs">Martin-Ermen</div>
                    <div  class="opus_add col-lg-2 col-md-2 hidden-sm hidden-xs">3:20</div>
                </div>
                </div>
            </div>
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
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/index.js"></script>
</body>
</html>