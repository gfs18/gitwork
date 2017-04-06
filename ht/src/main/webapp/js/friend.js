/////////////////////////////////站内专辑图片显示///////////////////////////
friend();
function friend(){
	$.get("friend/user", function(data){
		alert("朋友进来了");
		/*var specialStr = "";
		for (var i = 0; i < data.length; i++) {
			if(i==0){
				specialStr+='<div class=""><a href="page/special_music.jsp?spid='+data[i].spid+'">';
				specialStr+='<img id="img2" src="'+data[i].sppicPath+'" /></a>';
				specialStr+='<div class="bf1"><a href=""><i	class="glyphicon glyphicon-headphones pull-left"><span>'+data[i].spclick+'</span></i></a>';
				specialStr+='<a href=""><i class="glyphicon glyphicon-play-circle"></i></a></div></div>';
			}else{
				specialStr+='<div class="zj1"><a href="page/special_music.jsp?spid='+data[i].spid+'">';
				specialStr+='<img class="img3" src="'+data[i].sppicPath+'" /></a>';
				specialStr+='<div class="bf2"><a href=""><i	class="glyphicon glyphicon-headphones pull-left headphones1"><span>'+data[i].spclick+'</span></i></a>';
				specialStr+='<a href=""><i class="glyphicon glyphicon-play-circle glyphicon1"></i></a></div></div>';
			}
		}
		$(".content1_1_1").html(specialStr);*/
	}, "json");
}