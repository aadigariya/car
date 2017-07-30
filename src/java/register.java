/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
  
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
 
 
@WebServlet(urlPatterns = {"/register"})
public class register extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
	
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        try{
        
        //loading drivers for mysql
        Class.forName("org.apache.derby.jdbc.ClientDriver");

	//creating connection with the database 
          Connection  con=DriverManager.getConnection
                     ("jdbc:derby://localhost:1527/carss","goo","goo");

        PreparedStatement ps=con.prepareStatement
                  ("insert into STU(NAME,PASS,EMAIL) values(?,?,?)");

        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, pass);
        int i=ps.executeUpdate();
        
         if(i>0){
				response.sendRedirect("home.jsp");
			}
			else{
				response.sendRedirect("verna.jsp");
			}
        
        }
        catch(Exception se)
        {
            se.printStackTrace();
        }
	
      }
  }