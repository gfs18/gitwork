var count= 0 ;
showSongInfo(3,1);
function showSongInfo(pageS,currP){
	$.get("song/pagination",{"pageS":pageS,"currP":currP},function(data){
		var str = "";
		for (var i = 0; i < data.rows.length; i++) {
			str += "<tr class='tableoverout'><th>"+data.rows[i].soid+"</th><th>"+data.rows[i].soname+"</th><th><img class='show_img' src='"+data.rows[i].sopicPath+"'></th><th>"
			+data.rows[i].sopubTime.substring(0,10)+"</th><th>"+data.rows[i].solyricPath+"</th><th>"
			+data.rows[i].sopath+"</th><th>"+data.rows[i].soduration+"</th><th>"+data.rows[i].vipDownload+"</th>"
			+"<th><a href='back/manageModify.jsp?soid="+data.rows[i].soid+"'><span class='glyphicon glyphicon-edit' aria-hidden='true'></span></a>&nbsp;&nbsp;"
			+"<a onclick='removeSong("+data.rows[i].soid+")'><span class='glyphicon glyphicon-remove' aria-hidden='true'></span></a></th></tr>";
		}
		str +='<script type="text/javascript">$(".tableoverout").mouseover(function(){this.style.backgroundColor="#30C27B";this.style.color="#ffffff";}); $(".tableoverout").mouseout(function(){this.style.backgroundColor="";this.style.color="#000000";});</script>';
		$("#tableBody").html(str);
		paginationSong(data.totalPage);
	});
}

function paginationSong(totalP){
	var pStr = "";
	if(totalP>=5){
		pStr +='<li><a href="javascript:void(0)" onclick="paginatorPrevious('+totalP+')">&laquo;</a></li>';
		for (var j = 1; j <= 5; j++) {
			pStr +='<li><a href="javascript:void(0)" onclick="showSongInfo(3,'+(j+(count*5))+')">'+(j+count*5)+'</a></li>';
		}
		pStr +='<li><a href="javascript:void(0)" onclick="paginatorNext('+totalP+')" >&raquo;</a></li>';
		
	}else{
		pStr +='<li><a href="javascript:void(0)" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>';
		for (var i = 1; i <= totalP; i++) {
			pStr +='<li><a href="javascript:void(0)" onclick="showSongInfo(3,'+i+')">'+i+'</a></li>';
		}
		pStr +='<li><a href="javascript:void(0)" aria-label="Next"> <span aria-hidden="true">&raquo;</span></a></li>';
	}
	$(".pagination").html(pStr);
}

function paginatorPrevious(totalP){
	count= count > 0?(count-1):0 ;
	showSongInfo(3,1 + 5*(count));
}

function paginatorNext(totalP){
	var totalCount=parseInt(totalP/5);
	count = count < totalCount?(count+1):totalCount ;
	showSongInfo(3,1 + 5*(count) );
}

function removeSong(id){
	$.post("song/remove",{"id":id},function(data){
		if(data){
			alert("删除成功!!!");
		}else{
			alert("删除失败...");
		}
		location.href="back/manage.jsp";
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


//查询单曲
function ReferSong(){
	var soname = location.href.split("=")[1];
	if(soname != null && soname !=""){
		$.get("song/refer/"+soname,function(data){
			var str = "";
			for (var i = 0; i < data.length; i++) {
				str += "<tr class='tableoverout'><th>"+data[i].soid+"</th><th>"+data[i].soname+"</th><th><img class='show_img' src='"+data[i].sopicPath+"'></th><th>"
				+data[i].sopubTime+"</th><th>"+data[i].solyricPath+"</th><th>"
				+data[i].sopath+"</th><th>"+data[i].soduration+"</th><th>"+data[i].vipDownload+"</th>"
				+"<th><a href='back/manageModify.jsp?soid="+data[i].soid+"'><span class='glyphicon glyphicon-edit' aria-hidden='true'></span></a>&nbsp;&nbsp;"
				+"<a onclick='removeSong("+data[i].soid+")'><span class='glyphicon glyphicon-remove' aria-hidden='true'></span></a></th></tr>";
			}
			str +='<script type="text/javascript">$(".tableoverout").mouseover(function(){this.style.backgroundColor="#30C27B";this.style.color="#ffffff";}); $(".tableoverout").mouseout(function(){this.style.backgroundColor="";this.style.color="#000000";});</script>';
			$("#tableBody").html(str);
		},"json");
	}else{
		showSongInfo(3,1);
	}
}
ReferSong();




