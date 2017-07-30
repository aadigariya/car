<%-- 
    Document   : RESULT
    Created on : 12 Jun, 2017, 1:16:35 PM
    Author     : AaDI
--%>

<%
String message = request.getParameter("message");
if(message != null){
	out.print(message);
}
%>