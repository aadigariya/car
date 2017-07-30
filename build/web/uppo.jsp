<%-- 
    Document   : uppo
    Created on : 12 Jun, 2017, 8:28:57 PM
    Author     : AaDI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Upload Image</title>
    </head>
    
    <body>
    
        <b>Upload | <a href="view.jsp">View</a></b><br/><br/>
        
        <form action="cmcm" method="post" enctype="multipart/form-data">
            <input type="file" name="image" required="required"/><br/><br/>
            <input type="submit"/>
        </form>
    </body>
</html>