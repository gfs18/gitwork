//group点击事件
$(".group li a").on("click",function(){
    $(".group li a").removeClass("click");
    $(this).addClass("click");
   
});
$(".group li a").on("mouseover",function(){
    $(this).addClass("mouseover");
});
$(".group li a").on("mouseout",function(){
     $(this).removeClass("mouseover");
    
});

$(".English li a").on("click",function(){
    $(".English li a").removeClass("click");
    $(this).addClass("click");
   
});
$(".English li a").on("mouseover",function(){
    $(this).addClass("mouseover");
});
$(".English li a").on("mouseout",function(){
     $(this).removeClass("mouseover");
    
});

$(".group li a").attr("style","color:#333");
$(".English li a").attr("style","color:#333");




load();
loadS();

function loadS(){
	$.get("singer/whole",function(data){
		var c="";
		var c1="";
		var c2="";
		var c3="";
		var c4="";
		var c5="";
		for(var i = 0; i < data.length; i++){
			if(i<6){
				c+='<li class="singer_list__item" ><div class="singer_list__item_box" ><a href="javascript:void(0)"><img src="'+data[i].sgpicPath+'"></a><h4><a href="javascript:void(0)">'+data[i].sgname+'</a></h4></div></li>';
			}
			
			if(i>=6 && i<12){
				c1+='<li class="singer_list__item"><div class="singer_list__item_box"><a href=""><img src="'+data[i].sgpicPath+'"></a><h4><a href="">'+data[i].sgname+'</a></h4></div></li>';
			}
			
			if(i>=12 && i<18){
				c2+='<li class="singer_list__item"><div class="singer_list__item_box"><a href=""><img src="'+data[i].sgpicPath+'"></a><h4><a href="">'+data[i].sgname+'</a></h4></div></li>';	
			}
			if(i>=18 && i<24){
				c3+='<li class="singer_list__item"><div class="singer_list__item_box"><a href=""><img src="'+data[i].sgpicPath+'"></a><h4><a href="">'+data[i].sgname+'</a></h4></div></li>';	
			}
			if(i>=24 && i<30){
				c4+='<li class="singer_list__item"><div class="singer_list__item_box"><a href=""><img src="'+data[i].sgpicPath+'"></a><h4><a href="">'+data[i].sgname+'</a></h4></div></li>';	
			}
			if(i>=30 && i<36){
				c5+='<li class="singer_list__item"><div class="singer_list__item_box"><a href=""><img src="'+data[i].sgpicPath+'"></a><h4><a href="">'+data[i].sgname+'</a></h4></div></li>';	
			}
			
			
		
		}
		$("#picture").html(c);
		$("#picture1").html(c1);
		$("#picture2").html(c2);
		$("#picture3").html(c3);
		$("#picture4").html(c4);
		$("#picture5").html(c5);
	},'json');
}
function load(){
	$.get("singer/s",function(data){
		var b="";
		for(var i = 0; i < data.length; i++){ 
			b+='<tr><td><li><a href="javascript:void(0)" onClick="loadg(\''+data[i].lgid+'\')">'+ data[i].language+'</a></li></td></tr>';														
		}
		document.getElementById('loa').innerHTML=b;
		//$("#loa").HTML(b);
	},"json");
}



function loadg(lgid){
	$.get("singer/"+lgid,function(data){
		var c="";
		var c1="";
		var c2="";
		var c3="";
		var c4="";
		var c5="";
		for(var i = 0; i < data.length; i++){
			if(i<6){
				c+='<li class="singer_list__item" ><div class="singer_list__item_box" ><a href="javascript:void(0)"><img src="'+data[i].sgpicPath+'"></a><h4><a href="javascript:void(0)">'+data[i].sgname+'</a></h4></div></li>';
			}
			
			if(i>=6 && i<12){
				c1+='<li class="singer_list__item"><div class="singer_list__item_box"><a href=""><img src="'+data[i].sgpicPath+'"></a><h4><a href="">'+data[i].sgname+'</a></h4></div></li>';
			}
			
			if(i>=12 && i<18){
				c2+='<li class="singer_list__item"><div class="singer_list__item_box"><a href=""><img src="'+data[i].sgpicPath+'"></a><h4><a href="">'+data[i].sgname+'</a></h4></div></li>';	
			}
			if(i>=18 && i<24){
				c3+='<li class="singer_list__item"><div class="singer_list__item_box"><a href=""><img src="'+data[i].sgpicPath+'"></a><h4><a href="">'+data[i].sgname+'</a></h4></div></li>';	
			}
			if(i>=24 && i<30){
				c4+='<li class="singer_list__item"><div class="singer_list__item_box"><a href=""><img src="'+data[i].sgpicPath+'"></a><h4><a href="">'+data[i].sgname+'</a></h4></div></li>';	
			}
			if(i>=30 && i<36){
				c5+='<li class="singer_list__item"><div class="singer_list__item_box"><a href=""><img src="'+data[i].sgpicPath+'"></a><h4><a href="">'+data[i].sgname+'</a></h4></div></li>';	
			}
			
			
		
		}
		$("#picture").html(c);
		$("#picture1").html(c1);
		$("#picture2").html(c2);
		$("#picture3").html(c3);
		$("#picture4").html(c4);
		$("#picture5").html(c5);
	},"json");
	
}


function hot(sgEname){
	$.get("song/"+sgEname,function(data){
		var c="";
		var c1="";
		var c2="";
		var c3="";
		var c4="";
		var c5="";
		for(var i = 0; i < data.length; i++){
			if(i<6){
				c+='<li class="singer_list__item" ><div class="singer_list__item_box" ><a href="javascript:void(0)"><img src="'+data[i].sgpicPath+'"></a><h4><a href="javascript:void(0)">'+data[i].sgname+'</a></h4></div></li>';
				
			}
			if(i>=6 && i<12){
				c1+='<li class="singer_list__item"><div class="singer_list__item_box"><a href=""><img src="'+data[i].sgpicPath+'"></a><h4><a href="">'+data[i].sgname+'</a></h4></div></li>';
			}
			
			if(i>=12 && i<18){
				c2+='<li class="singer_list__item"><div class="singer_list__item_box"><a href=""><img src="'+data[i].sgpicPath+'"></a><h4><a href="">'+data[i].sgname+'</a></h4></div></li>';	
			}
			if(i>=18 && i<24){
				c3+='<li class="singer_list__item"><div class="singer_list__item_box"><a href=""><img src="'+data[i].sgpicPath+'"></a><h4><a href="">'+data[i].sgname+'</a></h4></div></li>';	
			}
			if(i>=24 && i<30){
				c4+='<li class="singer_list__item"><div class="singer_list__item_box"><a href=""><img src="'+data[i].sgpicPath+'"></a><h4><a href="">'+data[i].sgname+'</a></h4></div></li>';	
			}
			if(i>=30 && i<36){
				c5+='<li class="singer_list__item"><div class="singer_list__item_box"><a href=""><img src="'+data[i].sgpicPath+'"></a><h4><a href="">'+data[i].sgname+'</a></h4></div></li>';	
			}
		}
		$("#picture").html(c);
		$("#picture1").html(c1);
		$("#picture2").html(c2);
		$("#picture3").html(c3);
		$("#picture4").html(c4);
		$("#picture5").html(c5);
	},"json");
}




loaName(20,1);     //每页数据  当前页
function loaName(pageS,currP){
	$.get("singer/pagination",{"pageS":pageS,"currP":currP},function(data){
	
		var a="";
		for(var i = 0; i < data.rows.length; i++){  
		a+='<tr><td>'
		a+='<ul class="singer_list_txt">'
		a+='<li class="singer_list_txt__item"><a href="javascript:void(0)">'+ data.rows[i].sgname+'</a></li>'
		a+='</ul>'
		a+='</td></tr>'
		}
		document.getElementById('sName').innerHTML=a;
		paginationSong(data.totalPage);
	},"json");
}
						//总页数
function paginationSong(totalPage){
	var pStr = "";
	if(totalPage>=20){
		pStr +='<li class="pagenation"><a href="javascript:void(0)" onclick="paginatorPrevious('+totalP+')">&laquo;</a></li>';
	
		for (var j = 1; j <= 20; j++) {
			pStr +='<li class="pagenation"><a href="javascript:void(0)" onclick="loaName(20,'+(j+(count*20))+')">'+(j+count*20)+'</a></li>';
		}
		pStr +='<li class="pagenation"><a href="avascript:void(0)" onclick="paginatorNext('+totalP+')">&raquo;</a></li>';
	}else{
		pStr +='<li class="pagenation"><a href="javascript:void(0)">&laquo;</a></li>';
		for (var i = 1; i <= totalPage; i++) {
			pStr +='<li class="pagenation"><a href="javascript:void(0)" onclick="loaName(20,'+i+')">'+i+'</a></li>';
		}
		pStr +='<li class="pagenation"><a href="avascript:void(0)">&raquo;</a></li>';
	}
	$("#pagination").html(pStr);
}



function paginatorPrevious(totalP){
	count= count > 0?(count-1):0;
	loaName(20,1 + 20*(count));
}

function paginatorNext(totalP){
	count = count < (totalP / 20)?(count+1):totalP ;
	loaName(20,1 + 20*(count) );
}








 var before = document.querySelector("#carouse_left");   
        var after = document.querySelector("#carouse_right");   
        var book = document.querySelector(".book");   
        var page = document.getElementsByClassName("page_right");   
        rotate();
      
        function rotate(){   
            var middle = 0;        
             for(var z=0;z<page.length;z++){   
                page[z].style.zIndex = page.length-z;  
                 
            }   
            after.onclick = function(){   
                if(middle != page.length){   
                    page[middle].style.animation = "page 1.5s linear 1 forwards";   
                    middle++;   
                }else{   
                    middle = page.length;   
                }   
            };   
            before.onclick = function(){   
                if(middle != 0){   
                    page[middle-1].style.animation = "page1 1.5s linear 1 forwards";   
                    middle--;   
            }else{   
                middle = 0;   
                }   
            }   
        }   