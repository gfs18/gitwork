////////////////////////////////////显示专辑详情///////////////////////
specialDetail();
function specialDetail(){
	var spid=location.href.split("=")[1];
	$.get("special/detail",{"spid":spid},function(data){
		alert(JSON.stringify(data));
		alert(data.spintroduce);
		var spDetailStr="";
		spDetailStr+='<div class="left col-lg-4 col-md-4 hidden-sm hidden-xs">';
		spDetailStr+='<img id="img" src="'+data.sppicPath+'"><div class="cover"></div></div>';
		spDetailStr+='<div class="right col-lg-8 col-md-8 col-sm-8 col-xs-8">';
		spDetailStr+='<p class="info_1">'+data.spname+'</p><p class="info_2">歌手：'+data.singer.sgname+'</p>';
		spDetailStr+='<p class="info_3">发行时间：'+data.sppubTime.substring(0,10)+'</p><p class="info_4">语种：'+data.language.language+'</p>';
		spDetailStr+='<div class="btns"><button class="mplay"><span class="glyphicon glyphicon-play" ></span> 播放</button>';
		spDetailStr+='<button class="add hidden-sm hidden-xs"><span class="glyphicon glyphicon-heart-empty" ></span> 收藏</button></div></div>';
		$("#S_big").html(spDetailStr);
		$(".info").html(data.spintroduce);
	},"json");
}

////////////////////////////////////显示专辑里面的音乐///////////////////////
specialSong();
function specialSong(){
	var spid=location.href.split("=")[1];
	$.get("special/music",{"spid":spid},function(data){
		var musicStr = "";
		for(var i=0; i<data.length;i++){
			musicStr+='<div class="row"><div  class="list_no col-lg-1 col-md-1 col-sm-1 col-xs-1">'+(i+1)+'</div>'
	        	+'<div  class="list_name col-lg-7 col-md-7 col-sm-11 col-xs-11">'
	            +'<a href=""><i class="glyphicon glyphicon-play-circle" id="tp1_1"  title="播放"></i></a>'
	            +'<a href=""><i class="glyphicon glyphicon-save" id="tp2_1" title="下载"></i></a>'
	            +' <a href="" class="m_name">'+data[i].soname+'</a></div>'
	            +'<div  class="list_play col-lg-2 col-md-2 hidden-sm hidden-xs">'+data[i].singer.sgname+'</div>'
	            +'<div  class="list_add col-lg-2 col-md-2 hidden-sm hidden-xs">'+data[i].soduration+'</div></div>';
		}
		$(".S_box").html(musicStr);
	},"json");
}
