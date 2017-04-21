$("#topnav li").mouseover(function(){
	$(".mydiv").css("left",($(this).width())*$(this).index());
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

init();
function init(){
	var userid= location.href.split("=")[1];
	if(userid != null && userid!=""){
		$.post("user/showUser/"+userid,function(data){
			alert(JSON.stringify(data));
			$("#userid").val(data.userid);
			$("#labelid").html(data.userid);
			$("#uname").val(data.uname);
			$("#labelname").html(data.uname);
			$("#upicPath").attr("src",(data.upicPath == "" || data.upicPath == null) ? "images/not_pic.jpg" : data.upicPath);
			$("#uemail").val(data.uemail);
			$("#uintroduce").val(data.uintroduce);
		},"json");
	}
}

function chgPic(obj){
	$("#upicPath").attr("src",window.URL.createObjectURL(obj.files[0]));
}

