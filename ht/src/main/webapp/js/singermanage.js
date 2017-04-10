showSingerInfo(10,1);
function showSingerInfo(PageSize,currPage){
	$.get("singer/Spagination",{"PageSize":PageSize,"currPage":currPage},function(data){
		alert(JSON.stringify(data));
		var str = "";
		for (var i = 0; i < data.rows.length; i++) {
			str+= "<tr class='tableoverout'>" +
				"<th>"+data.rows[i].sgid+"</th>" +
				"<th>"+data.rows[i].sgname+"</th>" +
				"<th>"+data.rows[i].sgEname+"</th>" +
				"<th>"+data.rows[i].sgnation+"</th>" +
				"<th>"+data.rows[i].languaes+"</th>" +
				"<th>"+data.rows[i].sggender+"</th>" +
				"<th>"+data.rows[i].sgpicPath+"</th>" +
				"<th>"+data.rows[i].sgintroduce+"</th>" +         
				"<th><span class='glyphicon glyphicon-edit'></span>&nbsp;<span class='glyphicon glyphicon-remove-circle'  ></span> </th>" +
				"</tr>";
		}      
		str+='<script type="text/javascript">$(".tableoverout").mouseover(function(){this.style.backgroundColor="#100C27B";this.style.color="#FF0000 ";}); $(".tableoverout").mouseout(function(){this.style.backgroundColor="";this.style.color="#000000";});</script>';
		$("#tableBody").html(str+"</hr>");
		paginationSinger(data.totalPage);
	},"json");
}
 /* <a onClick='Del('\'+data.rows[i].sgid+')'>
*/function Del(sgid){
	alert("11111");
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