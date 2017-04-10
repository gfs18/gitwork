var count=0;


//分页操作
function doPagination(totalP){
	var pStr = "";
	if(totalP>=5){
		pStr +='<li><a href="javascript:void(0)" onclick="paginatorPrevious('+totalP+')">&laquo;</a></li>';
		for (var j = 1; j <= 5; j++) {
			pStr +='<li><a href="javascript:void(0)" onclick="newestSpecial(8,'+(j+(count*5))+')">'+(j+count*5)+'</a></li>';
		}
		pStr +='<li><a href="javascript:void(0)" onclick="paginatorNext('+totalP+')" >&raquo;</a></li>';
	}else{
		pStr +='<li><a href="javascript:void(0)" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>';
		for (var i = 1; i <= totalP; i++) {
			pStr +='<li><a href="javascript:void(0)" onclick="newestSpecial(8,'+i+')">'+i+'</a></li>';
		}
		pStr +='<li><a href="javascript:void(0)" aria-label="Next"> <span aria-hidden="true">&raquo;</span></a></li>';
	}
	$(".pagination").html(pStr);
}

function paginatorPrevious(totalP){
	count= count > 0?(count-1):0;
	newestSpecial(5,1 + 5*(count));
}

function paginatorNext(totalP){
	count = count < (totalP / 5)?(count+1):totalP ;
	newestSpecial(5,1 + 5*(count) );
}

//最新专辑分页显示
newestSpecial(8,1);
function newestSpecial(rows,page){
	$.get("special/newest",{"rows":rows,"page":page},function(data){
		var newestSpeStr="";
		for(var i=0;i<data.rows.length;i++){
			newestSpeStr+='<li class="s_li"><div class="list_img"><div class="play">'
				+'<img src="images/cover_play.png"></div><img src="'+data.rows[i].sppicPath+'" class="myimg"></div>'
				+'<span class="s_p">'+data.rows[i].spname+'</span><span class="s_p">点击量：'+data.rows[i].spclick+'</span>'
				+'<span class="s_p">'+data.rows[i].sppubTime.substring(0,10)+'</span></li>';
		}
		$(".new_ul").html(newestSpeStr);
		doPagination(data.totalPage);
	});
}

//分页操作
function hottestPagination(totalP){
	var pStr = "";
	if(totalP>=5){
		pStr +='<li><a href="javascript:void(0)" onclick="paginatorPrevious('+totalP+')">&laquo;</a></li>';
		for (var j = 1; j <= 5; j++) {
			pStr +='<li><a href="javascript:void(0)" onclick="hottestSpecial(8,'+(j+(count*5))+')">'+(j+count*5)+'</a></li>';
		}
		pStr +='<li><a href="javascript:void(0)" onclick="paginatorNext('+totalP+')" >&raquo;</a></li>';
	}else{
		pStr +='<li><a href="javascript:void(0)" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>';
		for (var i = 1; i <= totalP; i++) {
			pStr +='<li><a href="javascript:void(0)" onclick="hottestSpecial(8,'+i+')">'+i+'</a></li>';
		}
		pStr +='<li><a href="javascript:void(0)" aria-label="Next"> <span aria-hidden="true">&raquo;</span></a></li>';
	}
	$(".pagination").html(pStr);
}

function paginatorPrevious(totalP){
	count= count > 0?(count-1):0;
	hottestSpecial(5,1 + 5*(count));
}

function paginatorNext(totalP){
	count = count < (totalP / 5)?(count+1):totalP ;
	hottestSpecial(5,1 + 5*(count) );
}
//热门专辑分页显示
function hottestSpecial(rows,page){
	$.get("special/hottest",{"rows":rows,"page":page},function(data){
		var hottestSpeStr="";
		for(var i=0;i<data.rows.length;i++){
			
			hottestSpeStr+='<li class="s_li"><div class="list_img"><div class="play">'
				+'<img src="images/cover_play.png"></div><img src="'+data.rows[i].sppicPath+'" class="myimg"></div>'
				+'<span class="s_p">'+data.rows[i].spname+'</span><span class="s_p">点击量：'+data.rows[i].spclick+'</span>'
				+'<span class="s_p">'+data.rows[i].sppubTime.substring(0,10)+'</span></li>';
		}
		$(".hot_ul").html(hottestSpeStr);
		
		hottestPagination(data.totalPage);
	});
}



//专辑类型
specialStyle();
function specialStyle(){
	$.get("special/style",function(data){
		///alert(JSON.stringify(data));
		for(var i=0;i<data.length;i++){
			if(i==0){
				$(".lable").append('<li class="col-lg-2 col-md-2 col-sm-3 hidden-xs" id="china_ul"><a href="javascript:void(0)" onclick="getSpecialByStyle(8,1,'+data[i].lgid+')">'+data[i].language+'</a></li>');
			}else if(i==1){
				$(".lable").append('<li class="col-lg-2 col-md-2 hidden-sm hidden-xs" id="hip_ul"><a href="javascript:void(0)" onclick="getSpecialByStyle(8,1,'+data[i].lgid+')">'+data[i].language+'</a></li>');
			}else{
				$(".lable").append('<li class="col-lg-2 col-md-2 hidden-sm hidden-xs" id="eng_ul"><a href="javascript:void(0)" onclick="getSpecialByStyle(8,1,'+data[i].lgid+')">'+data[i].language+'</a></li>');
			}
		}
		$(".lable").append('<script type="text/javascript">'+
				'$(".lable li").click(function(){'+
				'$(".special ul").css("display","none");'+
				'$(".special ul").eq($(this).index()).css("display","block");'+
				'$(".class").html($(".lable li a").eq($(this).index()).html());});'+
				'$(".lable li a").on("click",function(){'+
				'$(".lable li a").removeClass("click");'+
				'$(this).addClass("click");});'+
				'$(".lable li a").on("mouseover",function(){'+
				'$(".lable li a").removeClass("mouseover");'+
				'$(this).addClass("mouseover");});'+
				'$(".lable li a").on("mouseout",function(){'+
				'$(".lable li a").removeClass("mouseover");});'+
				'$(".lable li a").attr("style","color:#333");  </script>');
	},"json");
}


//分页操作
function Pagination(totalP,style){
	var pStr = "";
	if(totalP>=5){
		pStr +='<li><a href="javascript:void(0)" onclick="paginatorPrevious('+totalP+','+style+')">&laquo;</a></li>';
		for (var j = 1; j <= 5; j++) {
			pStr +='<li><a href="javascript:void(0)" onclick="getSpecialByStyle(8,'+(j+(count*5))+','+style+')">'+(j+count*5)+'</a></li>';
		}
		pStr +='<li><a href="javascript:void(0)" onclick="paginatorNext('+totalP+','+style+')" >&raquo;</a></li>';
	}else{
		pStr +='<li><a href="javascript:void(0)" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>';
		for (var i = 1; i <= totalP; i++) {
			pStr +='<li><a href="javascript:void(0)" onclick="getSpecialByStyle(8,'+i+','+style+')">'+i+'</a></li>';
		}
		pStr +='<li><a href="javascript:void(0)" aria-label="Next"> <span aria-hidden="true">&raquo;</span></a></li>';
	}
	$(".pagination").html(pStr);
}

function paginatorPrevious(totalP,style){
	count= count > 0?(count-1):0;
	getSpecialByStyle(5,1 + 5*(count),style);
}

function paginatorNext(totalP,style){
	count = count < (totalP / 5)?(count+1):totalP ;
	getSpecialByStyle(5,1 + 5*(count) ,style);
}
//根据语种类型分页显示专辑
function getSpecialByStyle(rows,page,style){
	//alert(rows+"***********"+page+"****"+style);
	$.get("special/language",{"rows":rows,"page":page,"style":style},function(data){
		alert(JSON.stringify(data));
		var speStr="";
		for(var i=0;i<data.rows.length;i++){
			speStr+='<li class="s_li"><div class="list_img"><div class="play">'
				+'<img src="images/cover_play.png"></div><img src="'+data.rows[i].sppicPath+'" class="myimg"></div>'
				+'<span class="s_p">'+data.rows[i].spname+'</span><span class="s_p">点击量：'+data.rows[i].spclick+'</span>'
				+'<span class="s_p">'+data.rows[i].sppubTime.substring(0,10)+'</span></li>';
		}
		if(style==10001){
			$(".china_ul").html(speStr);
		}else if(style==10002){
			$(".hip_ul").html(speStr);
		}else{
			$(".eng_ul").html(speStr);
		}
		Pagination(data.totalPage,style);
	});
}
