$(function(){
    //slideshow
    var imgs = 7; 
    var now = 0;
    $(".slideshow>img").eq(0).siblings().css({"margin-left" : "-1800px"});
    setInterval(slide, 4000);
    function slide() {
        now = now == imgs ? 0 : now+=1;  
        $(".slideshow>img").eq(now-1).css({"margin-left" : "-900px"});
        $(".slideshow>img").eq(now).css({"margin-left" : "0px"});
    }

});