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
    var lastselectedstate;
    var selectedstate;
$(document).ready(function () {

    //statestartup['IL'] = { fill: '#cccccc' };
    $(".state", "#statesContainer").each(function () {
        var classes = $(this).attr("class").replace(/\s+/g, " ").split(" ");
        // console.log(classes);
        for (var i = 0; i < classes.length; i++) {
            if (!statestartup[classes[i]]) {
                console.log([classes[i]]);
                statestartup[classes[i]] = { fill: availablestatecolor };
                statehoverstyles[classes[i]] = { fill: avalablestatehover };
            }
        }
    });

    $('#map').usmap({ stateSpecificStyles: statestartup, stateSpecificHoverStyles: statehoverstyles, 'stateStyles': { fill: defaultcolor, 'stroke': '#fff' }, 'stateHoverStyles': { fill: defaultcolor }, 'stateHoverAnimation': 0, 'showLabels': false, 'click': function (event, data) { trigger(event, data); } });

});
function trigger(event, data) {
var name = data.name;
selectedstate = data.shape.node;
$(selectedstate).css('fill', avalablestatehover);
$(lastselectedstate).css('fill', availablestatecolor);
//alert("click: " + states[data.name]);
$("#statename").html(states[data.name]);
    $(".state", "#statesContainer").hide();
    $(".state", "#statesContainer").filter("." + data.name).show();

    lastselectedstate = selectedstate;
}

