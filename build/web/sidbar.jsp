<%-- 
    Document   : sidbar
    Created on : 25 Jul, 2017, 7:37:05 PM
    Author     : AaDI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
 
            <style>
                  body {
  font-family: 'Pacifico', cursive;
  font-size: 12px;
  font-weight: 400;
  color: #4f5d6e;
  position: relative;
  background:black;

    transition: background-color .5s;
}
                   #mySidenav a {
    position: absolute;
    left: -80px;
    transition: 0.3s;
    padding: 5px;
    width: 100px;
    text-decoration: none;
    font-size: 20px;
    color: white;
    border-radius: 0 5px 5px 0;
}

#mySidenav a:hover {
    left: 0;
}

 

#home {
    top: 200px;
    background-color: #2196F3;
}

#info {
    top: 280px;
    background-color: #f44336;
}

#details {
    top: 360px;
    background-color: #555
        
}

#doorstep {
    top: 440px;
    background-color: #555
}
</style>
    </head>
    <body>
 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      
        <a class="navbar-brand" href="#"><h3><font color="yellow">ADMIN PANEL</font></h3></a></div>
      <ul class="nav navbar-nav navbar-right">
            <li><form action="${pageContext.request.contextPath}/adminlogout" method="post"><h3><b><font color="yellow">WELCOME,<%=session.getAttribute("NAME")%></font></b></h3>
                    <button    type="submit" value="adminlogout"  class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Signout</button>
                  </form></li> 
      </ul>
    </div>
    
  
</nav>
     
<div id="main">
  
   <div class="jumbotron">
  <div class="container text-center">
    <h1>WELCOME TO ADMIN CONTROL PANEL</h1>      
    <p>ALL ABOUT OUR ADMINS,USERS,DOORSTEP SERVICES</p>
  </div>
</div>
</div>

 
<div id="mySidenav" class="sidenav">
   <a href="sidbar.jsp"  id="home">Admin home</a>
      <a href="<%=request.getContextPath()%>/admins" id="info">Admins info</a>

  <a href="<%=request.getContextPath()%>/userinfo" id="details">Users details</a>
   <a href="<%=request.getContextPath()%>/doorstepss" id="doorstep">Doorstep service users</a>
</div>

  </body>
</html>
