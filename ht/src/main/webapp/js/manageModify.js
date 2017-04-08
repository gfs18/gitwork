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
		$.get("song",{"soid":soid},function(data){
			$("#soid").val(data[0].soid);
			$("#labelid").html(data[0].soid);
			$("#soname").val(data[0].soname);
			$("#sopicPath").attr("src",(data[0].sopicPath == "" || data[0].sopicPath == null) ? "image/not_pic.jpg" : data[0].sopicPath);
			$("#solyricPath").val(data[0].solyricPath);
			$("#sopath").val(data[0].sopath);
			if(data[0].vipDownload == "是"){
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

