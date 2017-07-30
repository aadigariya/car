<%-- 
    Document   : View
    Created on : 6 Jun, 2017, 6:30:03 PM
    Author     : AaDI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>View Image</title>
    </head>
    
    <body>
    
        <b>View | <a href="index.jsp">Upload</a></b><br/><br/>
        
		<%
		String J = request.getParameter("ID");
		%>
		<img src="r.jsp?ID=<%=J%>">
 
    </body>
</html>
