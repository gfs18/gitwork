/////////////////////////////////评论的显示///////////////////////////
commentShow();
function commentShow(){
	$.get("friend/commentShow", function(data){
		var commentStr = "";
		/*alert(data);
		var alerts=JSON.stringify(data);*/
		for (var i = 0; i < data.length; i++) {
			commentStr+='<div class="con"><div class="con_0 hidden-md hidden-sm hidden-xs">'+
			'<img class="user_icon" src="images/user.jpg"></div>'+
			'<div class="con_1"><span>'+data[i].userid+'</span>：</div>'+
			'<div class="con_2">'+data[i].commentTime.split(".")[0]+'</div>';
			if(data[i].content!=null){
				commentStr+='<div class="con_3">'+data[i].content+'</div>';
			}else{
				commentStr+="";
			}
			if(data[i].commentPicPath!=null){
				commentStr+='<div class="con_4"><img src="'+data[i].commentPicPath+'"/></div></div>';
			}else{
				commentStr+="";
			}
		}
		/*if(commentStr==""){
			$(".content").html('<a>暂无动态,亲，来发表我们的动态吧...</a>');
		}*/
		$(".content").html(commentStr);
	}, "json");
}
/////////////////////////////////点击选择图片///////////////////////////
function chgPic(obj){
	$(".show_img").attr("src", window.URL.createObjectURL(obj.files[0]));
}


