var count= 0 ;
//显示专辑信息
function showSpecialInfo(rows,page){
	$.get("special/back",{"rows":rows,"page":page},function(data){
		var str = "";
		for (var i = 0; i < data.rows.length; i++) {
			str += "<tr class='tableoverout'><th>"+data.rows[i].spid+"</th><th>"+data.rows[i].spname+"</th>";
			if(data.rows[i].singer==null){
				str +="<th>无名氏</th>";
			}else{
				str +="<th>"+data.rows[i].singer.sgname+"</th>";
			}
			if(data.rows[i].language == null){
				str+="<th>无</th>";
			}else{
				str+="<th>"+data.rows[i].language.language+"</th>";
			}
			str+="<th><img class='show_img' src='"+data.rows[i].sppicPath+"'></th><th>"
			+data.rows[i].sppubTime.substring(0,10)+"</th><th>"+data.rows[i].spclick+"<input  hidden='true' id='spclick' style='width:30px'/></th>"
			+"<th><a href='back/specialModify.jsp?spid="+data.rows[i].spid+"'><span class='glyphicon glyphicon-edit' aria-hidden='true'></span></a>&nbsp;&nbsp;"
			+"<a onclick='removeSpecial("+data.rows[i].spid+")'><span class='glyphicon glyphicon-remove' aria-hidden='true'></span></a></th></tr>";
		}
		str +='<script type="text/javascript">$(".tableoverout").mouseover(function(){this.style.backgroundColor="#30C27B";this.style.color="#ffffff";}); $(".tableoverout").mouseout(function(){this.style.backgroundColor="";this.style.color="#000000";});</script>';
		$("#tableBody").html(str);
		paginationSpecial(data.totalPage);
	});
}

//分页
function paginationSpecial(totalP){
	var pStr = "";
	if(totalP>=5){
		pStr +='<li><a href="javascript:void(0)" onclick="paginatorPrevious('+totalP+')">&laquo;</a></li>';
		for (var j = 1; j <= 5; j++) {
			pStr +='<li><a href="javascript:void(0)" onclick="showSpecialInfo(5,'+(j+(count*5))+')">'+(j+count*5)+'</a></li>';
		}
		pStr +='<li><a href="javascript:void(0)" onclick="paginatorNext('+totalP+')" >&raquo;</a></li>';
	}else{
		pStr +='<li><a href="javascript:void(0)" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>';
		for (var i = 1; i <= totalP; i++) {
			pStr +='<li><a href="javascript:void(0)" onclick="showSpecialInfo(5,'+i+')">'+i+'</a></li>';
		}
		pStr +='<li><a href="javascript:void(0)" aria-label="Next"> <span aria-hidden="true">&raquo;</span></a></li>';
	}
	$(".pagination").html(pStr);
}

function paginatorPrevious(totalP){
	count= count > 0?(count-1):0 ;
	showSpecialInfo(5,1 + 5*(count));
}

function paginatorNext(totalP){
	var totalCount=parseInt(totalP/5);
	count = count < totalCount?(count+1):totalCount ;
	showSpecialInfo(5,1 + 5*(count) );
}

//删除专辑
function removeSpecial(spid){
	$.post("special/delete",{"spid":spid},function(data){
		if(data){
			alert("删除成功!!!");
		}else{
			alert("删除失败...");
		}
		location.href="back/specialInfo.jsp";
	},"json");
}

showSpecialInfo(5,1);


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


//查询专辑
specialSearch();
function specialSearch(){
	var spname=location.href.split("=")[1];
	if(spname!=null){
		$.get("special/search/"+spname,function(data){
				var specialStr="";
				for(var i=0;i<data.length;i++){
					specialStr+="<tr class='tableoverout'><th>"+data[i].spid+"</th><th>"+data[i].spname+"</th><th>"+data[i].singer.sgname+"</th><th>"
					+data[i].language.language+"</th><th>"+data[i].sppicPath+"</th><th>"
					+data[i].sppubTime.substring(0,10)+"</th><th>"+data[i].spclick+"</th>"
					+"<th><a href='back/specialModify.jsp?spid="+data[i].spid+"'><span class='glyphicon glyphicon-edit' aria-hidden='true'></span></a>&nbsp;&nbsp;"
					+"<a onclick='removeSpecial("+data[i].spid+")'><span class='glyphicon glyphicon-remove' aria-hidden='true'></span></a></th></tr>";
				}
				specialStr +='<script type="text/javascript">$(".tableoverout").mouseover(function(){this.style.backgroundColor="#30C27B";this.style.color="#ffffff";}); $(".tableoverout").mouseout(function(){this.style.backgroundColor="";this.style.color="#000000";});</script>';
				$("#tableBody").html(specialStr);
				$(".pagination").html("");
		},"json");
	}else{
		showSpecialInfo(5, 1);
	}
}

function modify(spid){
	$(this).show();
	
}


