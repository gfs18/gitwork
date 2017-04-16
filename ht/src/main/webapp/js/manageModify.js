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
	var soid = location.href.split("=")[1];
	if(soid != null && soid!=""){
		$.post("song/list",{"soid":soid},function(data){
			alert(JSON.stringify(data));
			$("#soid").val(data.soid);
			$("#labelid").html(data.soid);
			$("#soname").val(data.soname);
			$("#sopicPath").attr("src",(data.sopicPath == "" || data.sopicPath == null) ? "images/not_pic.jpg" : data.sopicPath);
			$("#solyricPath").val(data.solyricPath);
			$("#sopath").val(data.sopath);
			if(data.vipDownload == "是"){
				$("#vipTrue").attr("checked","checked");
			}else{
				$("#vipFlase").attr("checked","checked");
			}
		},"json");
	}
}

function chgPic(obj){
	$("#sopicPath").attr("src",window.URL.createObjectURL(obj.files[0]));
}

