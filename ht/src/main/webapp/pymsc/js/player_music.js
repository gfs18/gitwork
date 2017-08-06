//导航栏特效
$("#topnav li").mouseover(function(){
	$(".mydiv").css("display", "block");
	$(".mydiv").css("left",($(this).width())*$(this).index());
});
$("#topnav li").mouseout(function(){
	$(".mydiv").css("display", "none");
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


/******************************歌曲加载***********************************/

var musicList = [ {
	title : '暧昧',
	singer : '张碧晨',
	cover : '/upload/images/246585046.jpg',
	src : '/upload/music/1463849572.mp3'
},{
	title : '17岁',
	singer : '平安',
	cover : '/upload/images/246586325.jpg',
	src : '/upload/music/17sui.mp3'
},{
	title : '啦啦啦',
	singer : '啦啦啦',
	cover : '/upload/images/241870629.jpg',
	src : ' /upload/music/1.mp3'
},{
	title : '海阔天空',
	singer : 'beyond',
	cover : '/upload/images/274041589.jpg',
	src : '/upload/music/aixiaodeyanjing.mp3'
}];
new SMusic({
	musicList : musicList
});
var musicList = [];

function loadMusicList(){
	var controlStr=location.href.split("?")[1].split("&");
	var songid = controlStr[1].split("=")[1];
	$.get("song/refsong/"+songid,function(data){
		var listInfo =  {title:data[0].soname,singer:data[0].singer.sgname,cover:data[0].sopicPath,src:data[0].sopath,spid:data[0].spid,sgid:data[0].singer.sgid,solyricPath:data[0].solyricPath};
		musicList.push(listInfo);
		if(controlStr[0].split("=")[1]=="player"){//播放  直接把位置移到第一位

		}
		if(controlStr[0].split("=")[1]=="add"){//添加到播放列表

		}
		//加载到musicList列表去
		new SMusic({
			musicList : musicList
		});

		sync();//歌曲播放和歌词显示

	},"json");
}
loadMusicList();


/*********************歌词同步************************************/
function sync(){
	//歌词同步部分    
	function parseLyric(text) { 
		//将文本分隔成一行一行，存入数组    
		var lines = text.split('\n'),    
		//用于匹配时间的正则表达式，匹配的结果类似[xx:xx.xx]    
		pattern = /\[\d{2}:\d{2}.\d{2}\]/g,    
		//保存最终结果的数组    
		result = [];   
		//去掉不含时间的行    
		while (!pattern.test(lines[0])) {    
			lines = lines.slice(1);    
		};    
		//上面用'\n'生成生成数组时，结果中最后一个为空元素，这里将去掉    
		lines[lines.length - 1].length === 0 && lines.pop(); 
		lines.forEach(function(v /*数组元素值*/ , i /*元素索引*/ , a /*数组本身*/ ) {    
			//提取出时间[xx:xx.xx]    
			var time = v.match(pattern), 
			//提取歌词    
			value = v.replace(pattern, ''); 
			//因为一行里面可能有多个时间，所以time有可能是[xx:xx.xx][xx:xx.xx][xx:xx.xx]的形式，需要进一步分隔    
			time.forEach(function(v1, i1, a1) {    
				//去掉时间里的中括号得到xx:xx.xx    
				var t = v1.slice(1, -1).split(':');    
				//将结果压入最终数组    
				result.push([parseInt(t[0], 10) * 60 + parseFloat(t[1]), value]);    
			});
		});   
		//最后将结果数组中的元素按时间大小排序，以便保存之后正常显示歌词    
		result.sort(function(a, b) {    
			return a[0] - b[0];    
		});
		return result;    
	} 


	loadPage();
	//加载到页面
	function loadPage(){
		//获取歌名和歌手
		var songName = $(".u-music-title strong").html();
		var singer = $(".u-music-title small").html().replace("&nbsp;","");

		if(songName != null && songName != ""){
			$(".show-music-title h1").html(songName);
		}
		if(singer != null && singer !=""){
			$(".show-music-title p").append('<label style="color: #C4DEFA">歌手&nbsp;:&nbsp;</label><a style="color: #FFF" href="javascript:void(0)">'+singer+'</a>');
		}

		//判断歌手和歌名不能为空
		if(songName != null && songName != "" && singer != null && singer !=""){
			//判断时当前播放的歌
			for (var i = 0; i < musicList.length; i++) {
				if($.trim(musicList[i].singer) == $.trim(singer) && $.trim(musicList[i].title) == $.trim(songName)){
					var sgname = musicList[i].src.split("/");
					sgname = sgname[sgname.length-1].split(".")[0];
					fn(sgname);
				}
			}
		}
	}
	var str = null;
	//歌词同步操作
	function fn(sgname){ 
		$.get('/upload/solyric/'+sgname+'.lrc',function(data){
			if(data != null && data != ""){
				$('.show-solyric ul').html("");
				str=parseLyric(data);//歌词规则化
				//歌词显示
				for(var i=0,li;i<str.length;i++){ 
					li=$('<li>'+str[i][1]+'</li>');    
					$('.show-solyric ul').append(li);    
				}
				//歌词的移动
				solyricMove();
			}
		});
	}

	//歌词移动
	function solyricMove(){
		//歌词高亮
		var time = $(".u-time").html().split("/");
		var musicTime = parseFloat((time[0].split(":")[0]*60))+parseFloat(time[0].split(":")[1]);
		var endTime =parseFloat(time[1].split(":")[0]*60)+parseFloat(time[1].split(":")[1]);
		for (var i = 0, l = str.length; i < l; i++) { 
			var strTime = parseFloat(str[i][0]);
			if(musicTime <= strTime && (musicTime+1) > strTime){
				$('.show-solyric ul li:nth-child('+(i-1)+')').css("margin-top","-20px");
			}
			if(musicTime <= strTime && (musicTime+1) > strTime && str[i][1]!=null && str[i][1] != ""){
				$('.show-solyric ul li').css('color','#C4DEFA');
				$('.show-solyric ul li:nth-child('+(i+1)+')').css('color','#39D68B'); //高亮显示当前播放的哪一句歌词    
				continue;
			}
		}    
		if(musicTime == 0 || musicTime >= endTime){ //判断当前播放的音乐是否播放完毕    
			$('.show-solyric ul').html(""); //清空歌词    
			$(".show-music-title h1").html("");
			$(".show-music-title p").html("");
			loadPage();
			return;
		}
	}
	setInterval(solyricMove, 500);
}
/************************播放列表图标**************************/
var i;
$(".play-music-list").click( function () { 
	if(i){
		$(".m-music-list-wrap").css("display","block");
		$(this).attr("src","pymsc/src/img/playbar_47.png");
		i=0;
	}else{
		$(".m-music-list-wrap").css("display","none");
		$(this).attr("src","pymsc/src/img/playbar_48.png");
		i=true;
	}
});


