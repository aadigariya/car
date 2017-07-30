<%-- 
    Document   : hoko
    Created on : 11 Jun, 2017, 5:37:41 PM
    Author     : AaDI
--%>

 <%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("ID");
 
String connectionURL = "jdbc:derby://localhost:1527/carss";
String user = "goo";
String pass = "goo";
 
Connection con = null;
 
try{
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    con = DriverManager.getConnection(connectionURL, user, pass);
    
    PreparedStatement ps = con.prepareStatement("select * from PHOTOS where ID=?");
    ps.setString(1, id);
    ResultSet rs = ps.executeQuery();
 
    if(rs.next()){
        Blob blob = rs.getBlob("IMAGE");
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