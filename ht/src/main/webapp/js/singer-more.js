var lgid=location.href.split("=")[1];
	
	


loadSinger(lgid);
loadSim(lgid);
function loadSim(lgid){
	$.get("user/Sin/"+lgid,function(data){
		alert(JSON.stringify(data)); 
		for(var i = 0; i < data.length; i++){																									//onclick="Download(\''+data[i].sopath+'\')" onclick="Download(\''+data[i].sopath+'\')"
			$("#ROW").append('<div class="opus_no col-lg-1 col-md-1 col-sm-1 col-xs-1">'+(i+1)+'</div>'+'<div  class="opus_name col-lg-7 col-md-7 col-sm-11 col-xs-11">'+'<i class="glyphicon glyphicon-play-circle" id="tp1_2"  title="播放"></i>'+'<a href='+data[i].sopath+' download><i class="glyphicon glyphicon-save " id="tp2_2" title="下载"  ></i></a>'+'<a href="" class="m_name">'+data[i].soname+'</a></div>'+'<div class="opus_add col-lg-2 col-md-2 hidden-sm hidden-xs">'+data[i].soduration+'</div>');
		}
	},"json")
}


function loadSinger(lgid){
	$.get("user/"+lgid,function(data){
		for(var i = 0; i < data.length; i++){
			alert(JSON.stringify(data));
			var a=$("#ROW").html();
			$("#singer").append('<img src="'+data[i].sgpicPath+'" id="currentUserPhoto"/>');
			$("#singer_right").append('<p id="singer_name">'+data[i].sgname+'</p>'+' <p id="singer_info">歌手介绍</p>'+' <p id="singer_info">'+data[i].sgintroduce+'</p>');
			if(a==null || a.length==0){
				//alert("没歌曲");
			}else{
				$("#ROW1").append('<div  class="opus_play col-lg-2 col-md-2 hidden-sm hidden-xs">'+data[i].sgname+'</div>');				
			}
		}
	},"json")
}



//音乐下载
function Download(sopath){
	alert("sopath=="+sopath);
	$.get("singer/download/do",{sopath:sopath},function(data){
		alert(data);
			alert("下载成功，默认保存在D盘下a文件中");
	
	},"json")
}
