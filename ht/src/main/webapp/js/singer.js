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