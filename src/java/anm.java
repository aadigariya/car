/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 import java.sql.*;  
 
/**
 *
 * @author AaDI
 */
@WebServlet(urlPatterns = {"/anm"})
public class anm extends HttpServlet {

 @Override
 public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  
try( PrintWriter out = response.getWriter()) {  
    String n=request.getParameter("userName");
    String p=request.getParameter("userPass");
    String e=request.getParameter("userEmail");
    String c=request.getParameter("userCountry");
     
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con=DriverManager.getConnection(
                "jdbc:derby://localhost:1527/carss","goo","goo");
        
        PreparedStatement ps=con.prepareStatement(
                "insert into REGISTERUSER values(?,?,?,?)");
        
        ps.setString(1,n);
        ps.setString(2,p);
        ps.setString(3,e);
        ps.setString(4,c);
        
        int i=ps.executeUpdate();
        if(i>0)
            out.print("You are successfully registered...");
        
          
    }catch (ClassNotFoundException | SQLException e2) {System.out.println(e2);}
      
          }  
  
} 
 