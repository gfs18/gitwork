//最新专辑分页显示
newestSpecial(8,1,0);
function newestSpecial(rows,page,count){
	//alert(rows+"***********"+page);/*"currPage":1,"pageSize":8,"totalPage":1,"total":7,"rows"*/
	$.get("special/newest",{"rows":rows,"page":page},function(data){
		//alert(JSON.stringify(data));
		var newestSpeStr="";
		for(var i=0;i<data.rows.length;i++){
			newestSpeStr+='<li class="s_li"><div class="list_img"><div class="play">'
				+'<img src="images/cover_play.png"></div><img src="'+data.rows[i].sppicPath+'" class="myimg"></div>'
				+'<span class="s_p">'+data.rows[i].spname+'</span><span class="s_p">点击量：'+data.rows[i].spclick+'</span>'
				+'<span class="s_p">'+data.rows[i].sppubTime.substring(0,10)+'</span></li>';
		}
		$(".new_ul").html(newestSpeStr);
		
		doPagination(data,count);
	});
}

//热门专辑分页显示
function hottestSpecial(rows,page,count){
	$(".new_ul").html("");
	alert(rows+"***********"+page);/*"currPage":1,"pageSize":8,"totalPage":1,"total":7,"rows"*/
	$.get("special/hottest",{"rows":rows,"page":page},function(data){
		alert(JSON.stringify(data));
		var hottestSpeStr="";
		for(var i=0;i<data.rows.length;i++){
			hottestSpeStr+='<li class="s_li"><div class="list_img"><div class="play">'
				+'<img src="images/cover_play.png"></div><img src="'+data.rows[i].sppicPath+'" class="myimg"></div>'
				+'<span class="s_p">'+data.rows[i].spname+'</span><span class="s_p">点击量：'+data.rows[i].spclick+'</span>'
				+'<span class="s_p">'+data.rows[i].sppubTime.substring(0,10)+'</span></li>';
			//alert(hottestSpeStr);
		}
		$(".new_ul").html(hottestSpeStr);
		
		//doPagination(data,count);
	});
}

//分页页码
function doPagination(data,count){
	var totalPage=data.totalPage;
	//alert(totalPage);
	$("#page").append('<li class="pagenation"><a href="javascript:void(0)" onclick="doPagination('+data+','+( count>0?(count--):0 )+')">&laquo;</a>');
	for(var j=1;j<=5;j++){
		$("#page").append('<li class="pagenation"><a href="javascript:void(0)" onclick="special(8,'+(j+(count*5))+','+count+')">'+(j+count*5)+'</a>');
	}
	$("#page").append('<li class="pagenation"><a href="javascript:void(0)" onclick="doPagination('+data+','+( count<(data.totalPage/5)?(count++):data.totalPage )+')">&raquo;</a>');
}

//专辑类型
specialStyle();
function specialStyle(){
	$.get("special/style",function(data){
		///alert(JSON.stringify(data));
		for(var i=0;i<data.length;i++){
			$(".lable").append('<li class="col-lg-2 col-md-2 col-sm-3 hidden-xs" id="china_ul"><a href="javascript:void(0)" onclick="getSpecialByStyle(8,1,0,'+data[i].language+')">'+data[i].language+'</a></li>');
		}
	},"json");
}


//根据语种类型分页显示专辑
function getSpecialByStyle(rows,page,count,style){
	alert(rows+"***********"+page+"****"+style);/*"currPage":1,"pageSize":8,"totalPage":1,"total":7,"rows"*/
	$.get("special/"+style,{"rows":rows,"page":page,"style":style},function(data){
		alert(JSON.stringify(data));
		var speStr="";
		for(var i=0;i<data.rows.length;i++){
			speStr+='<li class="s_li"><div class="list_img"><div class="play">'
				+'<img src="images/cover_play.png"></div><img src="'+data.rows[i].sppicPath+'" class="myimg"></div>'
				+'<span class="s_p">'+data.rows[i].spname+'</span><span class="s_p">点击量：'+data.rows[i].spclick+'</span>'
				+'<span class="s_p">'+data.rows[i].sppubTime.substring(0,10)+'</span></li>';
			//alert(hottestSpeStr);
		}
		$(".new_ul").html(hottestSpeStr);
		
		//doPagination(data,count);
	});
}
