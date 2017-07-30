<%-- 
    Document   : newjsp2GETIMG
    Created on : 12 Jun, 2017, 1:18:27 PM
    Author     : AaDI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
 
String connectionURL = "jdbc:derby://localhost:1527/carss";
String user = "goo";
String pass = "goo";
 
Connection con = null;
 
try{
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    con = DriverManager.getConnection(connectionURL, user, pass);
    
    PreparedStatement ps = con.prepareStatement("select * from OLX where ID=?");
    ps.setString(1, id);
    ResultSet rs = ps.executeQuery();
 
    if(rs.next()){
        Blob blob = rs.getBlob("PHOTO");
        byte byteArray[] = blob.getBytes(1, (int)blob.length());
 
        response.setContentType("image/jpg");
        OutputStream os = response.getOutputStream();
        os.write(byteArray);
        os.flush();
        os.close();
    }
}
catch(Exception e){
    e.printStackTrace();
}   
finally{
    if(con != null){
        try{
            con.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
}
%>