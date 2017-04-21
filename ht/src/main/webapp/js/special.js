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
			newestSpeStr+='<li class="s_li"><div class="list_img"><a href="page/special_music.jsp?spid='+data.rows[i].spid+'" onclick="clickRate('+data.rows[i].spid+')">'
				+'<img src="'+data.rows[i].sppicPath+'" class="myimg"></a></div>'
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
			
			hottestSpeStr+='<li class="s_li"><div class="list_img"><a href="page/special_music.jsp?spid='+data.rows[i].spid+'" onclick="clickRate('+data.rows[i].spid+')">'
				+'<img src="'+data.rows[i].sppicPath+'" class="myimg" href="page/special_music.jsp?spid='+data.rows[i].spid+'"></a></div>'
				+'<span class="s_p">'+data.rows[i].spname+'</span><span class="s_p">点击量：'+data.rows[i].spclick+'</span>'
				+'<span class="s_p">'+data.rows[i].sppubTime.substring(0,10)+'</span></li>';
		}
		$(".new_ul").html(hottestSpeStr);
		
		hottestPagination(data.totalPage);
	});
}



//专辑类型
specialStyle();
function specialStyle(){
	$.get("special/style",function(data){
		///alert(JSON.stringify(data));
		for(var i=0;i<data.length;i++){
			if(data[i].language!=null){
				$(".lable").append('<li class="col-lg-2 col-md-2 col-sm-3 hidden-xs" id="china_ul"><a href="javascript:void(0)" onclick="getSpecialByStyle(8,1,'+data[i].lgid+')">'+data[i].language+'</a></li>');
			}
		}
		
		$(".lable").append('<script type="text/javascript">'+
				'$(".lable li").click(function(){'+
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
function Pagination(totalP,lgid){
	var pStr = "";
	if(totalP>=5){
		pStr +='<li><a href="javascript:void(0)" onclick="paginatorPrevious('+totalP+','+lgid+')">&laquo;</a></li>';
		for (var j = 1; j <= 5; j++) {
			pStr +='<li><a href="javascript:void(0)" onclick="getSpecialByStyle(8,'+(j+(count*5))+','+style+')">'+(j+count*5)+'</a></li>';
		}
		pStr +='<li><a href="javascript:void(0)" onclick="paginatorNext('+totalP+','+lgid+')" >&raquo;</a></li>';
	}else{
		pStr +='<li><a href="javascript:void(0)" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>';
		for (var i = 1; i <= totalP; i++) {
			pStr +='<li><a href="javascript:void(0)" onclick="getSpecialByStyle(8,'+i+','+lgid+')">'+i+'</a></li>';
		}
		pStr +='<li><a href="javascript:void(0)" aria-label="Next"> <span aria-hidden="true">&raquo;</span></a></li>';
	}
	$(".pagination").html(pStr);
}

function paginatorPrevious(totalP,lgid){
	count= count > 0?(count-1):0;
	getSpecialByStyle(5,1 + 5*(count),lgid);
}

function paginatorNext(totalP,lgid){
	count = count < (totalP / 5)?(count+1):totalP ;
	getSpecialByStyle(5,1 + 5*(count) ,lgid);
}
//根据语种类型分页显示专辑
function getSpecialByStyle(rows,page,lgid){
	$.get("special/language",{"rows":rows,"page":page,"lgid":lgid},function(data){
		var speStr="";
		for(var i=0;i<data.rows.length;i++){
			speStr+='<li class="s_li"><div class="list_img"><a href="page/special_music.jsp?spid='+data.rows[i].spid+'" onclick="clickRate('+data.rows[i].spid+')">'
			+'<img src="'+data.rows[i].sppicPath+'" class="myimg" href="page/special_music.jsp?spid='+data.rows[i].spid+'"></a></div>'
				+'<span class="s_p">'+data.rows[i].spname+'</span><span class="s_p">点击量：'+data.rows[i].spclick+'</span>'
				+'<span class="s_p">'+data.rows[i].sppubTime.substring(0,10)+'</span></li>';
		}
		$(".new_ul").html(speStr);
		Pagination(data.totalPage,lgid);
	});
}

//点击量
function clickRate(spid){
	$.post("special/click",{"spid":spid},function(data){
	},"json");
}