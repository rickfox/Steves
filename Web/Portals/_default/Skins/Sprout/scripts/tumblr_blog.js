$(document).ready(function () {

    $("a", ".footerContainer").each(function () {
        $(this).attr("target", "_parent");
    });

    $("a", "#smakk-header").each(function () {

        $(this).attr("target", "_parent");
    });
});
