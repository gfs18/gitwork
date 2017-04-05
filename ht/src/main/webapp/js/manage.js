$("#topnav li").mouseover(function(){
	$(".mydiv").css("left",($(this).width())*$(this).index());
});

$("#tableBody tr").mouseover(function(){
	this.style.backgroundColor="#30C27B";
	this.style.color="#ffffff";
});

$("#tableBody tr").mouseout(function(){
	this.style.backgroundColor="";
	this.style.color="#000000";
});

function showDiv(){
	if ($(window).width()<=1349) {
		$(".mydiv").css("display", "block");
	}else
	{
		$(".mydiv").css("display", "none");
	}
}

//注销
function loginOut(){
	$.post("admin/out", function(data) {
		if(data){
			location.href="back/login.jsp";
		}
	},"json");
}

function showSongInfo(){
	$.get("song/pagination",function(data){
		alert(JSON.stringify(data));
	});
}
showSongInfo();





