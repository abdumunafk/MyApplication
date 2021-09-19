<%-- 
    Document   : Registration
    Created on : Sep 1, 2021, 11:33:32 AM
    Author     : MAHESHKUMAR R
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <%@include file="HeaderSet.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E Library</title>
    </head>
    <body>    
    <center>
        
         <h2 style="color: chartreuse">Registration Page</h2>
         <form action="Registrationdao" method="post">
             <table style="border: solid black; border-spacing: 18px; width: 17%; opacity: 1; background-color: wheat">
                 <tr><td>
            User Name:<br><input type="text" name="username" value="" required="" autofocus=""/><br><br/>
            
            E-Mail:<br/><input type="text" name="email" value="" required="" /><br/><br/>
            
            Password:<br><input type="password" name="npass" value="" required=""/><br><br>
              
            Retype Password:<br><input type="password" name="rpass" value="" required=""/><br><br>
            
            Phone:<br><input type="text" name="phone" value="" required=""/><br><br>

            <input type="submit" value="Submit" />&nbsp;&nbsp;
            <input type="reset" value="Reset" />
                         </td></tr>
             </table>
        </form>
         <a href="LoginPage.jsp" style="color: red">Login Page</a>
        </center>
    </body>
    <%@include file="FooterSet.jsp" %>
</html>
