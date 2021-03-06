/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

 
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
@WebServlet(urlPatterns = {"/regaa"})
@MultipartConfig(maxFileSize = 16177216)
public class regaa extends HttpServlet {
 
   @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String connectionURL = "jdbc:derby://localhost:1527/carss";
		String user = "goo";
		String passw = "goo";
 
		int result = 0;
		Connection con = null;
		Part part = req.getPart("image");
                 String name = req.getParameter("name");
                         String pass = req.getParameter("pass");

        String email = req.getParameter("email");
  
		if(part != null){
			try{
				Class.forName("org.apache.derby.jdbc.ClientDriver");
			    con = DriverManager.getConnection(connectionURL, user, passw);
			    
			    PreparedStatement ps = con.prepareStatement("insert into STU(NAME,PASS,EMAIL,PHOTO) values(?,?,?,?)");
			    InputStream is = part.getInputStream();
                             ps.setString(1, name);
                                     ps.setString(2, pass);
 
        ps.setString(3, email);
  			    ps.setBlob(4, is);
			    result = ps.executeUpdate();
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
		}
		
		if(result > 0){
	    	resp.sendRedirect("RESULT.jsp?message=Image+Uploaded");
	    }
		else{
			resp.sendRedirect("RESULT.jsp?message=Some+Error+Occurred");
		}
	}
}