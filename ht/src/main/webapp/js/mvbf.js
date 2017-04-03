var  video=null;
var progressTime=null;
 var playProgress1=document.getElementById("playProgress1");
 var showProgress1=document.getElementById("showProgress1");
 var progressWrap1=document.getElementById("progressWrap1"); 
 var volume1=document.getElementById("volume1");
 var volume_3=document.getElementById("volume_3");
 var muted1=document.getElementById("muted1");
window.onload=function(){
        	 video=document.getElementById("myPlayer");
        }
 function getProgress(){
        	//获取到时间的百分比
        	var percent=video.currentTime/video.duration;
        	playProgress1.style.width=percent*(progressWrap1.offsetWidth)+"px";
        	$("#dian").css("left",playProgress1.style.width);
        	$("#dianxianshi").css("width",playProgress1.style.width);
        	showProgress1.getElementsByTagName("em")[0].innerHTML=sTom1(video.currentTime);

        }
 function Play1(obj){
        	//判断视屏现在是播放还是暂停
        	if(video.paused){
        		video.play();
        		//控制进度条
        		progressTime=window.setInterval(getProgress,1000);
        		//显示总是长
        		showProgress1.getElementsByTagName("em")[1].innerHTML=sTom1(video.duration);
        		document.getElementById("play1").src="images/playbar_08.png";
        	}else{
        		video.pause();
        		clearInterval(progressTime);
        		document.getElementById("play1").src="images/playbar_11.png";
        	}
        }
	  
	//调整音量
       volume1.onmousedown=function(e){
            volume_3.style.left=e.clientX-780+"px";
             $("#xianshi").css("width",e.clientX-780);
             if(((e.clientX-780)/100).toFixed(1)>1){
                   video.volume=1;
             }else{
             	video.volume=((e.clientX-780)/100).toFixed(1);
             }  
        }

        //静音
        var vodio;
        function Muted1(e){
          if(video.muted1){
          	 video.muted1=false;   //消除静音
          	 muted1.src="images/playbar_14.png"; 
          	 video.volume=vodio; //还原音量
          	 console.log(volume1.value);
          }else{
          	 video.muted1=true;     //静音
          	 muted1.src="images/playbar_46.png";
          	    //音量修改为0
          	  vodio=video.volume;
          	  video.volume=0;
          }
        }
       
        //时间转换
        function sTom1(mytime){
        	var str="";
        	var mytime=Math.round(mytime);
        	//求分钟和秒
        	var min=Math.floor(mytime/60);
        	var src=mytime%60;
        	//判断
        	if(min>9){
        		str+=min+":";
        	}else{
        		str+="0"+min+":";
        	}
        	if(src>9){
        		str+=src;
        	}else{
        		str+="0"+src;
        	}
        	return str;
        }
        
        progressWrap1.onmousedown=function(e){
            if(video.paused||video.ended){
            	Play1();
            	dragEvent(e);
            }else{
            	dragEvent(e);
            }
        }

        function dragEvent(e){
        	//首先消除计时器，当值都改变完的时候，在重新启动
        	clearInterval(progressTime);
        	var length=e.pageX-144-progressWrap1.offsetLeft;
        	var parcent=length/progressWrap1.offsetWidth;
        	//根据百分比 去计算长度和时间
        	playProgress1.style.width=parcent*(progressWrap1.offsetWidth)+"px";
        	video.currentTime=video.duration*parcent;
        	//重新启动计时器
        	progressTime=window.setInterval(getProgress,1000); 

        }



        /////////////////////////////////全屏播放//////////////////////////////////
        var All=document.getElementById("quanp");

        // 启动全屏!
        All.onclick=function(){
          if(document.getElementById("myPlayer").webkitRequestFullscreen){
            document.getElementById("myPlayer").webkitRequestFullscreen();
          }else if(document.getElementById("myPlayer").mozRequestFullScreen){
            document.getElementById("myPlayer").mozRequestFullScreen();
          }else if(document.getElementById("myPlayer").requestFullscreen){
            document.getElementById("myPlayer").requestFullscreen();
          }else{
            document.getElementById("myPlayer").msRequestFullscreen();
          }
        }
        
      

       
