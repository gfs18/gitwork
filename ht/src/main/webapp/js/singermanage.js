function showSingerInfo(PageSize,currPage){
	$.get("singer/Spagination",{"PageSize":PageSize,"currPage":currPage},function(data){
		//alert(JSON.stringify(data));
		var str = "";
		for (var i = 0; i < data.rows.length; i++) {
			str+= "<tr class='tableoverout'>" +
				"<th>"+data.rows[i].sgid+"</th>" +
				"<th>"+data.rows[i].sgname+"</th>" +
				"<th>"+data.rows[i].sgEname+"</th>" +
				"<th>"+data.rows[i].sgnation+"</th>" +
				"<th>"+data.rows[i].sggender+"</th>" +
				"<th><img src="+data.rows[i].sgpicPath+" id='dpic' width='50' height='50'></th>" +
				"<th class='contents' onmouseover='mOver(this)'>"+data.rows[i].sgintroduce+"</th>" +     
				"<th><a href='back/singerModify.jsp?sgid="+data.rows[i].sgid+"'><span class='glyphicon glyphicon-edit'></span></a>&nbsp;" +
				"<a onclick='removeSinger("+data.rows[i].sgid+")'><span class='glyphicon glyphicon-remove-circle'></span></a></th>" +
				"</tr>";
		}      
		str+='<script type="text/javascript">$(".tableoverout").mouseover(function(){this.style.backgroundColor="#30C27B";this.style.color="#ffffff";}); $(".tableoverout").mouseout(function(){this.style.backgroundColor="";this.style.color="#000000";});</script>';
		$("#tableBody").html(str+"</hr>");
		paginationSinger(data.totalPage);
		
	},"json");
}
//显示歌手介绍
function mOver(thi){
	thi.title = thi.innerHTML;
}
function removeSinger(sgid){
	$.post("singer/remove",{"sgid":sgid},function(data){
		if(data){
			alert("删除成功!!!");
		}else{
			alert("删除失败...");
		}
		location.href="back/singer.jsp";
	},"json");
}

var count= 0 ;
function paginationSinger(totalPage){
	var pStr = "";
	if(totalPage>=10){
		pStr +='<li><a href="javascript:void(0)" onclick="paginatorPrevious('+totalP+')">&laquo;</a></li>';
		for (var j = 1; j <= 10; j++) {
		pStr +='<li><a href="javascript:void(0)" onclick="showSingerInfo(10,'+(j+(count*10))+')">'+(j+count*10)+'</a></li>';
		}
		pStr +='<li><a href="javascript:void(0)" onclick="paginatorNext('+totalP+')" >&raquo;</a></li>';
	}else{
		pStr +='<li><a href="javascript:void(0)" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>';
		for (var i = 1; i <= totalPage; i++) {
			pStr +='<li><a href="javascript:void(0)" onclick="showSingerInfo(10,'+i+')">'+i+'</a></li>';
		}
		pStr +='<li><a href="javascript:void(0)" aria-label="Next"> <span aria-hidden="true">&raquo;</span></a></li>';
	}
	$(".pagination").html(pStr);
}

function paginatorPrevious(totalP){
	count= count > 0?(count-1):0;
	showSingerInfo(10,1 + 10*(count));
}

function paginatorNext(totalP){
	count = count < (totalP / 10)?(count+1):totalP ;
	showSingerInfo(10,1 + 10*(count) );
}



function Refersinger(){
	var sgname = location.href.split("=")[1];
	if(sgname != null && sgname !=""){
		$.get("singer/Refer/"+sgname,function(data){
			var str = "";
			for (var i = 0; i < data.length; i++) {
				str+= "<tr class='tableoverout'>" +
					"<th>"+data[i].sgid+"</th>" +
					"<th>"+data[i].sgname+"</th>" +
					"<th>"+data[i].sgEname+"</th>" +
					"<th>"+data[i].sgnation+"</th>" +
					"<th>"+data[i].sggender+"</th>" +
					"<th><img src="+data[i].sgpicPath+" id='dpic' width='50' height='50'></th>" +
					"<th>"+data[i].sgintroduce+"</th>" +         
					"<th><a href='back/singerModify.jsp?sgid="+data[i].sgid+"'><span class='glyphicon glyphicon-edit'></span></a>&nbsp;" +
					"<a onclick='removeSinger("+data[i].sgid+")'><span class='glyphicon glyphicon-remove-circle'></span></a></th>" +
					"</tr>";
			}      
			str +='<script type="text/javascript">$(".tableoverout").mouseover(function(){this.style.backgroundColor="#30C27B";this.style.color="#ffffff";}); $(".tableoverout").mouseout(function(){this.style.backgroundColor="";this.style.color="#000000";});</script>';
			$("#tableBody").html(str);
		},"json");
	}else{
		showSingerInfo(10,1);
	}
}
Refersinger();

