$(document).ready(function () {
    setherodots();
    setsideimg();
    setslidersides();
    $(window).resize(function () {
        setherodots();
        setsideimg();
        setslidersides();
    });
    imagescroller();
    $('.slidernav.left a').click(function (e) {
        e.preventDefault();
        if (isanimated != true) {
            isanimated = true;
            switchslide("back");
        }

        window.clearInterval(timer);
    });
    $('.slidernav.right a').click(function (e) {
        e.preventDefault();
        if (isanimated != true) {
            isanimated = true;
            switchslide("forward");
        }
        window.clearInterval(timer);
    });
});

function setherodots() {
    windowwidth = $(window).width();
    centerimg = $("#herotextimg img").width();
    dotswidth = (windowwidth - centerimg) / 2;
    $("#herotextimg").width(centerimg);
    $(".herodots").each(function () {
        $(this).width((dotswidth +50));
    });
}
function setsideimg() {
    windowwidth = $(window).width();
    if (windowwidth <= 1400) windowwidth = 1400;
    pos = ((windowwidth-960) / 2)/2;
    
        $("#leftimg").css("left", (pos-($("#leftimg").width()/2)));
        $("#rightimg").css("right", (pos - ($("#rightimg").width())));
   
  }



  /*###### Image Scroller SlideSwap #####*/
  var activeSlideOnLeft = true;
  var INTERVAL = 3000;
  var silderimgcount = 0;
  var slidersetwidth = 0;
  var isanimated = false;
  function switchslide(x) {
      var activeslide = $('#slidecontainer .slide.active');
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
                      activeslide = $('#slidecontainer .slide:eq(' + (slideswapon - (silderimgcount - 1)) + ')');
                      $('#slidecontainer .slide').removeClass("active");
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
                  activeslide = $('#slidecontainer .slide:eq(' + (silderimgcount + slideswapon) + ')');
                  $('#slidecontainer .slide:eq(' + slideswapon + ')').removeClass("active");
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
      var containerwidth = $('.Scroller').width();
      var slidewidthsum = 0;
      var currSlideToCheck = activeslide;
      if (activeSlideOnLeft) {
          //figure out which is the next slide
          while (slidewidthsum <= containerwidth) {
              slidewidthsum += currSlideToCheck.width();
              if (slidewidthsum != containerwidth) { currSlideToCheck = currSlideToCheck.next(); }
          }
      } else {
          while (slidewidthsum <= containerwidth) {
              slidewidthsum += currSlideToCheck.width();
              if (slidewidthsum != containerwidth) { currSlideToCheck = currSlideToCheck.prev(); }
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

      $('#slidecontainer .slide').each(function () {
          slidersetwidth += $(this).width();
          $("img", this).wrap("<div class='slide_logo'/>");
          linkwidth = $("a", this).width();
          $("a", this).css("left",(Math.floor((300 -linkwidth)/2)));
      });
      var imgset = $('#slidecontainer').html();
      $('#slidecontainer').append(imgset);
      $('#slidecontainer').prepend(imgset);
      $('#slidecontainer').append(imgset);
      $('#slidecontainer .slide:eq(' + silderimgcount + ')').addClass("active");
      $('#slidecontainer').css({ 'left': -slidersetwidth });

  }
  function setslidersides() {
      windowwidth = $(window).width();
      sideswidth = (windowwidth - 700) / 2;
      
      $(".slidernav").each(function () {

          if (windowwidth > 1400) {
             if ($(this).hasClass("left")) {
                  $(this).css("left",(sideswidth));

              } else {

                  $(this).css("right",(sideswidth));
              }
          }
      });
  }