
$(document).ready(function () {
    //(HTML object) . action (do something)
    /*
        $("button").click(function () {
            $("h1").fadeOut();
        });
        
        //double click
        $("button").dblclick(function () {
            $("h2").fadeOut();
        });
    */
    /*
        //mouse enter
        $("button").mouseenter(function () {
            $("h1").fadeOut();
            $("h2").fadeOut();
        });
    */
    /*
        //mouse leave
        $("button").mouseleave(function () {
            $("h1").fadeOut();
            $("h2").fadeOut();
        });
    */
    /*
    //ID
    $("#button1").click(function () {
        $("h1").fadeOut();
        $("h2").fadeOut();
    });
    $("#button2").click(function () {
        $("h1").fadeIn();
        $("h2").fadeIn();
    });

    //CLASS
    $(".otherbutton").click(function () {
        $("h1").fadeIn();
        $("h2").fadeIn();
    });
    */

    /*
        //Adding classes to different HTML tags 
        $("#button1").click(function () {
            $(".fadeouttag").fadeOut();
        });
        $("#button2").click(function () {
            $(".fadeouttag").fadeIn();
        });
    */


    //Fade out timing 
    $("#button1").click(function () {
        $("h1").fadeOut(1000);
        $("h2").fadeOut("slow");
    });
    $("#button2").click(function () {
        $("h1").fadeIn(3000);
        $("h2").fadeIn("fast");
    });

    // Toggle 
    $("#togglebutton").click(function () {
        $(".fadeouttag").toggle(1000);
    });

    //Selecting HTML elements 
    $("#button3").click(function () {
        //all
        // $("*").fadeOut(3000);

        //fade out the first p
        $("p:first").fadeOut(500);

        //hide
        $("p:first").hide();
        //show
        $("p:first").show();
    });

    $("#hide").click(function () {
        //hide
        $("p:first").hide();
    });

    $("#show").click(function () {
        //show
        $("p:first").show();
    });


    //animation
    $("#animation").click(function () {
        $("div").animate({ left: '100px' }, "fast");
    });
    $("#animation2").click(function () {
        $("div").animate({ left: "0px" }, "slow");
    });

    $("#animation3").click(function () {
        $("div").animate({
            height: '200px',
            width: '200px'
        });
    });

    $("#animation4").click(function () {
        $("div").animate({
            height: '75px',
            width: '75px'
        });
    });

    $("#animation31").click(function () {
        $("div").animate({
            height: '+=20px',
            width: '+=20px'
        });
    });

    $("#animation41").click(function () {
        $("div").animate({
            height: '-=20px',
            width: '-=20px'
        });
    });

    $("#btorange").click(function () {
        $("#orangediv").fadeIn();
        $("#bluediv").fadeOut();
    });

    $("#btblue").click(function () {
        $("#bluediv").fadeIn();
        $("#orangediv").fadeOut();
    });



});



