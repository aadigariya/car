<%-- 
    Document   : bmbm
    Created on : 12 Jun, 2017, 1:11:55 PM
    Author     : AaDI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Upload Image</title>
    </head>
    
    <body>
    
         
        <form action="cmcm" method="post" enctype="multipart/form-data">
             Name:<input type="text" name="gender"/><br/><br/>  
            Name:<input type="text" name="user"/><br/><br/>  
Password:<input type="password" name="password"/><br/><br/>  
Email Id:<input type="text" name="email"/><br/><br/> 
 mobile:<input type="text" name="mobile"/><br/><br/>  
 address:<input type="text" name="address"/><br/><br/>  
             <input type="file" name="image"  /><br/><br/>
            <input type="submit"/>
        </form>
    </body>
</html>