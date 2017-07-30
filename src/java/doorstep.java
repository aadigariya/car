/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author AaDI
 */
@WebServlet(urlPatterns = {"/doorstep"})
public class doorstep extends HttpServlet {

    @Override
 public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  
try( PrintWriter out = response.getWriter()) {  
    String n=request.getParameter("name");
    String p=request.getParameter("email");
    String e=request.getParameter("mobile");
     
     
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con=DriverManager.getConnection(
                "jdbc:derby://localhost:1527/carss","goo","goo");
        
        PreparedStatement ps=con.prepareStatement(
                "insert into DOORSTEPS(NAME,EMAIL,MOBILE) values(?,?,?)");
        
        ps.setString(1,n);
        ps.setString(2,p);
        ps.setString(3,e);
         
        int i=ps.executeUpdate();
        if(i>0)
            out.print("You are successfully registered...");
        
          
    }catch (ClassNotFoundException | SQLException e2) {System.out.println(e2);}
      
          }  
  
} 