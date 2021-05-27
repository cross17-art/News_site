<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 10.04.2021
  Time: 23:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    body{
        margin: 0 0 ;
        background-color: #9FB8AD;
    }
    .first_div{
        width: 350px;
        height: 350px;
        margin-left: 40%;
        margin-top: 15%;
        background-color: white;
        border-radius: 10px;
        border: 3px solid balck;
        border: grove;

    }
    input[type="text"]:focus{
        border-radius: 11px;
        border:  solid yellow;
    }
    input[type="password"]:focus{
        border-radius: 11px;
        border:  solid yellow;
    }

</style>
<body>
<form action="http://localhost:8080/pages/index.jsp" method="Post">
    <div class="first_div">
        <div style="padding-top: 100px"></div>
        <input type="text" name="Login" value="" placeholder="Login" style="    width: 175px;
    margin-left: 87px;
    height: 34px;
    font-size: large;
     outline:none;" />
        <br>
        <input type="password" name="Password" value="" placeholder="Password" style="
    width: 175px;
    margin-left: 87px;
    height: 34px;
    margin-top: 10px;
    font-size: large;
     outline:none;
"  />
        <button type="submit" style="
    width: 175px;
    margin-left: 87px;
    height: 34px;
    margin-top: 50px;
    font-size: large;
">Join</button>
    </div>
</form>
</body>
</html>