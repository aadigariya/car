<%-- 
    Document   : exmpl
    Created on : 28 Jul, 2017, 9:00:00 PM
    Author     : AaDI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     <script>
   $(function () {
  $('.nav-toggle').on('click', function (e) {
    $('.sideNav').toggleClass('open');
    
    e.stopPropagation();
    return false;
  });
  
  $('*:not(.nav-toggle)').on('click', function () {
    $('.sideNav').removeClass('open');
  });
  
});
    </script>
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
        
        #main {
    transition: margin-left .5s;
    padding: 16px;
}
        
  .sideNav {
  position: fixed;
  top: 3em;
  left: 0;
  width: 30%;
  height: 100%;
  background-color:black;
  text-align: left;
  overflow: auto;
  transform: translateX(-100%);
  -webkit-transform: translateX(-100%);
  -ms-transform: translateX(-100%);
  transform: translateX(-100%);
  -webkit-transition: -webkit-transform 0.6s ease;
  transition: transform 0.6s ease;
}

.sideNav.open {
  transform: translateX(0);
  -webkit-transform: translateX(0);
  -ms-transform: translateX(0);
  transform: translateX(0);
}
    </style>
    </head>
    <body>
  <div>
  <button class="nav-toggle">Menu</button>
  <nav class="sideNav">
    <ul>
      <li><form action="${pageContext.request.contextPath}/adminlogout" method="post"><h3><b><font color="yellow">WELCOME,<%=session.getAttribute("NAME")%></font></b></h3>
       <button    type="submit" value="adminlogout"  class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Signout</button>
  </form></li>
  <li> <h3><b><a href="sidbar.jsp">Admin home</a></b></h3></li>
  <li>  <a href="<%=request.getContextPath()%>/admins">Admins info</a></li>
      <li>...</li>
    </ul>
  </nav>
      
      <div id="main">
  
  <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; CLICK HERE</span>
  <div class="jumbotron">
  <div class="container text-center">
    <h1>WELCOME TO ADMIN CONTROL PANEL</h1>      
    <p>ALL ABOUT OUR ADMINS,USERS,DOORSTEP SERVICES</p>
  </div>
</div>
</div>
</div>
    </body>
</html>
