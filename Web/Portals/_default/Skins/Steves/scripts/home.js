
var INTERVAL = 2000;
var silderimgcount = 0;
var slidersetwidth = 0;
var isanimated = false;
 $(document).ready(function () {

    var cycleobj = $("#heroSlideContainer").after('<div class="imgSelectNav"><div class="imgSelect imgSelect0"></div></div><div class="clear"></div>').cycle({
        fx: 'fade',
        speed: '1000',
        timeout: 7000,
        pager: '.imgSelect0',
        slideResize: 0,
        pagerAnchorBuilder: function (idx, slide) {
            return '<a href="#"></a>';
        }
    });


    $(window).resize(function () {
        verticalcenter();
    });
    verticalcenter();
    var numlinks = $(".imgSelect a").length;
    $(".imgSelectNav").width((numlinks * 23));
    imagescroller();
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
            if (width > 1400) {
                $(this).children().children("img").css("margin-top", -marginheight);
            } else { $(this).children().children("img").css("margin-top", 0); }
        });

    }

    /*###### Image Scroller SlideSwap #####*/
    var activeSlideOnLeft = true;

    function switchslide(x) {
        var activeslide = $('#slidecontainer img.active');
        var advancewidth = 0;
        var slideswapon = 0;
        var nextSlide = null;
        switch (x) {
            case "forward":
                slideswapon = (Math.floor((silderimgcount * 2) + (silderimgcount / 2)));
                activeslide.removeClass("active");
                if (!activeSlideOnLeft) {
                    activeslide.next().addClass("active");
                    advancewidth = activeslide.next().width();
                } else {
                    advancewidth = getSwitchWidthAndSetActiveSlide(activeslide);
                    activeSlideOnLeft = false;
                }
                $('#slidecontainer').animate({ 'left': '-=' + advancewidth }, 600, function () {
                    if (activeslide.index() == slideswapon) {
                        //alert("swap");
                        var swapleft = parseInt($('#slidecontainer').css('left')) + (slidersetwidth);
                        $('#slidecontainer').css({ 'left': swapleft });
                        activeslide = $('#slidecontainer img:eq(' + (slideswapon - (silderimgcount - 1)) + ')');
                        $('#slidecontainer img').removeClass("active");
                        activeslide.addClass("active");
                    } else {
                    }
                    isanimated = false;
                });
                break;
            case "back":
                slideswapon = (Math.floor(silderimgcount / 2))
                if (activeslide.index() == slideswapon) {
                    //alert("swap");
                    var swapleft = parseInt($('#slidecontainer').css('left')) - slidersetwidth;
                    $('#slidecontainer').css({ 'left': swapleft });
                    activeslide = $('#slidecontainer img:eq(' + (silderimgcount + slideswapon) + ')');
                    $('#slidecontainer img:eq(' + slideswapon + ')').removeClass("active");
                } else {
                }
                activeslide.removeClass("active");

                if (activeSlideOnLeft) {
                    activeslide.prev().addClass("active");
                    advancewidth = activeslide.prev().width();
                } else {
                    advancewidth = getSwitchWidthAndSetActiveSlide(activeslide);
                    activeSlideOnLeft = true;
                }
                $('#slidecontainer').animate({ 'left': '+=' + advancewidth }, 600, function () {
                    isanimated = false;
                });
                break;
        }

    }

    function getSwitchWidthAndSetActiveSlide(activeslide) {
        var containerwidth = $('#slideholder').width();
        var slidewidthsum = 0;
        var currSlideToCheck = activeslide;
        if (activeSlideOnLeft) {
            //figure out which is the next slide
            while (slidewidthsum < containerwidth) {
                slidewidthsum += currSlideToCheck.width();
                if (slidewidthsum < containerwidth) { currSlideToCheck = currSlideToCheck.next(); }
            }
        } else {
            while (slidewidthsum < containerwidth) {
                slidewidthsum += currSlideToCheck.width();
                if (slidewidthsum < containerwidth) { currSlideToCheck = currSlideToCheck.prev(); }
            }
        }
        currSlideToCheck.addClass("active");
        return slidewidthsum - containerwidth;
    }

    /*###### Image Scroller Start up #####*/
    function imagescroller() {
        timer = window.setInterval(function () {
            if (isanimated != true) {
                isanimated = true;
                switchslide('back');
            }
        }, INTERVAL);

        silderimgcount = $('#slidecontainer').children().length;

        $('#slidecontainer img').each(function () {
            slidersetwidth += $(this).width();
        });
        var imgset = $('#slidecontainer').html();
        $('#slidecontainer').append(imgset);
        $('#slidecontainer').prepend(imgset);
        $('#slidecontainer img:eq(' + silderimgcount + ')').addClass("active");
        $('#slidecontainer').css({ 'left': -slidersetwidth });
    }
