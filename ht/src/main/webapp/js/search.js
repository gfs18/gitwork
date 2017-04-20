///////////////////////////////搜索///////////////////////////
$(".btn").on("click",function(){
	var soname=$(".soname").val();
	alert(soname);
	$.post("song/search",{"soname":soname},function(data){
		alert(JSON.stringify(data));
		var str = "";
		for (var i = 0; i < data.rows.length; i++) {
			str += "<th>"+data.rows[i].soname+"</th><th><img class='show_img' src='"+data.rows[i].sopicPath+"'></th><th>"
			+data.rows[i].sopubTime.substring(0,10)+"</th><th>"+data.rows[i].soduration+"</th>"
			+"<th><a href=''><i class='glyphicon glyphicon-play-circle tp1' title='播放'></i>"
			+"</a>&nbsp;&nbsp;<a href=''><i class='glyphicon glyphicon-plus-sign tp2' title='添加到播放列表'></i></a></th></tr>";
		}
		str +='<script type="text/javascript">$(".tableoverout").mouseover(function(){this.style.backgroundColor="#30C27B";this.style.color="#ffffff";}); $(".tableoverout").mouseout(function(){this.style.backgroundColor="";this.style.color="#000000";});</script>';
		$("#tableBody").html(str);
	},"json");
});