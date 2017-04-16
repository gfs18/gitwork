//注销
function loginOut(){
	$.post("admin/out", function(data) {
		if(data){
			location.href="back/login.jsp";
		}
	},"json");
}

//显示当前用户
showUser();
function showUser(){
	var userid=location.href.split('=')[1];
	if(userid!=null&& userid!=""){
		$.post("user/showUser/"+userid,function(data){
			if(data.upicPath!=null && data.upicPath!=""){
				var upicPath=data.upicPath;
			}else{
				upicPath="images/not_imgs.png";
			}
			if(data.uintroduce!=null && data.uintroduce!=""){
				var uintroduce=data.uintroduce;
			}else{
				uintroduce="";
			}
			var str = "";
				str+='<div id="myimg1" class="col-lg-2 col-md-2 hidden-sm hidden-xs">'
				+'<img src="'+upicPath+'" /></div>'
				+'<div id="right" class="col-lg-10 col-md-10 col-sm-12 col-xs-12">'
				+'<p class="username" id="Username"><button id="lv">'+data.uname+'</button></p>'
				+'<p id="personal">个人介绍：'+uintroduce+'</p><p class="myemail" id="myEmail">邮箱：'+data.uemail+'</p></div>';
			$("#imgrow").html(str);
		});
	}
}


