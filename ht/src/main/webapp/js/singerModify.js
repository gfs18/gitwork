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
	var sgid = location.href.split("=")[1];
	if(sgid != null && sgid!=""){
		$.get("singer",{"sgid":sgid},function(data){
			alert(JSON.stringify(data));
			$("#sgid").val(data[0].sgid);
			$("#labelid").html(data[0].sgid);
			$("#sgname").val(data[0].sgname);
			$("#sgEname").val(data[0].sgEname);
			$("#sgnation").val(data[0].sgnation);
			$("#sggender").val(data[0].sggender);
			$("#sgpicPath").attr("src",(data[0].sopicPath == "" || data[0].sgpicPath == null) ? "images/huayuqunxing.jpg" : data[0].sgpicPath);
			$("#sgintroduce").val(data[0].sgintroduce);
			
		},"json");
	}
}

function chgPic(obj){
	$("#sgpicPath").attr("src",window.URL.createObjectURL(obj.files[0]));
}

