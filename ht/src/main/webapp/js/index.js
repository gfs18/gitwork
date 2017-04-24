/*站内专辑图片显示*/
special();
function special(){
	$.get("special/index", function(data){
		var specialStr = "";
		if(data.length>=5){
			for (var i = 0; i<5; i++) {
				if(i==0){
					specialStr+='<div class=""><a href="page/special_music.jsp?spid='+data[i].spid+'" onclick="clickRate('+data[i].spid+')">';
					specialStr+='<img id="img2" src="'+data[i].sppicPath+'" /></a>';
					specialStr+='<div class="bf1"><a href=""><i	class="glyphicon glyphicon-headphones pull-left"><span>'+data[i].spclick+'</span></i></a>';
					specialStr+='<a href="page/special_music.jsp?spid='+data[i].spid+'" onclick="clickRate('+data[i].spid+')"><i class="glyphicon glyphicon-play-circle"></i></a></div></div>';
				}else if(i<3){
					specialStr+='<div class="zj1"><a href="page/special_music.jsp?spid='+data[i].spid+'" onclick="clickRate('+data[i].spid+')">';
					specialStr+='<img class="img3" src="'+data[i].sppicPath+'" /></a>';
					specialStr+='<div class="bf2"><a href=""><i	class="glyphicon glyphicon-headphones pull-left headphones1"><span>'+data[i].spclick+'</span></i></a>';
					specialStr+='<a href="page/special_music.jsp?spid='+data[i].spid+'" onclick="clickRate('+data[i].spid+')"><i class="glyphicon glyphicon-play-circle glyphicon1"></i></a></div></div>';
				}else{
					specialStr+='<div class="zj2"><a href="page/special_music.jsp?spid='+data[i].spid+'" onclick="clickRate('+data[i].spid+')">'
					+'<img class="img3" src="'+data[i].sppicPath+'"/></a>'
					+'<div class="bf3"><a href=""><i class="glyphicon glyphicon-headphones pull-left headphones1"><span>'+data[i].spclick+'</span></i></a>'
					+'<a href="page/special_music.jsp?spid='+data[i].spid+'" onclick="clickRate('+data[i].spid+')"><i class="glyphicon glyphicon-play-circle glyphicon1"></i></a></div></div>';
				}
			}
		}else{
			for (var i = 0; i<data.length; i++) {
				if(i==0){
					specialStr+='<div class=""><a href="page/special_music.jsp?spid='+data[i].spid+'" onclick="clickRate('+data[i].spid+')">';
					specialStr+='<img id="img2" src="'+data[i].sppicPath+'" /></a>';
					specialStr+='<div class="bf1"><a href=""><i	class="glyphicon glyphicon-headphones pull-left"><span>'+data[i].spclick+'</span></i></a>';
					specialStr+='<a href="page/special_music.jsp?spid='+data[i].spid+'" onclick="clickRate('+data[i].spid+')"><i class="glyphicon glyphicon-play-circle"></i></a></div></div>';
				}else if(i<3){
					specialStr+='<div class="zj1"><a href="page/special_music.jsp?spid='+data[i].spid+'" onclick="clickRate('+data[i].spid+')">';
					specialStr+='<img class="img3" src="'+data[i].sppicPath+'" /></a>';
					specialStr+='<div class="bf2"><a href=""><i	class="glyphicon glyphicon-headphones pull-left headphones1"><span>'+data[i].spclick+'</span></i></a>';
					specialStr+='<a href="page/special_music.jsp?spid='+data[i].spid+'" onclick="clickRate('+data[i].spid+')"><i class="glyphicon glyphicon-play-circle glyphicon1"></i></a></div></div>';
				}else{
					specialStr+='<div class="zj2"><a href="page/special_music.jsp?spid='+data[i].spid+'" onclick="clickRate('+data[i].spid+')">'
					+'<img class="img3" src="'+data[i].sppicPath+'"/></a>'
					+'<div class="bf3"><a href=""><i class="glyphicon glyphicon-headphones pull-left headphones1"><span>'+data[i].spclick+'</span></i></a>'
					+'<a href="page/special_music.jsp?spid='+data[i].spid+'" onclick="clickRate('+data[i].spid+')"><i class="glyphicon glyphicon-play-circle glyphicon1"></i></a></div></div>';
				}
			}
		}
		$(".content1_1_1").html(specialStr);
	}, "json");
}
//点击量
function clickRate(spid){
	$.post("special/click",{"spid":spid},function(data){
	},"json");
}

//歌手显示
singer();
function singer(){
	$.get("singer/index",function(data){
		var singerStr="";
		for(var i=0;i<data.length;i++){
			singerStr+='<div class="content3_1_1"><div class="col-lg-3 col-md-3 col-sm-4 col-xs-6">'
				+'<div class="thumbnail pull-left"><a href="page/singer_more.jsp?sgid='+data[i].sgid+'"> <img src="'+data[i].sgpicPath+'" />'
				+'<div class="caption"><h3>'+data[i].sgname+'</h3></div></a></div></div></div>';
		}
		$(".content3_1").html(singerStr);
	},"json");
}

/*首页mv显示*/
function loadMv(){
	$.get("mv/index",function(data){
		var mvStr="";
		if(data.length>=6){
			for (var j = 0; j < 2; j++) {
				for (var i = 0; i < 6; i++) {
					mvStr+='<li><div class="mv-1"><a href=""><img src="'+data[i].mvpicPath+'"></a></div>';
					mvStr+='<div class="mv_2"><a href=""><span>'+data[i].mvname+'</span><span class="mv_2_1">'+data[i].sgid+'</span></a></div>';
					mvStr+='<div class="mv_3"><img src="images/cover_play.png"></div>';
					mvStr+='<div class="mv_4"></div></li>';
				}
			}
		}else{
			for (var j = 0; j < 3; j++) {
				for (var i = 0; i < data.length; i++) {
					mvStr+='<li><div class="mv-1"><a href=""><img src="'+data[i].mvpicPath+'"></a></div>';
					mvStr+='<div class="mv_2"><a href=""><span>'+data[i].mvname+'</span><span class="mv_2_1">'+data[i].sgid+'</span></a></div>';
					mvStr+='<div class="mv_3"><img src="images/cover_play.png"></div>';
					mvStr+='<div class="mv_4"></div></li>';
				}
			}
		}
		$("#warp").html(mvStr);
	},"json");
}
loadMv();


/*站内歌曲显示*/
songList();
function songList(){
	$.post("song/list", function(data){
		var songListStr = "";
		for (var i = 0; i < data.length; i++) {
			var soname = data[i].soname;
			if(soname.length>10){
				soname = data[i].soname.substring(0,10);
			}
			songListStr+='<tr><td class="td"><span>'+soname+'</span></td>'+
			'<td><a href="pymsc/player_music.jsp?control=player&songid='+data[i].soid+'"><i class="glyphicon glyphicon-play-circle tp1" title="播放"></i>'+
			'</a></td><td><a href="pymsc/player_music.jsp?control=add&songid='+data[i].soid+'"><i class="glyphicon glyphicon-plus-sign tp2" title="添加到播放列表"></i></a></td></tr>';
		}
		$("#mytablet").html(songListStr);
	}, "json");
}


//搜索
function findByName(){
	var soname = $.trim($("#soname").val());
	$("#searchByName").attr("href","page/search.jsp?soname="+soname);
}

//轮播
$(".carousel").carousel({
	interval:4000,
	pause:"hover",	
});
$("#carousel_left").on("click",function() {
	$('.carousel').carousel('prev');
});

$("#carousel_right").on("click",function() {
	$('.carousel').carousel('next');
});

//导航栏特效
$("#topnav li").mouseover(function(){
	$(".mydiv").css("left",($(this).width())*$(this).index());
});
$("#topnav li").mouseout(function(){
	$(".mydiv").css("-webkit-animation","none");
});

function showDiv(){
	if ($(window).width()<=1349) {
		$(".mydiv").css("display", "block");
	}else
	{
		$(".mydiv").css("display", "none");
	}
}

/*******************登陆注册,注销*******************/
//登陆
function userLogin(){
	var uname= $.trim($("#uname").val());
	var upwd= $.trim($("#pwd").val());
	$.get("user/login",{uname:uname,upwd:upwd}, function (data) {
		if(data != null){
			$("#denglu").text(data.uname).removeAttr("data-target");
			$("#mylogin").css("display","none");
			$("#uname").val("");
			$("#pwd").val("");
			location.href="index.jsp";
		}
	},"json");
}

//用户注销
function userout(){ //用户注销
	$.post("user/out", function(data) {
		if(data){
			$("#tuichu").remove();
			$("#denglu").text("登录").attr("data-target","#mylogin");
			location.href="index.jsp";
		}
	},"json");
}

//注册
function userRegister(){
	var uname= $.trim($("#newname").val());
	var upwd= $.trim($("#newpwd").val());
	var uemail= $.trim($("#email").val());
	var code= $.trim($("#txt").val());
	$.post("user/Register",{uname:uname,upwd:upwd,uemail:uemail,code:code},function (data) {
		$("#myreg").css("display", "none");
	},"json");
}

function sendCode(){
	var uemail= $.trim($("#email").val());
	if(!uemail.match(/^[a-z0-9]+([._]*[a-z0-9]+)*@[a-z0-9]+([_.][a-z0-9]+)+$/gi)){
		alert("邮箱格式不正确！请重新输入");
		return false;
	}else {
		$.post("user/f",{uemail:uemail}, function (data) {
			if(data!==false){
				$("#myspanb").attr("disabled",true).val("发送成功");
				$('#myspanb').html('<s id="cf2">60</s>秒后重发!');
				window.setInterval("run();", 1000);
			}else{
				$("#myspanb").attr("disabled",false).val("发送失败");
			}
		});
	}
}
function run(){
	var s = document.getElementById("cf2");
	if(s.innerHTML == 0){
		document.getElementById("myspanb").innerHTML = '<a href="javascript:void(0)" style="color:#09F" id="email_code">重发验证码</a>';
		return false;
	}
	s.innerHTML = s.innerHTML * 1 - 1;
}

