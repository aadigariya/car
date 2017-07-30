<%-- 
    Document   : admins
    Created on : 25 Jul, 2017, 8:40:43 PM
    Author     : AaDI
--%>
<%@page language="java" import="java.util.*" %>

<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Bootstrap Example</title>
    <%@ include file="WEB-INF/tags/boot2.jsp"%>  
     <%@ include file="WEB-INF/tags/carscript.jsp"%>  

  <%@ include file="WEB-INF/tags/angularr.jsp"%>  
  
 
</head>
<body>
        <%@ include file="WEB-INF/tags/nav.jsp"%>  
  

<div id="main">
     
 
  
 <div class="container">
  <div class="jumbotron">
  <div class="container text-center">
    <h1>all user feedbacks</h1>      
    <p>WELCOME TO FEEDBACK SECTION</p>
  </div>
</div>
    
     <div class="list-group">
         
          
         
    <%Iterator itr;%>
<% List data= (List)request.getAttribute("data");
for (itr=data.iterator(); itr.hasNext(); )
{
%>
     
     <a class="list-group-item list-group-item-info"><%=itr.next()%></a>
        <a class="list-group-item  list-group-item-warning"><%=itr.next()%></a>

       
  
      <%}%>
    
 </div> 
</div>
 
<footer class="container-fluid text-center">
  <p>@copyright- mr. anand gariya</p>
</footer>
</div>
</body>
</html>