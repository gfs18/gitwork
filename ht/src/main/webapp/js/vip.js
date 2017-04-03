var music_cd_1=document.getElementById("music_cd_1");
var music_cd_2=document.getElementById("music_cd_2");
var imgs=document.getElementsByClassName("music_cd");
//变量
var flag=true;
//半径
var dis=300;
//点击旋转
var timer;
window.onload=function(){

	music_cd_1.onclick=function(){
		if (flag) {
			this.style.webkitTransform="rotate(-360deg)";
			//写小图标的旋转
			for(var i=0;i<imgs.length;i++){
				var myLT=toLT(dis,-110/3*(imgs.length-i));
				//开始偏移
				imgs[i].style.webkitTransition="0.5s "+i*100+"ms";
				imgs[i].style.left=myLT.l+"px";
				imgs[i].style.top=myLT.t+"px";
				this.style.webkitTransform="rotate(-720deg)";
			}
			music_cd_2.style.webkitTransform="rotate(0deg)";
			music_cd_2.style.webkitTransformOrigin="90px 30px";
			music_cd_2.style.webkitTransition="all 1s";
		}else{
			this.style.webkitTransform="rotate(0deg)";
			for(var i=0;i<imgs.length;i++){

				//开始偏移
				imgs[i].style.webkitTransition="0.5s "+i*100+"ms";
				imgs[i].style.left=this.style.left;
				imgs[i].style.top=this.style.top;
				this.style.webkitTransform="rotate(0deg)";
			}
			music_cd_2.style.webkitTransform="rotate(-45deg)";
			music_cd_2.style.webkitTransformOrigin="90px 30px";
			music_cd_2.style.webkitTransition="all 1s";

		}
		flag=!flag;
		clearInterval(timers);

	}


	timers=setInterval("fn()",2000);

	music_cd_1.onmouseout=function(){
		clearInterval(timers);      
		timers=setInterval("fn()",2000);

	} 
}


//已知直角三角形的斜边的长度，和一个角度，求两直角边的长度
function toLT(dis,deg){
	var oleft=Math.round(Math.sin(deg*Math.PI/180)*dis);
	var otop=Math.round(Math.cos(deg*Math.PI/180)*dis);
	return{l:oleft,t:otop};


}     
function fn(){
	if (flag) {
		music_cd_1.style.webkitTransform="rotate(-360deg)"; 
		//写小图标的旋转
		for(var i=0;i<imgs.length;i++){
			var myLT=toLT(dis,-110/3*(imgs.length-i));
			//开始偏移
			imgs[i].style.webkitTransition="0.5s "+i*100+"ms";
			imgs[i].style.left=myLT.l+"px";
			imgs[i].style.top=myLT.t+"px";
			music_cd_1.style.webkitTransform="rotate(-720deg)";
		}
		music_cd_2.style.webkitTransform="rotate(0deg)";
		music_cd_2.style.webkitTransformOrigin="90px 30px";
		music_cd_2.style.webkitTransition="all 1s";
	}else{
		music_cd_1.style.webkitTransform="rotate(0deg)";
		for(var i=0;i<imgs.length;i++){ 
			//开始偏移
			imgs[i].style.webkitTransition="0.5s "+i*100+"ms";
			imgs[i].style.left=music_cd_1.style.left;
			imgs[i].style.top=music_cd_1.style.top;
			music_cd_1.style.webkitTransform="rotate(0deg)";  
		}
		music_cd_2.style.webkitTransform="rotate(-45deg)";
		music_cd_2.style.webkitTransformOrigin="90px 30px";
		music_cd_2.style.webkitTransition="all 1s";

	} 
	flag=!flag;
}     