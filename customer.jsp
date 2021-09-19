<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <%@include file="HeaderSet.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
function sample()
{
for(var i=0; i < document.form1.frUIt.length; i++)
{
if(!document.f.Mobile[i].checked)
{
alert("Error");
return false;
}
else
{
alert("Click OK to display your choice");
return true;
}
}
}
</script>
<title>Moblie Service</title>
</head>
<body>
    <div align='center'>
    <table style="border-spacing: 15px;  background-color: darkgray; opacity: 1"><tr><td>
<form name="f" onsubmit="sample()">
    <h3 style="color: blue">Select your Mobile Service</h3>
    
        <input type="checkbox" name="Mobile" value="nokia java phone" value="ON"/>nokia java phone<br>
        <input type="checkbox" name="Mobile" value="nokia 3310" value="ON"/>nokia 3310<br>
        <input type="checkbox" name="Mobile" value="nokia 6.1" value="ON" />nokia 6.1<br>
        <input type="checkbox" name="Mobile" value="nokia g20" value="ON" />nokia g20<br>
        <input type="checkbox" name="Mobile" value="nokia 6.1 plus" value="ON" />nokia 6.1 plus<br>
        <input type="checkbox" name="Mobile" value="nokia 150" value="ON" />nokia 150<br>
        <input type="checkbox" name="Mobile" value="nokia 1032" value="ON" />nokia 1032<br>
        <input type="checkbox" name="Mobile" value="nokia 1190" value="ON" />nokia 1190<br>
        <input type="checkbox" name="Mobile" value="nokia he319" value="ON" />nokia he319<br>
     Date : <input type="date" name="Mobile" required="">

     <p><input type="submit" value="submit" style="color: white; background-color: blue"/>
</form>
<%
String s[]= request.getParameterValues("Mobile");
if(s != null)
{
%>
<h4 style="color: blue">Service's Selected</h4>
<ul>
<%
for(int i=0; i<s.length; i++)
{
%>
<li><%=s[i]%></li>
<%
}
%>
</ul>
<%
}
%>
<a href="PlaceOrder.jsp"><input type="submit" value="Place your Service" style="color: white; background-color: blue"/></a>
            </td></tr></table></div>
        </body>
        <%@include file="FooterSet.jsp" %>
</html>
