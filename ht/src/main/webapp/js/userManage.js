var count= 0 ;
//分页
showUserManage(5,1);
function showUserManage(pageS,currP){
	$.get("user/pagination",{"pageS":pageS,"currP":currP},function(data){
		
		var str = "";
		for (var i = 0; i < data.rows.length; i++) {
			var img=data.rows[i].upicPath;
			var ucondition=data.rows[i].ucondition;
			var uvip=data.rows[i].uvip;
			if(img!=null){
				img=data.rows[i].upicPath;
			}else{
				img="images/img.png";
			}
			if(ucondition==1){
				var strOptions='<select id="uconditionValue" style="border:1px solid #c0c0c0; width: 70px; height:25px;"><option value="1" >'+"可用"+'</option><option value="0">'+"不可用"+'</option></select>';
			}else{
				var strOptions='<select id="uconditionValue" style="border:1px solid #c0c0c0; width: 70px; height:25px;"><option value="0" >'+"不可用"+'</option><option value="1">'+"可用"+'</option></select>';
			}
			if(uvip==1){
				var strOptions1='<select id="uvipValue" style="border:1px solid #c0c0c0; width: 70px; height:25px;"><option value="1">'+"会员"+'</option><option value="0">'+"非会员"+'</option></select>';
			}else{
				var strOptions1='<select id="uvipValue" style="border:1px solid #c0c0c0; width: 70px; height:25px;"><option value="0">'+"非会员"+'</option><option value="1">'+"会员"+'</option></select>';
			}
			str += "<tr class='tableoverout'><th id='useridValue'>"+data.rows[i].userid+"</th><th>"+data.rows[i].uname+"</th><th>"
			+data.rows[i].uemail+"</th><th>"+'<img src='+img +' class="show_img">'+"</th><th>"
			+data.rows[i].uintroduce+"</th><th>"+strOptions+"</th>"
			+"<th>"+strOptions1+"</th>"
			+"<th><a onclick='modifyUser("+data.rows[i].userid+","+ucondition+","+uvip+")'><span class='glyphicon glyphicon-ok' aria-hidden='true'></span></a>&nbsp;&nbsp;"
			+"<a onclick='removeUser("+data.rows[i].userid+")'><span class='glyphicon glyphicon-remove' aria-hidden='true'></span></a></th></tr>";
		}
		//行变色
		str +='<script type="text/javascript">$(".tableoverout").mouseover(function(){this.style.backgroundColor="#30C27B";this.style.color="#008080";}); $(".tableoverout").mouseout(function(){this.style.backgroundColor="";this.style.color="#000000";});</script>';
		$("#tableBody").html(str);
		paginationUserManage(data.totalPage);
	});
}


//修改用户的状态
function modifyUser(userid,ucondition,uvip){
/*	alert("userid:"+userid+"ubon:"+ucondition);
	var obj=document.getElementById('uconditionValue');
	var index=obj.selectedIndex; 

	var objj=document.getElementById('uvipValue');
	var indexx=objj.selectedIndex; 
	alert("index:"+index+"indexx:"+indexx);

*/
	alert("userid:"+userid+"ubon:"+ucondition+"uvip:"+uvip);
	$.post("user/modify",{"userid":userid,"ucondition":uconditionValue,"uvip":uvipValue},function(data){
		if(data){
			alert("修改成功!!!");
			location.href="back/userManage.jsp";
		}else{
			alert("修改失败...");
		}

	},"json");
}

function paginationUserManage(totalP){
	var pStr = "";
	if(totalP>=5){
		pStr +='<li><a href="javascript:void(0)" onclick="paginatorPrevious('+totalP+')">&laquo;</a></li>';
		for (var j = 1; j <= 5; j++) {
			pStr +='<li><a href="javascript:void(0)" onclick="showUserManage(5,'+(j+(count*5))+')">'+(j+count*5)+'</a></li>';
		}
		pStr +='<li><a href="javascript:void(0)" onclick="paginatorNext('+totalP+')" >&raquo;</a></li>';
	}else{
		pStr +='<li><a href="javascript:void(0)" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>';
		for (var i = 1; i <= totalP; i++) {
			pStr +='<li><a href="javascript:void(0)" onclick="showUserManage(5,'+i+')">'+i+'</a></li>';
		}
		pStr +='<li><a href="javascript:void(0)" aria-label="Next"> <span aria-hidden="true">&raquo;</span></a></li>';
	}
	$(".pagination").html(pStr);
}

function paginatorPrevious(totalP){
	count= count > 0?(count-1):0 ;
	showUserManage(5,1 + 5*(count));
}

function paginatorNext(totalP){
	var totalCount=parseInt(totalP/5);
	count = count < totalCount?(count+1):totalCount ;
	showUserManage(5,1 + 5*(count) );
}
//删除
function removeUser(userid){
	$.post("user/remove",{"userid":userid},function(data){
		if(data){
			alert("删除成功!!!");
		}else{
			alert("删除失败...");
		}
		location.href="back/userManage.jsp";
	},"json");
}



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
			$("#tableBody").html();
			$("#tableBody").html(str);
			$(".pagination").html("");
		});
	}else{
		showUserManage(5,1);
	}
}
//删除搜索后得到的用户后刷新
function removeReferUser(userid){
	$.post("user/remove",{"userid":userid},function(data){
		if(data){
			alert("删除成功!!!");
		}else{
			alert("删除失败...");
		}
		referUser();
	},"json");
}



//修改用户的状态
function modifyUser(userid){
	alert(userid);
	
	var obj=document.getElementById('uconditionValue');
	var index=obj.selectedIndex; 
	var ucondition = obj.options[index].value;
	
	var objj=document.getElementById('uvipValue');
	var indexx=objj.selectedIndex; 
	var uvip = objj.options[indexx].value;
	
	alert("uconditionValue11111111111....."+ucondition);
	alert("uvipValue11111111111....."+uvip);
	//"userid":userid,"ucondition":ucondition,"uvip":uvip
	//{"userid":userid,"ucondition":uconditionValue,"uvip":uvipValue},
	$.post("user/modify/mo"+userid,function(data){
		alert(JSON.stringify(data));
		if(data){
			alert("修改成功!!!");
			location.href="back/userManage.jsp";
		}else{
			alert("修改失败...");
		}
		
	},"json");
}







