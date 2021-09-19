<%-- 
    Document   : UserLogin
    Created on : Sep 1, 2021, 3:22:40 PM
    Author     : OLTUSER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <%@include file="HeaderSet.jsp" %>
         
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <form action="LoginDao" method="POST">
            <table style="border: solid blue; border-spacing: 15px;opacity: 1; background-color: white">
                <tr><td>
                        <h3 style="orange">customer login</h3><br/>
                        <div align="right">
                            <input type="text" name="user" value="" placeholder="UserName" autofocus="" required="" /><br/><br/>
                            <input type="password" name="pass" value="" placeholder="Password" required=""/><br/><br/>
                        </div>
                        <div align="center">
                            <input type="submit" value="submit" style="background-color: yellow;color: red"/>
                        </div><br/><br/>
                        <a href="Registration.jsp" style="color: red">Create Account</a>
                    </td></tr>
            </table>
        </form>
    </center>
</body>
<%@include file="FooterSet.jsp" %>
</html>
