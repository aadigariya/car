/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
  import javax.servlet.*;
  import java.util.ArrayList;
import java.util.List;

import java.io.IOException;
import java.io.InputStream;
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
@WebServlet(urlPatterns = {"/feedback"})
public class feedback extends HttpServlet {

    private ServletConfig config;

  //Setting JSP page

  String page="feedbck.jsp";



      @Override
  public void init(ServletConfig config)

  throws ServletException{

 this.config=config;

 }

      @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response)

    throws ServletException,IOException
{

  

  PrintWriter out = response.getWriter();

  //Establish connection to MySQL database

  String connectionURL = "jdbc:derby://localhost:1527/carss";

  Connection connection
= null;

  ResultSet rs;

  response.setContentType("text/html");

  List dataList
= new ArrayList(); 

  try {

 // Load the database driver

  Class.forName("org.apache.derby.jdbc.ClientDriver");

  // Get a Connection to the database

  connection = java.sql.DriverManager.getConnection(connectionURL, "goo", "goo"); 

  //Select the data from the database

  String sql = "select * from COMMENT";

  Statement s = connection.createStatement();

  s.executeQuery (sql);

  rs = s.getResultSet();

  while (rs.next ()){

      
  //Add records into data list
 
   dataList.add(rs.getString("COMMENT"));
      dataList.add(rs.getString("NAME"));

   

 
 
  }

  rs.close ();

  s.close ();

  }catch(Exception e){

  System.out.println("Exception is ;"+e);

  }

  request.setAttribute("data",dataList);

  //Disptching request

  RequestDispatcher dispatcher = request.getRequestDispatcher(page);

  if (dispatcher != null){

  dispatcher.forward(request, response);

  } 

  }

}