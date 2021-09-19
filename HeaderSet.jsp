<%-- 
    Document   : HeaderSet
    Created on : 17 Sep, 2021, 11:47:10 AM
    Author     : nivas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mobile Service</title>
        <style>
            .header{
                text-align: left;
                font-size:  20px;
                color: white;
                padding: 1px;
            }
            .log{
                text-align: right;
                font-size: 20px;
                color: red;
                padding: 1px;
            }
        </style>
    </head>
    <body>
        <div class="header">
        <h1 style="color: rosybrown; text-align: center">Mobile Service</h1> 
        <a href="UserLogin.jsp"><input type="submit" value="Home" style="color: blue"/></a>
        </div>
        <div class="log">
            <a href="LogOut"><input type="submit" value="LogOut" style="color: blue"/></a>
        </div>
    </body>
</html>
