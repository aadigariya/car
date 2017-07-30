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

/**
 *
 * @author AaDI
 */
@WebServlet(urlPatterns = {"/fedbck"})
public class fedbck extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
	
        String cmnt = request.getParameter("coment");
                String user = request.getParameter("name");

         
        try{
        
        //loading drivers for mysql
        Class.forName("org.apache.derby.jdbc.ClientDriver");

	//creating connection with the database 
          Connection  con=java.sql.DriverManager.getConnection
                     ("jdbc:derby://localhost:1527/carss","goo","goo");

        PreparedStatement ps=con.prepareStatement
                  ("insert into COMMENT(COMMENT,NAME) values(?,?)");

        ps.setString(1, cmnt);
                ps.setString(2, user);

        
        int i=ps.executeUpdate();
        
         if(i>0){
				response.sendRedirect("home2.jsp");
			}
			else{
				response.sendRedirect("home2.jsp");
			}
        
        }
        catch(Exception se)
        {
            se.printStackTrace();
        }
	
      }
  }