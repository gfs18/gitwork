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


//搜索
function findUser(){
	var uname = $.trim($("#uname").val());
	$("#referUser").attr("href","back/userManage.jsp?uname="+uname);
}



