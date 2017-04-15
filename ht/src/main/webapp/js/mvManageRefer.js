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
function findMV(){
	var mvName = $.trim($("#mvName").val());
	$("#referMV").attr("href","back/mvManage.jsp?mvName="+mvName);
	//location.herf="back/userManage.jsp";
}

//通过enter实现查询
document.onkeydown=function(e){
	if((e.keyCode || e.which) ==13){
		findUser(); //这里调用你要执行的方法，像提交请求……
	}
}

