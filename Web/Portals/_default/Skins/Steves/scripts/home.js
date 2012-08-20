$(document).ready(function () {

    var cycleobj = $("#heroSlideContainer").cycle({slideResize:0}); 
       $(window).resize(function () {
        verticalcenter();
    });
    verticalcenter();
});
function verticalcenter() {

    var width = $(window).width();
    var height = ((685 * width) / 1400);
    marginheight = (height - 685) / 2;
        if ($("#heroSlideContainer").width() != width) $("#heroSlideContainer").width(width);
        

        $(".slide").each(function () {
            if ($(this).width() != width) {
                $(this).width(width);
                $(this).children().children("img").width(width);
            }
            if (width > 1400) $(this).children().children("img").css("margin-top", -marginheight);
         });
        
}