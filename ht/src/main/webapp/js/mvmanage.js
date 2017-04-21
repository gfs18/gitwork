var count= 0 ;
function showMvInfo(pageS,currP){
	$.post("mv/pagination",{"pageS":pageS,"currP":currP},function(data){
		var str = "";
		for (var i = 0; i < data.rows.length; i++) {
			var img=data.rows[i].mvpicPath;   
			if(img!=null){
				img=data.rows[i].mvpicPath;
			}else{
				img="images/not_image.png";
			}
			str += "<tr class='tableoverout'><th>"+data.rows[i].mvid+"</th><th>"+data.rows[i].mvname+"</th>";
			if(data.rows[i].singer!=null){
				str +="<th>"+data.rows[i].singer.sgname+"</th>";
			}else{
				str +="<th> </th>";
			}
			
			if(data.rows[i].song != null){
				str +="<th>"+data.rows[i].song.soname+"</th>";
			}else{
				str +="<th> </th>";
			}
			
			str +="<th>"+data.rows[i].mvduration+"</th>"
			+"<th>"+'<img src='+img +' class="show_img">'+"</th>"
			+"<th>"+data.rows[i].mvpubTime+"</th><th>"+data.rows[i].mvPath+"</th>"
			+"<th><a href='back/mvmanageModify.jsp?soid="+data.rows[i].mvid+"'><span class='glyphicon glyphicon-edit' aria-hidden='true'></span></a>&nbsp;&nbsp;"
			+"<a onclick='removeMv("+data.rows[i].mvid+")'><span class='glyphicon glyphicon-remove' aria-hidden='true'></span></a></th></tr>";
		}
		str +='<script type="text/javascript">$(".tableoverout").mouseover(function(){this.style.backgroundColor="#30C27B";this.style.color="#ffffff";}); $(".tableoverout").mouseout(function(){this.style.backgroundColor="";this.style.color="#000000";});</script>';
		$("#tableBody").html(str);
		paginationMv(data.totalPage);
	});
}

function paginationMv(totalP){
	var pStr = "";
	if(totalP>=5){
		pStr +='<li><a href="javascript:void(0)" onclick="paginatorPrevious('+totalP+')">&laquo;</a></li>';
		for (var j = 1; j <= 5; j++) {
			pStr +='<li><a href="javascript:void(0)" onclick="showMvInfo(5,'+(j+(count*5))+')">'+(j+count*5)+'</a></li>';
		}
		pStr +='<li><a href="javascript:void(0)" onclick="paginatorNext('+totalP+')" >&raquo;</a></li>';
	}else{
		pStr +='<li><a href="javascript:void(0)" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>';
		for (var i = 1; i <= totalP; i++) {
			pStr +='<li><a href="javascript:void(0)" onclick="showMvInfo(5,'+i+')">'+i+'</a></li>';
		}
		pStr +='<li><a href="javascript:void(0)" aria-label="Next"> <span aria-hidden="true">&raquo;</span></a></li>';
	}
	$(".pagination").html(pStr);
}

function paginatorPrevious(totalP){
	count= count > 0?(count-1):0 ;
	showMvInfo(5,1 + 5*(count));
}

function paginatorNext(totalP){
	var totalCount=parseInt(totalP/5);
	count = count < totalCount?(count+1):totalCount ;
	showMvInfo(5,1 + 5*(count) );
}

/*后台删除MV*/
function removeMv(id){
	$.post("mv/remove",{"id":id},function(data){
		if(data){
			alert("删除成功!!!");
		}else{
			alert("删除失败...");
		}
		location.href="back/mvManage.jsp";
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


//后台搜索MV
referMV();
function referMV(){
	var mvName=location.href.split('=')[1];
	if(mvName!=null && mvName !=""){
		$.post("mv/refer/"+mvName,function(data){
			alert("mvName:"+mvName+"data:"+data);
			var str = "";
			for (var i = 0; i <data.length; i++) {
				var img=data[i].mvpicPath;   
				if(img!=null){
					img=data[i].mvpicPath;
				}else{
					img="images/not_image.png";
				}
				str += "<tr class='tableoverout'><th>"+data[i].mvid+"</th><th>"+data[i].mvname+"</th>";
				if(data[i].singer!=null){
					str +="<th>"+data[i].singer.sgname+"</th>";
				}else{
					str +="<th> </th>";
				}
				
				if(data[i].song != null){
					str +="<th>"+data[i].song.soname+"</th>";
				}else{
					str +="<th> </th>";
				}
				str +="<th>"+data[i].mvduration+"</th>"
				+"<th>"+'<img src='+img +' class="show_img">'+"</th>"
				+"<th>"+data[i].mvpubTime+"</th><th>"+data[i].mvPath+"</th>"
				+"<th><a href='back/mvmanageModify.jsp?soid="+data[i].mvid+"'><span class='glyphicon glyphicon-edit' aria-hidden='true'></span></a>&nbsp;&nbsp;"
				+"<a onclick='removeMv("+data[i].mvid+")'><span class='glyphicon glyphicon-remove' aria-hidden='true'></span></a></th></tr>";
			}
			//行变色
			str +='<script type="text/javascript">$(".tableoverout").mouseover(function(){this.style.backgroundColor="#30C27B";this.style.color="#ffffff";}); $(".tableoverout").mouseout(function(){this.style.backgroundColor="";this.style.color="#000000";});</script>';
			$("#tableBody").html(str);
			$(".pagination").html("");
		});
	}else{
		showMvInfo(5,1);
	}
}

//搜索后的删除再将剩下的用户刷新
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


