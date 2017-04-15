$("#topnav li").mouseover(function(){
	$(".mydiv").css("left",($(this).width())*$(this).index());
});

$("#tableBody tr").mouseover(function(){
	this.style.backgroundColor="#30C27B";
	this.style.color="#ffffff";
});

$("#tableBody tr").mouseout(function(){
	this.style.backgroundColor="";
	this.style.color="#000000";
});

function showDiv(){
	if ($(window).width()<=1349) {
		$(".mydiv").css("display", "block");
	}else{
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


function InterNameReger(){
	var name = $("#referName").val();
	$.ajax({
		url:"http://tingapi.ting.baidu.com/v1/restserver/ting?from=qianqian&version=2.1.0&method=baidu.ting.search.merge&format=json&query="+name,
		type:"get",
		dataType:"jsonp",
		success: function(msg){
			var str ="";
			for (var i = 0; i < msg.result.song_info.song_list.length; i++) {
				str += "<tr class='tableoverout'><th>"+msg.result.song_info.song_list[i].title+"</th><th>"+msg.result.song_info.song_list[i].author+"</th><th>"+msg.result.song_info.song_list[i].album_title+"</th><th>"+msg.result.song_info.song_list[i].lrclink+"</th>" +
						"<th><a href='javascript:void(0)' onclick='AddSongInfo(this,"+msg.result.song_info.song_list[i].ting_uid+","+msg.result.song_info.song_list[i].album_id+")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></th></tr>"
			}
			str +='<script type="text/javascript">$(".tableoverout").mouseover(function(){this.style.backgroundColor="#30C27B";this.style.color="#ffffff";}); $(".tableoverout").mouseout(function(){this.style.backgroundColor="";this.style.color="#000000";});</script>';
			$("#tableBody").html(str);
		}
	});
}



/**
 * 添加单曲信息
 * @param song
 * @param tingid
 * @param albumid
 */
function AddSongInfo(song,tingid,albumid){
	var songth =  $(song).parent().parent().children();
	//获取歌手信息
	$.get("http://tingapi.ting.baidu.com/v1/restserver/ting?from=qianqian&version=2.1.0&method=baidu.ting.artist.getinfo&format=json&tinguid="+tingid,function(InterSinger){
		$.post("singer/add",InterSinger,function(sgreq){
			//获取专辑信息
			$.get("http://tingapi.ting.baidu.com/v1/restserver/ting?from=qianqian&version=2.1.0&method=baidu.ting.album.getAlbumInfo&format=json&album_id="+albumid,function(InterAlbum){
				alert(JSON.stringify(InterAlbum.albumInfo));
				$.post("special/add?sgid="+sgreq.sgid,InterAlbum.albumInfo,function(abreq){
					alert(abreq.spid);
					//添加单曲信息
					$.post("song/add",{"soname":songth[0].innerText,"sgname":songth[1].innerText,"spname":songth[2].innerText,"solyricPath":songth[3].innerText},function(data){
						alert(data);
					},"json");
				},"json");
			},"jsonp");
		},"json");
	},"jsonp");
}

