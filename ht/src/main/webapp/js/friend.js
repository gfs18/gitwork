/////////////////////////////////点击选择图片///////////////////////////
function chgPic(obj){
	$(".show_img").attr("src", window.URL.createObjectURL(obj.files[0]));
}

/////////////////////////////////评论的显示///////////////////////////
var count= 0 ;
commentShow(3,1);
function commentShow(pageS,currP){
	$.get("friend/PaginationCommentShow",{"pageS":pageS,"currP":currP},function(data){
		var commentStr = "";
		for (var i = 0; i < data.rows.length; i++) {
			commentStr+='<div class="con"><div class="con_0 hidden-md hidden-sm hidden-xs">'+
			'<img class="user_icon" src="images/user.jpg"></div>'+
			'<div class="con_1"><span>'+data.rows[i].userid+'</span>：</div>'+
			'<div class="con_2">'+data.rows[i].commentTime.split(".")[0]+'</div>';
			if(data.rows[i].content!=null){
				commentStr+='<div class="con_3">'+data.rows[i].content+'</div>';
			}else{
				commentStr+="";
			}
			if(data.rows[i].commentPicPath!=null){
				commentStr+='<div class="con_4"><img src="'+data.rows[i].commentPicPath+'"/></div></div>';
			}else{
				commentStr+="";
			}
		}
		/*if(commentStr==""){
			$(".content").html('<a>暂无动态,亲，来发表我们的动态吧...</a>');
		}*/
		$(".content").html(commentStr);
		paginationComments(data.totalPage);
	}, "json");
}

/////////////////////////////////分页///////////////////////////
function paginationComments(totalP){
	var pStr = "";
	if(totalP>=5){
		pStr +='<li><a href="javascript:void(0)" onclick="paginatorPrevious('+totalP+')">&laquo;</a></li>';
		for (var j = 1; j <= 1; j++) {
			pStr +='<li><a href="javascript:void(0)" onclick="commentShow(3,'+(j+(count*1))+')">'+(j+count*1)+'</a></li>';
		}
		pStr +='<li><a href="javascript:void(0)" onclick="paginatorNext('+totalP+')" >&raquo;</a></li>';
	}else{
		pStr +='<li><a href="javascript:void(0)" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>';
		for (var i = 1; i <= totalP; i++) {
			pStr +='<li><a href="javascript:void(0)" onclick="commentShow(3,'+i+')">'+i+'</a></li>';
		}
		pStr +='<li><a href="javascript:void(0)" aria-label="Next"> <span aria-hidden="true">&raquo;</span></a></li>';
	}
	$(".pagination").html(pStr);
}

function paginatorPrevious(totalP){
	count= count > 0?(count-1):0;
	commentShow(3,1 + 1*(count));
}

function paginatorNext(totalP){
	count = count < (totalP / 1)?(count+1):totalP ;
	commentShow(3,1 + 1*(count) );
}

