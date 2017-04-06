/////////////////////////////////站内专辑图片显示///////////////////////////
special();
function special(){
	$.get("special/index", function(data){
		var specialStr = "";
		for (var i = 0; i < data.length; i++) {
			if(i==0){
				specialStr+='<div class=""><a href="page/special_music.jsp?spid='+data[i].spid+'">';
				specialStr+='<img id="img2" src="'+data[i].sppicPath+'" /></a>';
				specialStr+='<div class="bf1"><a href=""><i	class="glyphicon glyphicon-headphones pull-left"><span>'+data[i].spclick+'</span></i></a>';
				specialStr+='<a href=""><i class="glyphicon glyphicon-play-circle"></i></a></div></div>';
			}else{
				specialStr+='<div class="zj1"><a href="page/special_music.jsp?spid='+data[i].spid+'">';
				specialStr+='<img class="img3" src="'+data[i].sppicPath+'" /></a>';
				specialStr+='<div class="bf2"><a href=""><i	class="glyphicon glyphicon-headphones pull-left headphones1"><span>'+data[i].spclick+'</span></i></a>';
				specialStr+='<a href=""><i class="glyphicon glyphicon-play-circle glyphicon1"></i></a></div></div>';
			}
		}
		$(".content1_1_1").html(specialStr);
	}, "json");
}

singer()
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
songList();
function songList(){
	$.get("song", function(data){
		var songListStr = "";
		for (var i = 0; i < data.length; i++) {
			songListStr+='<tr><td class="td"><span>'+data[i].soname+'</span></td>'+
			'<td><a href="page/demo.jsp?songid='+data[i].soid+'"><i class="glyphicon glyphicon-play-circle tp1" title="播放"></i>'+
			'</a></td><td><a href=""><i class="glyphicon glyphicon-plus-sign tp2" title="添加到播放列表"></i></a></td></tr>';
		}
		$("#mytablet").html(songListStr);
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

$(".xh").on("click",function(){
	$(".sj").css("display","block");
	$(this).css("display","none");
	bl=!bl;
});
$(".sj").on("click",function(){
	$(".xh").css("display","block");
	$(this).css("display","none");
})




