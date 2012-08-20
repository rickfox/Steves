try { Typekit.load(); } catch (e) { }
$(document).ready(function () {
    $(".images_3_column_262x171").each(function(){
        $(this).parent().css('width', '320px');
        $(this).parent().css('float', 'left');
        $(this).parent().css('clear', 'none');
    });
});