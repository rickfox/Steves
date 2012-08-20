$(document).ready(function () {
    $(window).resize(function () {
        verticalcenter();
    });
    $("#heroSlideContainer").cycle({
        before: function () { verticalcenter(); }
    }
    );
    verticalcenter();
});
function verticalcenter() {
    $("#heroSlideContainer").cycle("toggle");
    var width = $(window).width();
    var height = ((685 * width) / 1400);
    marginheight = (height - 685) / 2;
        if ($("#heroSlideContainer").width() != width) $("#heroSlideContainer").width(width);

        $(".slide").each(function () {
            if ($(this).width() != width) {
                $(this).width(width);
                $("img", this).width(width);
            }
         
            if (width > 1400) {
                $("img", this).css("margin-top", -marginheight);
            } else { $("img", this).css("margin-top", 0);
             }


        });
        $("#heroSlideContainer").cycle("toggle");
}