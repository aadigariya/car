<%-- 
    Document   : newjsp2VWIMG
    Created on : 12 Jun, 2017, 1:17:30 PM
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
		String id = request.getParameter("ID");
                
		%>
                <a><img src="VWWIMG.jsp?id=3"></a>
                
 
    </body>
</html>