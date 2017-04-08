/////////////////////////////////评论的显示///////////////////////////
commentShow();
function commentShow(){
	$.get("friend/commentShow", function(data){
		var commentStr = "";
		for (var i = 0; i < data.length; i++) {
			commentStr+='<div class="con"><div class="con_0 hidden-md hidden-sm hidden-xs">'+
			'<img class="user_icon" src="images/user.jpg"></div>'+
			'<div class="con_1"><span>'+data[i].userid+'</span>：</div>'+
			'<div class="con_2">'+data[i].commentTime.split(".")[0]+'</div>';
			if(data[i].content!=null){
				'<div class="con_3">'+data[i].content+'</div>';
			}
			if(data[i].commentPicPath!=null){
				commentStr+='<div class="con_4"><img src="'+data[i].commentPicPath+'"/></div></div>';
			}else{
				commentStr+="";
			}
		}
		$(".content").html(commentStr);
	}, "json");
}
/////////////////////////////////评论的发表///////////////////////////
/*function commentPublish(){
		$("#PublishForm").submit();
		alert("你妹錒");
}
$("#PublishForm").form({
	url:"friend/commentInsert", 
    success:function(data){
    	alert("aaaaaaaaaaaaaaaaaaa");
    }
});*/
/*$('#PublishForm').form({  
	
    url:"friend/commentInsert",    
    onSubmit: function(){    
    	alert("你妹錒");   
    },    
    success:function(data){    
    	alert("aaaaaaaaaaaaaaaaaaa");
    }   
    
});    */
/*function commentPublish(){    
$('#PublishForm').submit();
alert("hhhhhhhhhhhh");
}*/
/*commentPublish();*/
/*function commentPublish(){
	var uname= $.trim($("#content").val());
	var upwd= $.trim($("#picData").val());
	alert(111111111);
	$.get("friend/commentInsert",{"content":content,"picData":picData} ,function(data){
		alert("你是蠢东西錒");
	},"json");
}*/	



