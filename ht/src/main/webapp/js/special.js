$(function () {
	alert(11111);
	var carId = 1;
	$.ajax({
		url: "special",
		datatype: 'json',
		type: "Get",
		data: "id=" + carId,
		success: function (data) {
			alert(data);
			if (data != null) {
				$.each(eval("(" + data + ")").list, function (index, item) { //遍历返回的json
					$(".new_ul").append('<li class="s_li"><div class="list_img"><div class="play">'
							+'<img src="images/cover_play.png"></div><img src="'+data.rows[i].sppicPath+'" class="myimg"></div>'
							+'<span class="s_p">'+data.rows[i].spname+'</span><span class="s_p">点击量：'+data.rows[i].spclick+'</span>'
							+'<span class="s_p">2016-11-01</span></li>');
				});
				var pageCount = eval("(" + data + ")").pageCount; //取到pageCount的值(把返回数据转成object类型)
				var currentPage = eval("(" + data + ")").CurrentPage; //得到urrentPage
				var options = {
						bootstrapMajorVersion: 2, //版本
						currentPage: currentPage, //当前页数
						totalPages: pageCount, //总页数
						itemTexts: function (type, page, current) {
							switch (type) {
							case "first":
								return "首页";
							case "prev":
								return "上一页";
							case "next":
								return "下一页";
							case "last":
								return "末页";
							case "page":
								return page;
							}
						},
						//点击事件，用于通过Ajax来刷新整个list列表
						onPageClicked: function (event, originalEvent, type, page) {
							alert(page);
							$.ajax({
								url: "special?id=" + page,
								type: "Get",
								data: "page=" + page,
								success: function (data1) {
									if (data1 != null) {
										$.each(eval("(" + data + ")").list, function (index, item) { //遍历返回的json
											$(".new_ul").append('<li class="s_li"><div class="list_img"><div class="play">'
													+'<img src="images/cover_play.png"></div><img src="'+data.rows[i].sppicPath+'" class="myimg"></div>'
													+'<span class="s_p">'+data.rows[i].spname+'</span><span class="s_p">点击量：'+data.rows[i].spclick+'</span>'
													+'<span class="s_p">2016-11-01</span></li>');
										});
									}
								}
							});
						}
				};
				$('#content').bootstrapPaginator(options);
			}
		}
	});
})



/*special();
function special(){
	var options = {
			bootstrapMajorVersion: 3,
			alignment:'center',      
			currentPage:1,     
			totalPages: 2 ,  
			pageUrl: function(type, page, current){     
				return "/page/special.jsp?page="+page; 
			}, 
			onPageClicked: function (event, originalEvent, type, page) {   
				originalEvent.preventDefault();   
				originalEvent.stopPropagation();   
				$.ajax({        
					url:originalEvent.target.href,     
					type:"GET",
					dataType:"json", 
					success: function(data){ 
						window.totalPages = Math.ceil(data /pageSize) ;
						$("#content li").remove();        
						$(data).each(function(){          
							$("#content").append("<li>"+this.name+"</li>");  
						});     
					},        
					error: function(error){    
						alert("error");      
					}  
				}); 
			}    
	};     
	$(document).ready(function(){    
		$("#pagination").bootstrapPaginator(options);  
		$("#pagination li:first a").trigger("click");  
	});

	alert(11111);"currPage":1,"pageSize":8,"totalPage":1,"total":7,"rows"
	$.get("special",function(data){
		alert(data);
		var allSpeStr="";
		for(var i=0;i<data.rows.length;i++){
			allSpeStr+='<li class="s_li"><div class="list_img"><div class="play">'
				+'<img src="images/cover_play.png"></div><img src="'+data.rows[i].sppicPath+'" class="myimg"></div>'
				+'<span class="s_p">'+data.rows[i].spname+'</span><span class="s_p">点击量：'+data.rows[i].spclick+'</span>'
				+'<span class="s_p">2016-11-01</span></li>';
		}
		$(".new_ul").html(allSpeStr);
	},"json");
}
*/