/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 *
 * @author AaDI
 */
@WebServlet(urlPatterns = {"/adminlogin"})
public class adminlogin extends HttpServlet {

  public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String n=request.getParameter("NAME");
                
		String p=request.getParameter("PASSWORD");
 		if(loginadmin.validate(n, p)){
                    HttpSession session=request.getSession();
		session.setAttribute("NAME",n);
                request.getSession().setAttribute("NAME",n);
                    
  			RequestDispatcher rd=request.getRequestDispatcher("sidbar.jsp");
			rd.forward(request,response);
                        
		}
		else{
			out.print("Sorry username or password error");
			RequestDispatcher rd=request.getRequestDispatcher("home3.jsp");
			rd.include(request,response);
		}
		
		out.close();
                
	}

}
