var count= 0 ;
function showSongInfo(pageS,currP){
	$.get("song/pagination",{"pageS":pageS,"currP":currP},function(data){
		var str = "";
		for (var i = 0; i < data.rows.length; i++) {
			str += "<tr class='tableoverout'><th>"+data.rows[i].soname+"</th><th>"+data.rows[i].sopicPath+"</th><th>"
			+data.rows[i].sopubTime+"</th><th>"+data.rows[i].solyricPath+"</th><th>"
			+data.rows[i].sopath+"</th><th>"+data.rows[i].soduration+"</th><th>"+data.rows[i].vipDownload+"</th></tr>";
		}
		str +='<script type="text/javascript">$(".tableoverout").mouseover(function(){this.style.backgroundColor="#30C27B";this.style.color="#ffffff";}); $(".tableoverout").mouseout(function(){this.style.backgroundColor="";this.style.color="#000000";});</script>';
		$("#tableBody").html(str);
		paginationSong(data.totalPage);
	});
}

function paginationSong(totalP){
	var pStr = "";
	if(totalPage>=5){
		pStr +='<li><a href="javascript:void(0)" onclick="paginatorPrevious('+totalP+')">&laquo;</a></li>';
		for (var j = 1; j <= 5; j++) {
			pStr +='<li><a href="javascript:void(0)" onclick="showSongInfo(5,'+(j+(count*5))+')">'+(j+count*5)+'</a></li>';
		}
		pStr +='<li><a href="javascript:void(0)" onclick="paginatorNext('+totalP+')" >&raquo;</a></li>';
	}else{
		pStr +='<li><a href="javascript:void(0)" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>';
		for (var i = 1; i <= totalPage; i++) {
			pStr +='<li><a href="javascript:void(0)" onclick="showSongInfo(5,'+i+')">'+i+'</a></li>';
		}
		pStr +='<li><a href="javascript:void(0)" aria-label="Next"> <span aria-hidden="true">&raquo;</span></a></li>';
	}
	$(".pagination").html(pStr);
}

function paginatorPrevious(totalP){
	count= count > 0?(count-1):0;
	showSongInfo(5,1 + 5*(count));
}

function paginatorNext(totalP){
	count = count < (totalP / 5)?(count+1):totalP ;
	showSongInfo(5,1 + 5*(count) );
}

showSongInfo(5,1);


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






