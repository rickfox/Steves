states = {
        FL : "Florida",
        SC:"South Carolina",
        GA:"Georgia",
        AL:"Alabama",
        NC:"North Carolina",
        TN:"Tennessee",
        RI:"Rhode Island",
        CT:"Connecticut",
        MA:"Massachusettes",
        ME:"Maine",
        NH:"New Hampshire",
        VT:"Vermont",
        NY:"New York",
        NJ:"New Jersey",
        PA:"Pennsylvania",
        DE:"Delaware",
        MD:"Maryland",
        WV:"West Virginia",
        KY:"Kentucky",
        OH:"Ohio",
        MI:"Michigan",
        WY:"Wyoming",
        MT:"Montana",
        ID:"Idaho",
        WA:"Washington",
        TX:"Texas",
        CA:"Califonia",
        AZ:"Arizona",
        NV:"Nevada",
        UT:"Utaha",
        CO:"Colorado",
        NM:"New Mexico",
        OR:"Oregon",
        ND:"North Dakota",
        SD:"South Dekota",
        NE:"New England",
        IA:"Iowa",
        MS:"Mississippi",
        IN:"Indiana",
        IL:"Illinois",
        MN:"Minnesota",
        WI:"Wisconsin",
        MO:"Missouri",
        AR:"Arkansas",
        OK:"Oklahoma",
        KS:"Kansas",
        LA:"Louisiana",
        VA:"Virginia",
        DC:"Washington, DC"
    };
    var defaultcolor = "#cccccc";
    var defaultHover = defaultcolor;
    var availablestatecolor = "none";
    var avalablestatehover = "#70cbd2";
    var statestartup = {};
    var statehoverstyles = {};
    var avalablestates = {};
    var lastselectedstate;
    var selectedstate;
    $(document).ready(function () {

        //statestartup['IL'] = { fill: '#cccccc' };
        $(".state", "#statesContainer").each(function () {
            var classes = $(this).attr("class").replace(/\s+/g, " ").split(" ");
            // console.log(classes);
            for (var i = 0; i < classes.length; i++) {
                if (!statestartup[classes[i]]) {
                    //console.log([classes[i]]);
                    statestartup[classes[i]] = { fill: availablestatecolor };
                    statehoverstyles[classes[i]] = { fill: avalablestatehover };
                    avalablestates[classes[i]] = states[classes[i]];
                }
            }

        });
        for (x in avalablestates) { $("#stateselect").append($('<div class="option ' + x + '" data-val="' + x + '" onClick="optionchanged(this);"/>').html(avalablestates[x])); }
        $(".option","#stateselect").sortElements(function (a, b) {
            return $(a).text() > $(b).text() ? 1 : -1;
        });
        //Check if SVG is supported
        if (Modernizr.svg) {
            $('#map').usmap({ stateSpecificStyles: statestartup, stateSpecificHoverStyles: statehoverstyles, 'stateStyles': { fill: defaultcolor, 'stroke': '#fff' }, 'stateHoverStyles': { fill: defaultcolor }, 'stateHoverAnimation': 0, 'showLabels': false, 'click': function (event, data) { trigger(event, data); } });
        }
        $("#stateselect").change(function () {
            var statename = {};
            statename.name = $("option:selected", "#stateselect").val();
            //console.log(statename);
            //Check if SVG is supported
            if (Modernizr.svg) {
                $('#map').usmap("trigger", statename.name, "click");
            } else {
                showStores(statename);
            }
        });
        startup();
        $("#stateselect").jScrollPane({ showArrows: true });

    });
    function optionchanged(x) {
        var statename = {};
        statename.name = $(x).attr("data-val");
       // console.log(statename.name);
        //Check if SVG is supported
        if (Modernizr.svg) {
            $('#map').usmap("trigger", statename.name, "click");
        } else {
            showStores(statename);
        }
    }
    function startup() {
        var statename = {};
        var defaultselected = $('.option:eq(0)', '#stateselect');
        statename.name = defaultselected.attr("data-val");
        defaultselected.addClass("selected");
        if (Modernizr.svg) {
            $('#map').usmap("trigger", statename.name, "click");
        } else {
            showStores(statename);
        }
    };
function trigger(event,data) {
var name = data.name;
selectedstate = data.shape.node;

if (statestartup[name]) {
    $(lastselectedstate).css('fill', availablestatecolor);
    $(selectedstate).css('fill', avalablestatehover);

    showStores(data);
}
}
function showStores(data) {
    $(".option", "#stateselect").each(function () {
        $(this).removeClass("selected");
    });
    $("." + data.name, "#stateselect").addClass("selected");
        //alert("click: " + states[data.name]);
        $("#statename").html(states[data.name]);
        $(".state", "#statesContainer").hide();
        $(".state", "#statesContainer").filter("." + data.name).show();

        lastselectedstate = selectedstate;
    
}

/**
* jQuery.fn.sortElements
* --------------
* @param Function comparator:
*   Exactly the same behaviour as [1,2,3].sort(comparator)
*   
* @param Function getSortable
*   A function that should return the element that is
*   to be sorted. The comparator will run on the
*   current collection, but you may want the actual
*   resulting sort to occur on a parent or another
*   associated element.
*   
*   E.g. $('td').sortElements(comparator, function(){
*      return this.parentNode; 
*   })
*   
*   The <td>'s parent (<tr>) will be sorted instead
*   of the <td> itself.
*/
jQuery.fn.sortElements = (function () {

    var sort = [].sort;

    return function (comparator, getSortable) {

        getSortable = getSortable || function () { return this; };

        var placements = this.map(function () {

            var sortElement = getSortable.call(this),
                parentNode = sortElement.parentNode,

            // Since the element itself will change position, we have
            // to have some way of storing its original position in
            // the DOM. The easiest way is to have a 'flag' node:
                nextSibling = parentNode.insertBefore(
                    document.createTextNode(''),
                    sortElement.nextSibling
                );

            return function () {

                if (parentNode === this) {
                    throw new Error(
                        "You can't sort elements if any one is a descendant of another."
                    );
                }

                // Insert before flag:
                parentNode.insertBefore(this, nextSibling);
                // Remove flag:
                parentNode.removeChild(nextSibling);

            };

        });

        return sort.call(this, comparator).each(function (i) {
            placements[i].call(getSortable.call(this));
        });

    };

})();