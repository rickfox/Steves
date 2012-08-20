var editMode = false;
var SLIDE_WIDTH = 640;
var INTERVAL = 10000;
var UNFOCUSED = 0.7; 
var slidecount = 1;
var timer = null;
var currentSlide = null;
var slideswitch = 0;
var switchtoSlide = 0;

try { Typekit.load(); } catch (e) { }
$(document).ready(function () {
    

    if (editMode == true) {
       
    }
});

$(document).ready(function () {
    editable = $('#smakk-page-wrapper').hasClass('editMode');
    $("img", ".videocontainer").click(function (e) {
        e.preventDefault();
        $(this).parent().html('<iframe width="600" height="337" frameborder="0" src="//player.vimeo.com/video/39515104?title=0&byline=0&portrait=0&autoplay=1"/>');
    });
    if (!editable) {
        StartUp();
        $('a.right').click(function (e) {
            e.preventDefault();
            window.clearInterval(timer);
            nextSlide();
        });
        $('a.left').click(function (e) {
            e.preventDefault();
            window.clearInterval(timer);
            prevSlide();
        });
    }
    if (!editMode) {
        timer = window.setInterval('nextSlide();', INTERVAL);
    }
    $('.heroContainer').find('.Normal').children().css({ opacity: UNFOCUSED });
    // $('.heroContainer').find('.Normal').children(':first').css({ opacity: 1 });
    $('.heroContainer').find('.Normal').children(':eq(' + (slideswitch) + ')').css({ opacity: 1 });
    setrepeat();
    $(window).resize(function () {
        setrepeat();
    });

});

function setrepeat() {
    var backrepeatleft = $("#sideNav").offset();
    $("#smakk-page-wrapper").css({ "background-position": backrepeatleft.left });
}
function nextSlide() {

    if (!$('.heroContainer').is(':animated') && $('.heroContainer').find('.Normal').children(':animated').length == 0) {
        totalSlides = $('.heroContainer').find('.Normal').children().length;
        $currentSlide = $('.heroContainer').find('.Normal').children(':eq(' + (slidecount - 1) +')');
        $currentSlide.animate({ opacity: UNFOCUSED });
        if (slidecount === slideswitch) {
            $('.heroContainer').find('.Normal').children().css({ opacity: UNFOCUSED });
            $('.heroContainer').find('.Normal').children(':eq(' + (switchtoSlide) + ')').css({ opacity: 1 });


            $('.heroContainer').css('left', ((((switchtoSlide -1) * SLIDE_WIDTH) - 319) * -1));

            slidecount = switchtoSlide;
        } 

            if (slidecount != totalSlides) {
                $nextSlide = $('.heroContainer').find('.Normal').children(':eq(' + (slidecount) + ')');
                $nextSlide.animate({ opacity: 1 });
                $('.heroContainer').animate({ left: '-=' + SLIDE_WIDTH }, function () {
                    slidecount += 1;
                });
            } else {
                $nextSlide = $('.heroContainer').find('.Normal').children(':first');
                $nextSlide.animate({ opacity: 1 });
                $('.heroContainer').animate({ left: '+=' + (SLIDE_WIDTH * (totalSlides - 1)) }, function () {
                    slidecount = 1;
                });

            
        }
    }
}

function prevSlide() {
    if (!$('.heroContainer').is(':animated') && $('.heroContainer').find('.Normal').children(':animated').length == 0) {
        totalSlides = $('.heroContainer').find('.Normal').children().length;
        $currentSlide = $('.heroContainer').find('.Normal').children(':eq(' + (slidecount - 1) + ')');
        $currentSlide.animate({ opacity: UNFOCUSED });
        if ((slidecount -1) === switchtoSlide) {
            $('.heroContainer').find('.Normal').children().css({ opacity: UNFOCUSED });
            //$('.heroContainer').find('.Normal').children(':eq(' + (slideswitch +2) + ')').css({ opacity: 1 });


            $('.heroContainer').css('left', ((((slideswitch) * SLIDE_WIDTH) - 319) * -1));

            slidecount = slideswitch +1;
        } 

        if (slidecount != 1) {
            $nextSlide = $('.heroContainer').find('.Normal').children(':eq(' + (slidecount - 2) + ')');
            $nextSlide.animate({ opacity: 1 });
            $('.heroContainer').animate({ left: '+=' + SLIDE_WIDTH }, function () {
                slidecount -= 1;
            });
        } else {
            $nextSlide = $('.heroContainer').find('.Normal').children(':last');
            $nextSlide.animate({ opacity: 1 });
            $('.heroContainer').animate({ left: '-=' + (SLIDE_WIDTH * (totalSlides - 1)) }, function () {
            slidecount = totalSlides;
        });
        }
    }
}

function StartUp() {
    totalSlides = ($('.heroContainer').find('.Normal').children().length)-1;
    switchtoSlide =Math.floor(totalSlides / 2);
    slideswitch = totalSlides + switchtoSlide;
    var setOfImages = $('.Normal','.heroContainer').html();
    $('.Normal', '.heroContainer').append(setOfImages);
    $('.heroContainer').css('left', ((((slideswitch) * SLIDE_WIDTH) - 319) * -1));
    slidecount = slideswitch ;
  
}