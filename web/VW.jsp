<%-- 
    Document   : VW
    Created on : 12 Jun, 2017, 1:17:04 PM
    Author     : AaDI
--%>

 <%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%>
<%@ page import="java.util.*,java.text.*" %>

<% Blob image = null;

Connection con = null;

byte[ ] imgData = null ;

Statement stmt = null;

ResultSet rs = null;

try {

Class.forName("org.apache.derby.jdbc.ClientDriver");

con = DriverManager.getConnection("jdbc:derby://localhost:1527/carss","goo","goo");

stmt = con.createStatement();

rs = stmt.executeQuery("select IMAGE from PHOTOS where ID = '2'");

if (rs.next()) {

image = rs.getBlob(1);

imgData = image.getBytes(1,(int)image.length());

} else {

out.println("Display Blob Example");

out.println("image not found for given id>");

return;

}

// display the image

response.setContentType("image/jpg");

OutputStream o = response.getOutputStream();

o.write(imgData);

o.flush();

o.close();

} catch (Exception e) {

out.println("Unable To Display image");

out.println("Image Display Error=" + e.getMessage());

return;

} finally {

try {

rs.close();

stmt.close();

con.close();

} catch (SQLException e) {

e.printStackTrace();

}

}

%> 