$(document).ready(function () {
    //    $('.smakk-page-contact_us .label').css("display", "none");

    //Set variables for watermarks
    var nametxt = "Name *";
    var emailtxt = "E-mail *";
    var phonetxt = "Phone Number *";
    var messagetxt = "Message *";

    //Set Watermark for Name

    $('.smakk-page-contact_us .txtName').addClass("lightText")
    // set default value
.val(nametxt)
    // onfocus action
.focus(function () {
    if ($(this).val() == nametxt) {
        $(this).removeClass("lightText").val("");
    }
    // focus lost action
}).blur(function () {
    if ($(this).val() == "") {
        $(this).val(nametxt).addClass("lightText");
    }
});

    //Set Watermark for Email

    $('.smakk-page-contact_us .txtEmail').addClass("lightText")
    // set default value
.val(emailtxt)
    // onfocus action
.focus(function () {
    if ($(this).val() == emailtxt) {
        $(this).removeClass("lightText").val("");
    }
    // focus lost action
}).blur(function () {
    if ($(this).val() == "") {
        $(this).val(emailtxt).addClass("lightText");
    }
});

    //Set Watermark for Phone

    $('.smakk-page-contact_us .txtPhone').addClass("lightText")
    // set default value
.val(phonetxt)
    // onfocus action
.focus(function () {
    if ($(this).val() == phonetxt) {
        $(this).removeClass("lightText").val("");
    }
    // focus lost action
}).blur(function () {
    if ($(this).val() == "") {
        $(this).val(phonetxt).addClass("lightText");
    }
});

    //Set Watermark for Message

    $('.smakk-page-contact_us .txtMessage').addClass("lightText")
    // set default value
.val(messagetxt)
    // onfocus action
.focus(function () {
    if ($(this).val() == messagetxt) {
        $(this).removeClass("lightText").val("");
    }
    // focus lost action
}).blur(function () {
    if ($(this).val() == "") {
        $(this).val(messagetxt).addClass("lightText");
    }
});

    $('.clear').click(function (e) {
        e.preventDefault();
        $('.smakk-page-contact_us .validator').css("display", "none");
        $('.smakk-page-contact_us .required').css("display", "none");
        $('.smakk-page-contact_us .txtMessage').val(messagetxt).addClass("lightText");
        $('.smakk-page-contact_us .txtPhone').val(phonetxt).addClass("lightText");
        $('.smakk-page-contact_us .txtEmail').val(emailtxt).addClass("lightText");
        $('.smakk-page-contact_us .txtName').val(nametxt).addClass("lightText");

    });
    $('.submit').click(function (e) {
        if ($('.smakk-page-contact_us .txtMessage').val() === messagetxt) {
      
            $('.smakk-page-contact_us .txtMessage').val("");
        }
        if($('.smakk-page-contact_us .txtPhone').val() === phonetxt){
           
            $('.smakk-page-contact_us .txtPhone').val("");
        }
        if($('.smakk-page-contact_us .txtEmail').val() === emailtxt){
           
            $('.smakk-page-contact_us .txtEmail').val("");
        }
        if($('.smakk-page-contact_us .txtName').val() === nametxt){
     
            $('.smakk-page-contact_us .txtName').val("");
        }
      });
});