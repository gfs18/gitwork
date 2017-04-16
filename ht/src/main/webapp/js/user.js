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
			alert(JSON.stringify(data));
			alert(data.upicPath);
			if(data.upicPath!=null && data.upicPath!=""){
				var upicPath=data.upicPath;
			}else{
				upicPath="";
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

/*

//搜索用户
referUser();
function referUser(){
	var uname=location.href.split('=')[1];
	if(uname!=null&& uname!=""){
		$.post("user/referUser/"+uname,function(data){
			var str = "";
			for (var i = 0; i < data.length; i++) {
				var img=data[i].upicPath;
				var ucondition=data[i].ucondition;
				var uvip=data[i].uvip;
				if(img!=null){
					img=data[i].upicPath;
				}else{
					img="images/not_image.png";
				}
				if(ucondition==1){
					ucondition="可用";
				}else{
					ucondition="不可用";
				}
				if(uvip=1){
					uvip="会员";
				}else{
					uvip="非";
				}
				str += "<tr class='tableoverout'><th>"+data[i].userid+"</th><th>"+data[i].uname+"</th><th>"
				+data[i].uemail+"</th><th>"+'<img src='+img+' class="show_img">'+"</th><th>"
				+data[i].uintroduce+"</th><th>"
				+'<select><option style="width:10px">'+ucondition+'</option>'
				+'<option style="width:10px">'+ucondition+'</option></select>'
				+"</th><th>"+uvip+"</th>"
				+"<th><a href='back/userManageModify.jsp?uname="+data[i].uname+"'><span class='glyphicon glyphicon-edit' aria-hidden='true'></span></a>&nbsp;&nbsp;"
				+"<a onclick='removeReferUser("+data[i].userid+")'><span class='glyphicon glyphicon-remove' aria-hidden='true'></span></a></th></tr>";
			}

			//行变色
			str +='<script type="text/javascript">$(".tableoverout").mouseover(function(){this.style.backgroundColor="#30C27B";this.style.color="#ffffff";}); $(".tableoverout").mouseout(function(){this.style.backgroundColor="";this.style.color="#000000";});</script>';
			$("#tableBody").html(str);
			$(".pagination").html("");
		});
	}else{
		showUserManage(5,1);
	}
}*/


