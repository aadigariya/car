<%-- 
    Document   : retrieve
    Created on : 6 Jun, 2017, 7:37:18 PM
    Author     : AaDI
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
          pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
 <html>
    <head>
       </head>
    <body>
     <%@ page import="java.io.*"%>
 <%@ page import="java.sql.*"%>
 <%@ page import="java.util.*"%>
  <%@ page import="java.text.*"%>
 <%@ page import="javax.servlet.*"%>
 <%@ page import="javax.servlet.http.*"%>
 <%@ page import="javax.servlet.http.HttpSession"%>
 <%@ page language="java"%>
 <%@ page session="true"%>
 <%
   try{
    //PrintWriter out=response.getWriter();

  out.println("Retrieve Image Example!");
  String driverName = "org.apache.derby.jdbc.ClientDriver";
  String url = "jdbc:derby://localhost:1527/carss";
  String dbName = "GOO";
  String userName = "goo";
     String password = "goo";
       Connection con = null;
       Class.forName(driverName);
      con = DriverManager.getConnection(url+dbName,userName,password);
        Statement st = con.createStatement();
     PreparedStatement pre1 = con.prepareStatement("select * from IMAGES where id="+1);
 ResultSet rs1=pre1.executeQuery();
while(rs1.next())   
 {byte[] bytearray1 = new byte[4096];  
           int size1=0;  
          InputStream sImage1;  
            sImage1 = rs1.getBinaryStream(2);  
            response.reset();  
           response.setContentType("image/png");  
           response.addHeader("Content-Disposition","filename=1496758717466.png");  
           while((size1=sImage1.read(bytearray1))!= -1 )  
             {  
               response.getOutputStream().write(bytearray1,0,size1);  
             }  
           response.flushBuffer(); 
          sImage1.close();  
           rs1.close();  
        }
  pre1.close();
  con.close();  
  }
 catch (Exception e){
         out.println(e.getMessage());
            }
%>
  </body>
    </html>