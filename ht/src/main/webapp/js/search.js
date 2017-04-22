//搜索歌曲
searchSong();
function searchSong(){
	var soname=location.href.split("=")[1];
	if(soname!=null && soname!=""){
		$.get("song/refer/"+soname,function(data){
			var str = "";
			str+='<div class="music_list"><div class="row" style="margin-left: 0px; margin-top: 2px">'+
			'<div class="list_no_1 col-lg-1 col-md-1 col-sm-1 col-xs-1"></div>'+
			'<div class="list_name_! col-lg-7 col-md-7 col-sm-11 col-xs-11" '+
			'style="border-left: 1px solid #E1E1E1;"><span class="m_name_1">歌曲名</span></div>'+
			'<div class="list_play_1 col-lg-2 col-md-2 hidden-sm hidden-xs"'+
			'style="border-left: 1px solid #E1E1E1;">歌手</div>'+
			'<div class=";list_add_1 col-lg-2 col-md-2 hidden-sm hidden-xs"'+
			'style="border-left: 1px solid #E1E1E1;">时长</div></div>'+
			'<div class="S_box"></div></div></div>';
			$(".special").html(str);
			if(data.length==0){
				str+="<h3>暂无相关单曲</h3>"
					$(".special").html(str);
			}else{
				var songStr="";
				for(var i=0; i<data.length;i++){
					songStr+='<div class="row"><div  class="list_no col-lg-1 col-md-1 col-sm-1 col-xs-1">'+(i+1)+'</div>'
					+'<div  class="list_name col-lg-7 col-md-7 col-sm-11 col-xs-11">'
					+'<p><label style="width:300px;">'+data[i].soname+'</label>'
					+'<a href="javascript:void(0)"><i class="glyphicon glyphicon-play-circle" id="tp1_1"  title="播放"></i></a>'
					+'<a href="javascript:void(0)"><i class="glyphicon glyphicon-save" id="tp2_1" title="下载"></i></a></p>'
					+'</div>';
					if(data[i].singer==null){
						songStr+='<div  class="list_play col-lg-2 col-md-2 hidden-sm hidden-xs">无名氏</div>'
					}else{
						songStr+='<div  class="list_play col-lg-2 col-md-2 hidden-sm hidden-xs">'+data[i].singer.sgname+'</div>'
					}
					songStr+='<div  class="list_add col-lg-2 col-md-2 hidden-sm hidden-xs">'+data[i].soduration+'</div></div>';
				}
			}
			$(".S_box").html(songStr);
		},"json");
	}else{
		alert("请输入您要查询的单曲/歌手/专辑信息！！！");
	}
}


//搜索歌手
function searchSinger(){
	var sgname=location.href.split("=")[1];
	if(sgname!=null && sgname!=""){
		$.get("singer/Refer/"+sgname,function(data){
			var singerStr="";
			if(data.length==0){
				singerStr+="<h3>暂无相关歌手</h3>";
				$(".special").html(singerStr);
			}else{
				for(var i=0;i<data.length;i++){
					singerStr+='<div class="content3_1_1"><div class="col-lg-3 col-md-3 col-sm-4 col-xs-6">'
						+'<div class="thumbnail pull-left"><a href="page/singer_more.jsp?sgid='+data[i].sgid+'"> <img src="'+data[i].sgpicPath+'" />'
						+'<div class="caption"><h3>'+data[i].sgname+'</h3></div></a></div></div></div>';
				}
				$(".special").html(singerStr);
			}
		},"json");
	}else{
		alert("请输入您要查询的单曲/歌手/专辑信息！！！");
	}

}

//搜索专辑
function searchSpecial(){
	var spname=location.href.split("=")[1];
	if(spname!=null && spname!=""){
		$.get("special/search/"+spname,function(data){
			var specialStr="";
			if(data.length==0){
				specialStr+="<h3>暂无相关专辑</h3>";
				$(".special").html(specialStr);
			}else{
				for(var i=0;i<data.length;i++){
					specialStr+='<li class="s_li"><div class="list_img"><a href="page/special_music.jsp?spid='+data[i].spid+'" onclick="clickRate('+data[i].spid+')">'
					+'<img src="'+data[i].sppicPath+'" class="myimg" href="page/special_music.jsp?spid='+data[i].spid+'"></a></div>'
					+'<span class="s_p">'+data[i].spname+'</span><span class="s_p">点击量：'+data[i].spclick+'</span>'
					+'<span class="s_p">'+data[i].sppubTime.substring(0,10)+'</span></li>';
				}
				$(".special").html(specialStr);
			}
		},"json");
	}else{
		alert("请输入您要查询的单曲/歌手/专辑信息！！！");
	}
}

$(".lable li").click(function(){
    $(".special ul").css("display","none");
    $(".special ul").eq($(this).index()).css("display","block");
    $(".class").html($(".lable li a").eq($(this).index()).html());

});


$(".lable li a").on("click",function(){
    $(".lable li a").removeClass("click");
    $(this).addClass("click");

});
$(".lable li a").on("mouseover",function(){
    $(".lable li a").removeClass("mouseover");
    $(this).addClass("mouseover");

});
$(".lable li a").on("mouseout",function(){
    $(".lable li a").removeClass("mouseover");

});
$(".lable li a").attr("style","color:#333");