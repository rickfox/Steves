/*!
* jQuery svgswap Plugin 
* Examples and documentation not yet provided 
* Copyright (c) 2012 R. Fox
* Version:  1.1(9-AUG-2012)
* Dual licensed under the MIT and GPL licenses.
* http://jquery.malsup.com/license.html
* Requires: jQuery v1.7.2 or later
*/

; (function ($, undefined) {
    var ver = '1.1';

    function log() {
        if (window.console && console.log && $.fn.svgswap.defaults.debug)
            console.log('[svgswap] ' + Array.prototype.join.call(arguments, ' '));
    }
    //Constructor 
    //Accepts one parameter an object
    //Optional propreties:
    //svg - Values True False
    //debug - Values True False
    //validate - Turns off file validation before loading.  If File is not located at same domain as site, set to false
    //revert - Not Yet Supported
    $.fn.svgswap = function (args) {
        var callscope = { s: this.selector, c: this.context };
        if (args) processArgs(args);
        collectImages();
    }
    //Return version number
    $.fn.svgswap.ver = function () { return ver; };

    //Handle Processing of Constructor Args
    function processArgs(Args) {
        var argarray = [];
        for (var property in Args) argarray.push(property);
        if (argarray.length > 0) {
            for (var i = 0; i <= argarray.length; i++) {
                switch (argarray[i]) {
                    case "svg":
                        $.fn.svgswap.defaults.isSVG = Args[argarray[i]];
                        log('SVG Validation Mode: '+ Args[argarray[i]]);
                        break;
                        case "validate":
                        $.fn.svgswap.defaults.validate = Args[argarray[i]];
                        log('File Validation Mode: '+Args[argarray[i]]);
                        break;
                    case "debug":
                        $.fn.svgswap.defaults.debug = Args[argarray[i]];
                        log('Debug Mode: '+Args[argarray[i]]);
                        break;
                    case "revert":
                        //Revert Logic has not been defined yet.
                        //Every Image that was converted to an SVG will have stored in its data object a svgswap object with the following properties:
                        //imgtag - stores the object 
                        //origsrc - stores the original imgage id
                        //svgsrc - stores the svgswap url
                        break;
                }
            }
        }
    }
    //Loop Through All Image Tags
    function collectImages() {
        var images = document.getElementsByTagName("img");
        for (var i = 0; i < images.length; i++) {
            var image = images[i];
            var svgsrc = $(image).attr("data-svgswap");
            if (svgsrc) loadsvg(image, svgsrc);
        }
    }
    //Swap Out the image with the SVG version
    function switchtoSVG(svgimage) {
        if (svgimage.isLoaded != false) {
            log('Swapping Img src:' + svgimage.origsrc + ' for data-svgswap:' + svgimage.svgsrc);
            $(svgimage.imgtag).attr("src", svgimage.svgsrc);
            log('Image has been swapped to SVGSwap');

        }
    }
    //Handle Loading functions for Creating SvgImage 
    function loadsvg(img, svgurl) {
        log('Initializing new SVGSwap Image');
        var svgimage = new Image();
        svgimage.imgtag = img;
        svgimage.origsrc = $(img).attr("src");
        svgimage.svgsrc = svgurl;
        svgimage.onerror = function(){loadError(svgimage)};
        svgimage.onload = function(){switchtoSVG(svgimage)};
        $(img).data({ svgswap: svgimage });
        //Validate file existance or bypass with validation override
        if (($.fn.svgswap.defaults.validate && UrlExists(svgurl)) || $.fn.svgswap.defaults.validate == false) {
        //Validate SVG compatibility or bypass with isSVG override
        if(($.fn.svgswap.defaults.isSVG && Modernizr.svg) || ($.fn.svgswap.defaults.isSVG == false)){
              svgimage.src=svgurl;
            }
        } else {
            loadError(svgimage);
        }
        
    }
    //Code Snipet from http://stackoverflow.com/questions/3915634/checking-if-a-url-is-broken-in-javascript*/
    function UrlExists(url) {
        var http = new XMLHttpRequest();
        http.open('HEAD', url, false);
        http.send();
        if(http.status == 404)log("File Does Not Exist");
        return http.status != 404;
    }
    //Handle Load Error
    function loadError(svgimage) {
     svgimage.isLoaded = false;
     log("SVGSwap Image could not be loaded");
     // log("SVGSwap Image:" + svgimage.svgsrc + " could not be loaded");
    };
    //Define defalut values for variables
    $.fn.svgswap.defaults = {
        debug: false,
        isSVG: true,
        validate: true
    }

})(jQuery);

