<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 05.04.2021
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<style>
    *{

        margin: 0px;
        padding: 0px;
    }
    body{
        width: 100%;
        min-width: 100%;
        height: 100%;
        display: inline;
    }

    a {
        color: white;
        text-decoration: none;
        padding-right: 11%;
    }
    a:hover{
        color: #FFE143;
    }

    .hat_rectangle{
        width: 100%;
        /*background-position: right 100% ;*/
        /*height: 30%;*/
        background: #9FB8AD;
        border-bottom: 14px solid #383E56;
        display: inline-block;
    }
    .hat_title{
        color: white;
        /*left: 3%;*/
        /*top: 50%;*/
        padding-top: 3%;
        padding-left: 3%;
        font-size: 166px;
        display: inline;
        /*line-height: 0%;*/
    }
    .hat_join{
        color:white;
        display: inline;
        /*left: 85%;*/
        /*height: 0%;*/
        /*top: 43%;*/
        /*font-family: Karla;*/
        font-family: cursive;
        font-size: 2em;
        padding-left: 62%;
        padding-right: 0%;
        /*line-height: 0%;*/

    }
    .hat_center_links{
        text-align:  center;
        font-size: 2em;
        font-family: cursive;
        padding-top: 2%;
        padding-left: 9%;
        padding-bottom: 3%;
    }


</style>
<head>
    <meta name="viewport" content="user-scalable=yes, width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <title>Title</title>
</head>
<body>


<div class="hat_rectangle">
    <div class="hat_title">
        Nine
    </div>
    <div class="hat_join">
        <a href="/pages/join.jsp" style="padding-right: 0%;"> join</a>
    </div>
    <div class="hat_center_links">
        <a href="/pages/index.jsp" >Main</a>
        <a href="/pages/news.jsp">News</a>
        <a href="/pages/album.jsp">Album</a>
        <a href="/pages/guestbook.jsp">Guestbook</a>
    </div>
</div>

</body>
</html>
