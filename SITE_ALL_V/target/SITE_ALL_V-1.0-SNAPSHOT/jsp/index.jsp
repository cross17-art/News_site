<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<style>

    /*A {*/
    /*    color: white;*/
    /*    text-decoration: none;*/
    /*    padding-right: 200px;*/
    /*}*/
    /*a:hover{*/
    /*    color: #FFE143;*/


    /*}*/
    body{
        width: 100%;
        height: 100%;
        margin: 0;
    }
    /*hr{*/
    /*    position: absolute;*/
    /*    width: -webkit-fill-available;*/
    /*    height: 0px;*/
    /*    left: 0px;*/
    /*    top: 235px;*/
    /*    border: 8px solid #383E56;*/
    /*}*/


    .about_us{
        /*width: 275px;*/

        /*left: 299px;*/
        /*top: 380px;*/

        /*font-family: Poiret One;*/
        /*font-style: normal;*/
        /*font-weight: normal;*/
        margin-left: 20%;
        font-size: 72px;
        /*line-height: 0%;*/
        /* identical to box height, or 0px */


        color: #74837C;
    }

    .who_are_we{

        /*width: 406px;*/
        /*left: 299px;*/
        /*top: 827px;*/
        /*display: inline;*/
        /*font-family: Poiret One;*/
        /*font-style: normal;*/
        /*font-weight: normal;*/
        font-size: 72px;
        margin-left: 20%;
        margin-top: 7%;
        /*line-height: 0%;*/
        /* identical to box height, or 0px */
        color: #74837C;
    }


    .text_body{
        width: 100% ;
        height: 100%;
        font-family: cursive;

        /*left: 0px;*/
        /*top: 0px;*/
        padding-top: 10%;
        background: #C5D7BD;
    }
    .text{

        font-size: 24pt;
        text-align: justify;
        line-height: 100%;
        width: 88%;
        color: black;
    }

</style>
<head>
    <meta name="viewport" content="user-scalable=yes, width=device-width, initial-scale=1.0, maximum-scale=1.0">

    <title>Main</title>
</head>
<body>
<jsp:include page="hat.jsp"></jsp:include>

<div class="text_body">
    <div class="about_us">
        About us.
        <div class="text">
               Cozy sphinx waves quart jug of bad milk.
                    A very bad quack might jinx zippy fowls. Few quips
                    galvanized the mock jury box. Quick brown dogs jump
                   over the lazy fox. The jay, pig, fox, zebra, and my wolves quack!
                   Blowzy red vixens fight for a quick jump. Joaquin Phoenix was gazed
                   by MTV for luck. A wizard’s job is to vex chumps quickly in fog. Watch "Jeopardy!".
        </div>
    </div>

    <div class="who_are_we">
        Who are we?
        <div class="text">
            Cozy sphinx waves quart jug of bad milk.
            A very bad quack might jinx zippy fowls. Few quips
            galvanized the mock jury box. Quick brown dogs jump
            over the lazy fox. The jay, pig, fox, zebra, and my wolves quack!
            Blowzy red vixens fight for a quick jump. Joaquin Phoenix was gazed
            by MTV for luck. A wizard’s job is to vex chumps quickly in fog. Watch "Jeopardy!".
        </div>
    </div>


</div>




</body>
</html>