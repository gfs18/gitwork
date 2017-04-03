/////////////////////////////////站内专辑显示///////////////////////////
special();
function special(){
	$.get("special", function(data){
		var specialStr = "";
		for (var i = 0; i < data.length; i++) {
			if(i==0){
				/*var Object=JSON.stringify(data[i]);  '+data[i]+'*/
				specialStr+='<div class=""><a href="javascript:void(0)" onclick="specialDetail()">';
				specialStr+='<img id="img2" src="'+data[i].sppicPath+'" /></a>';
				specialStr+='<div class="bf1"><a href=""><i	class="glyphicon glyphicon-headphones pull-left"><span>0万</span></i></a>';
				specialStr+='<a href=""><i class="glyphicon glyphicon-play-circle"></i></a></div></div>';
			}else{
				specialStr+='<div class="zj1"><a href="javascript:void(0)" onclick="specialDetail()">';
				specialStr+='<img class="img3" src="'+data[i].sppicPath+'" /></a>';
				specialStr+='<div class="bf2"><a href=""><i	class="glyphicon glyphicon-headphones pull-left headphones1"><span>0万</span></i></a>';
				specialStr+='<a href=""><i class="glyphicon glyphicon-play-circle glyphicon1"></i></a></div></div>';
			}
		}/*'+Object+'*/
		$(".content1_1_1").html(specialStr);
	}, "json");
}


/////////////////////////////////站内专辑跳转///////////////////////////
/*function specialDetail(param){
	$.get("special_music", function(data){
alert("请求成功");
}, "json");*/
/*$.post("special/list",{"param":param},function(data){


	});*/
/*var specialMusicStr = "";
specialMusicStr+='<div class="left col-lg-4 col-md-4 hidden-sm hidden-xs"><img id="img" src=""/>';
specialMusicStr+='<div class="cover"></div></div>';
specialMusicStr+='<div class="right col-lg-8 col-md-8 col-sm-8 col-xs-8">'+
'<p class="info_1">Water Under the Bridge (无法挽回)</p>'+
'<p class="info_2">歌手：Adele(阿黛尔)</p>'+
'<p class="info_3">发行时间：2016-11-4</p>'+
'<p class="info_4">hhhhhhh</p>'
specialMusicStr+='<div class="btns"><button class="mplay">'+
'<span class="glyphicon glyphicon-play"></span> 播放	</button>'+
'<button class="add hidden-sm hidden-xs">'+
'<span class="glyphicon glyphicon-heart-empty"></span> 收藏</button></div></div>';

$(".special_music").html(specialMusicStr);
}*/


/////////////////////////////////站内歌曲显示///////////////////////////
/*songList();
function songList(){
	$.get("songList", function(){
			var specialStr = "";
		for (var i = 0; i < data.length; i++) {
	}, "json");
}*/

songList();
function songList(){
	$.get("song", function(){
		
	}, "json");
}


//轮播
$('.carousel').carousel({
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
function userLoginout(){ //用户注销
	$.get("user/out", function() {
		$("#tuichu").remove();
		$("#denglu").text("登录").attr("data-target","#mylogin");
	},"json");
	location.href="index.jsp";

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




/////////////////////////////////专辑///////////////////////////

$(".lable li").click(function(){
	$(".special ul").css("display","none");
	$(".special ul").eq($(this).index()).css("display","block");
	$(".class").html($(".lable li a").eq($(this).index()).html());

});

$(".lable li a").on("click",function(){
	$(".lable li a").removeClass("click");
	$(this).addClass("click");

});
$(".lable li a").on("mouseover",function(){
	$(".lable li a").removeClass("mouseover");
	$(this).addClass("mouseover");

});
$(".lable li a").on("mouseout",function(){
	$(".lable li a").removeClass("mouseover");

});
$(".lable li a").attr("style","color:#333");

//播放

var myflase=true;
$(".muted").on("click",function(){
	if(myflase){
		$("#volume").css("display","block");
	}else{
		$("#volume").css("display","none");
	}

});


var timer;
$("#volume").hover(function(){
	clearTimeout(timer);
},function(){
	timer=setTimeout(function(){
		$("#volume").css("display","none");
	},1000);
})
$(".muted").hover(function(){
	$("#volume").css("display","block");
	clearTimeout(timer);
},function(){
	timer=setTimeout(function(){
		$("#volume").css("display","none");
	},1000);
})
var fl=true;
$(".meu").on("click",function(){
	if (fl) {
		$(".mymeu").css("display","block");
		fl=false;
	}else{
		$(".mymeu").css("display","none");
		fl=true;
	}

})


$(".suo").on("click",function(){
	$(".suo1").css("display","block");
	$(this).css("display","none");
	$(".bg").attr("id","bgover");

})
$(".suo1").on("click",function(){
	$(".suo").css("display","block");
	$(this).css("display","none");
	$(".bg").attr("id","");

})


//var music=document.getElementById("music");
//var play=document.getElementById("play");
//var audio=null;
//var myprogressTime=null;
//var playProgress=document.getElementById("playProgress");
//var progressWrap=document.getElementById("progressWrap");
//var showProgress=document.getElementById("showProgress");
//var volume_1=document.getElementById("volume_1");
//var volume_2=document.getElementById("volume_2");
//var muted=document.getElementById("muted");
//var show=document.getElementById("show");
//var fast=document.getElementById("fast");
//var meuli=document.getElementsByClassName("meuli");
//var span2=document.getElementsByClassName("span2");
//var index=0;
//var bl=true;
////音乐播放
//window.onload=function(){
//audio=document.getElementById("music");
//}

////控制进度条
//function getProgress1(){
////获取到时间的百分比
//var mypercent=audio.currentTime/audio.duration;
//playProgress.style.width=mypercent*(progressWrap.offsetWidth)+"px";
//$("#playProgresshi").css("width",playProgress.style.width);
//showProgress.getElementsByTagName("em")[0].innerHTML=sTom(audio.currentTime);
//if (showProgress.getElementsByTagName("em")[0].innerHTML== showProgress.getElementsByTagName("em")[1].innerHTML) {
//if (bl) {
//for(var j=0;j<span2.length;j++){
//if ("music/"+$(".span2").eq(j).html()+".mp3"==$("#music").attr("src")) {
//if (j+1==span2.length) {
//music.pause();
//clearInterval(myprogressTime);
//}else{
//$("#music").attr("src","music/"+$(".span2").eq(j+1).html()+".mp3");
//$(".p_title").html($(".span2").eq(j+1).html());
//myplay();

//}
//return;
//}
//}
//}else{
//mysj();
//music.play();
//}

//};
//}

////音乐播放
//function myplay(obj){
//setTimeout(function(){
//if (music.paused) {
//music.play();
//myprogressTime=window.setInterval(getProgress1,1000);
//showProgress.getElementsByTagName("em")[1].innerHTML=sTom(audio.duration);

//}else{
//music.pause();
//clearInterval(myprogressTime);
//obj.className="play";
//}
//},500);
//}


//music.addEventListener("play",function(e){
//play.src="images/playbar_08.png";
//},false);
//music.addEventListener("pause",function(e){
//play.src="images/playbar_11.png";
//},false);

////调整音量
//if(isFirefox=navigator.userAgent.indexOf("Firefox")>0){
//volume_1.onmousedown=function(e){
//volume_2.style.top=e.clientY-470+"px";
//$("#volume_1_1").css("height",580-e.clientY);
//if (((580-e.clientY)/100).toFixed(1)>1) {
//audio.volume=1;
//}else{
//audio.volume=((580-e.clientY)/100).toFixed(1);
//}
//}
//}

//if(window.navigator.userAgent.indexOf("Chrome") !== -1){
//volume_1.onmousedown=function(e){
//volume_2.style.top=e.clientY-475+"px";
//$("#volume_1_1").css("height",585-e.clientY);
//if (((585-e.clientY)/100).toFixed(1)>1) {
//audio.volume=1;

//}else{
//audio.volume=((585-e.clientY)/100).toFixed(1);
//}
//}
//}


////静音
//var aodio;
//function Muted(e){
//if (audio.muted) {
//audio.muted=false;
//muted.src="images/playbar_14.png";
//audio.volume=aodio;
//}else{
//audio.muted=true;
//muted.src="images/playbar_46.png";
//aodio=audio.volume;
//audio.volume=0;
//}
//}

////时间转换
//function sTom(mytime){
//var mystr="";
//var mytime1=Math.round(mytime);
////求分钟和秒
//var mymin=Math.floor(mytime/60);
//var mysrc=mytime1%60;
////判断
//if(mymin>9){
//mystr+=mymin+":";
//}else{
//mystr+="0"+mymin+":";
//}
//if(mysrc>9){
//mystr+=mysrc;
//}else{
//mystr+="0"+mysrc;
//}
//return mystr;
//}

//progressWrap.onmousedown=function(e){
//if(audio.paused||audio.ended){
//myplay();
//dragEvent1(e);
//}else{
//dragEvent1(e);
//}
//}

//function dragEvent1(e){
////首先消除计时器，当值都改变完的时候，在重新启动
//clearInterval(myprogressTime);
//var mylength=e.pageX-progressWrap.offsetLeft;
//var myparcent=mylength/progressWrap.offsetWidth;
////根据百分比 去计算长度和时间
//playProgress.style.width=myparcent*(progressWrap.offsetWidth)+"px";
//audio.currentTime=audio.duration*myparcent;
////重新启动计时器
//myprogressTime=window.setInterval(getProgress1,1000); ;
//}

//$(".span2").each(function(i,item){
//$(".span2").eq(i).on("click",function(){
//$("#music").attr("src","music/"+$(this).html()+".mp3");
//$(".p_title").html($(this).html());
//myplay();
//});
//});


//show.onclick=function(){
//for(var j=0;j<span2.length;j++){
//if ("music/"+$(".span2").eq(j).html()+".mp3"==$("#music").attr("src")) {
//$("#music").attr("src","music/"+$(".span2").eq(j-1).html()+".mp3");
//$(".p_title").html($(".span2").eq(j-1).html());
//myplay();
//return;
//}
//}

//}

//fast.onclick=function(){
//for(var j=0;j<span2.length;j++){
//if ("music/"+$(".span2").eq(j).html()+".mp3"==$("#music").attr("src")) {
//$("#music").attr("src","music/"+$(".span2").eq(j+1).html()+".mp3");
//$(".p_title").html($(".span2").eq(j+1).html());
//myplay();
//return;
//}
//}
//}
//function myxh(){
//for(var k=0;k<$(".span2").length;k++){
//if (k+1==$(".span2").length) {
//k=-1;
//}
//$("#music").attr("src","music/"+$(".span2").eq(k+1).html()+".mp3");
//$(".p_title").html($(".span2").eq(k+1).html());

//}
//}
//function mysj(){
//var sj=Math.floor(Math.random()*$(".span2").length);
//if ("music/"+$(".span2").eq(sj).html()+".mp3"==$("#music").attr("src")) {
//mysj();
//}else{
//$("#music").attr("src","music/"+$(".span2").eq(sj).html()+".mp3");
//$(".p_title").html($(".span2").eq(sj).html());
//}
//}
$(".xh").on("click",function(){
	$(".sj").css("display","block");
	$(this).css("display","none");
	bl=!bl;
});
$(".sj").on("click",function(){
	$(".xh").css("display","block");
	$(this).css("display","none");
})




