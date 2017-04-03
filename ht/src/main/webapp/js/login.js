$("#loginDiv").dialog({
	top:80,
	width:300,
	title:"",
	border:false,
	modal:true,	
});
$('#btnLogin').linkbutton({    
    iconCls: 'icon-man',
    onClick: function(){
    	$("#loginForm").submit();//提交
    }
});

$("#loginForm p img").click(function(){
	$(this).attr("src", "vcode.jpg"+ "?" + new Date().getTime());
});
