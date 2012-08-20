var editMode = false;

try { Typekit.load(); } catch (e) { }
$(document).ready(function () {
    $('#smakk-hero-wrapper').cycle({
        fx: 'fade',
        speed: 500,
        timeout: 8000,
        containerResize: 0,
        slideResize: 0,
        fit: 0,
        cleartypeNoBg: true
    });
    $('.prev-arrow').click(function (e) {
        $('#smakk-hero-wrapper').cycle('prev');
    });

    $('.next-arrow').click(function (e) {
        $('#smakk-hero-wrapper').cycle('next');
    });

    if (editMode == true) {
        $('#smakk-hero-wrapper').cycle('pause');
    }
});