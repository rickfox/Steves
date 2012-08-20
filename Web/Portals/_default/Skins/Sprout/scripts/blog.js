$(document).ready(function () {
    setrepeat();
    $(window).resize(function () {
        setrepeat();
    });

});
function setrepeat() {
    var backrepeatleft = $("#sideNav").offset();
    $("#smakk-page-wrapper").css({ "background-position": (backrepeatleft.left -11) });
}