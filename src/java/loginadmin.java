/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
@WebServlet(urlPatterns = {"/loginadmin"})
public class loginadmin extends HttpServlet {

    public static boolean validate(String NAME,String PASSWORD){
boolean status=false;
try{
	Class.forName("org.apache.derby.jdbc.ClientDriver");
	Connection con=java.sql.DriverManager.getConnection("jdbc:derby://localhost:1527/carss","goo","goo");
	
	PreparedStatement ps=con.prepareStatement("select * from ADMINS where NAME=? and PASSWORD=?");
	ps.setString(1,NAME);
	ps.setString(2,PASSWORD);
	
	ResultSet rs=ps.executeQuery();
	status=rs.next();
	
	
}
catch(ClassNotFoundException | SQLException e){System.out.println(e);}
return status;
}
}
