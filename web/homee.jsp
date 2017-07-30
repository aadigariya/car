<%-- 
    Document   : home
    Created on : 2 May, 2017, 9:10:47 AM
    Author     : AaDI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
  <title>CarAddiction.com</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script>
$(document).ready(function(){
    $("#myBtn").click(function(){
        $("#myModal").modal();
    });
});
$(document).ready(function(){
    $("#myBt").click(function(){
        $("#myModall").modal();
    });
});
$(document).ready(function(){
  $('.dropdown-submenu a.test').on("click", function(e){
    $(this).next('ul').toggle();
    e.stopPropagation();
    e.preventDefault();
  });
});
</script>

  <style>
       .dropdown-submenu {
    position: relative;
}

.dropdown-submenu .dropdown-menu {
    top: 0;
    left: 100%;
    margin-top:-1px;
}
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 50;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    
  .carousel-inner img {
       width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }

  .modal-header, h4, .close {
      background-color: #5cb85c;
      color:white !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-footer {
      background-color: #f9f9f9;
  }
 
  </style>
</head>
<body>
    
    

 <div class="container">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
 <a class="navbar-brand" href="home.jsp" target="blank">Caraddiction</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        
         <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">New Cars <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Search Cars</a></li>
          <li><a href="#">Upcoming cars</a></li>
          <li><a href="#">Offer and discount</a></li>
           <li><a href="#">Caraddiction Score</a></li>
            <li><a href="#">On Road Price</a></li>
             <li><a href="#">Car videos</a></li>
        </ul>
      </li>
      
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Used cars<span class="caret"></span></a>
        <ul class="dropdown-menu">
             <li class="dropdown-submenu">
            <a class="test" href="#">used car<span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="#">by city</a></li>
              <li><a href="#">by price</a></li>
            </ul>
          </li>
          <li><a href="#">Used cars validation</a></li>
          <li><a href="#">Used car research</a></li>
        </ul>
      </li>
        
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Reviews and news<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Car News</a></li>
          <li><a href="#">User Review</a></li>
          <li><a href="#">Road Test</a></li>
          <li><a href="#">Write Review</a></li>
        </ul>
      </li>
      
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Special <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Research <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">blog</a></li>
          <li><a href="#">question and answer</a></li>
          <li><a href="wallpaper.jsp">Image gallery</a></li>
        </ul>
      </li>
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Dealers<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
           <button type="button" class="btn btn-default btn-lg" id="myBtn">login</button>
      </ul>
        <ul class="nav navbar-nav navbar-right">
           <button type="button" class="btn btn-default btn-lg" id="myBt">Signup</button>
      </ul>
</nav>
</div>
     
 <!-- Modal -->
  <div class="modal fade" id="myModall" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Login</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="text" class="form-control" id="usrname" placeholder="Enter email">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="text" class="form-control" id="psw" placeholder="Enter password">
            </div>
            <div class="checkbox">
              <label><input type="checkbox" value="" checked>Remember me</label>
            </div>
              <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Login</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          <p>Not a member? <a href="#">Sign Up</a></p>
          <p>Forgot <a href="#">Password?</a></p>
        </div>
      </div>
      </div>
    </div>
 <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Login</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="text" class="form-control" id="usrname" placeholder="Enter email">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="text" class="form-control" id="psw" placeholder="Enter password">
            </div>
            <div class="checkbox">
              <label><input type="checkbox" value="" checked>Remember me</label>
            </div>
              <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Login</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          <p>Not a member? <a href="#">Sign Up</a></p>
          <p>Forgot <a href="#">Password?</a></p>
        </div>
      </div>
  </div>
 </div>
 <div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="c.jpg" alt="Los Angeles" style="width:100%;">
        <div class="carousel-caption">
          <h3>honda</h3>
          <p>honda is always so much fun!</p>
        </div>
      </div>

      <div class="item">
        <img src="b.jpg" alt="Chicago" style="width:100%;">
        <div class="carousel-caption">
          <h3>nano</h3>
          <p>just in 400000!</p>
        </div>
      </div>
    
      <div class="item">
        <img src="c.jpg" alt="New York" style="width:100%;">
        <div class="carousel-caption">
          <h3>hammer</h3>
          <p>just in 2000000000000</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

      
      
  
<div class="container text-center">    
  <h3>Popular New Cars</h3><br>
 
        <div class="container">
 
  <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="a.jpg" target="_blank">
          <img src="e.jpg" alt="Lights" style="width:100%">
          <div class="caption">
            <p>best car 2.</p>
          </div>
        </a>
      </div>
    </div>
      <div class="col-md-4">
      <div class="thumbnail">
        <a href="a.jpg" target="_blank">
          <img src="e.jpg" alt="Lights" style="width:100%">
          <div class="caption">
            <p>best car 2.</p>
          </div>
        </a>
      </div>
    </div>
      <div class="col-md-4">
      <div class="thumbnail">
        <a href="a.jpg" target="_blank">
          <img src="e.jpg" alt="Lights" style="width:100%">
          <div class="caption">
            <p>best car 2.</p>
          </div>
        </a>
      </div>
    </div>
      <div class="col-md-4">
      <div class="thumbnail">
        <a href="a.jpg" target="_blank">
          <img src="e.jpg" alt="Lights" style="width:100%">
          <div class="caption">
            <p>best car 2.</p>
          </div>
        </a>
      </div>
    </div>
      <div class="col-md-4">
      <div class="thumbnail">
        <a href="a.jpg" target="_blank">
          <img src="e.jpg" alt="Lights" style="width:100%">
          <div class="caption">
            <p>best car 2.</p>
          </div>
        </a>
      </div>
    </div>
      <div class="col-md-4">
      <div class="thumbnail">
        <a href="a.jpg" target="_blank">
          <img src="e.jpg" alt="Lights" style="width:100%">
          <div class="caption">
            <p>best car 2.</p>
          </div>
        </a>
      </div>
    </div>
      <div class="col-md-4">
      <div class="thumbnail">
        <a href="a.jpg" target="_blank">
          <img src="e.jpg" alt="Lights" style="width:100%">
          <div class="caption">
            <p>best car 2.</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="b.jpg" target="_blank">
          <img src="b.jpg" alt="Nature" style="width:100%">
          <div class="caption">
            <p>best car 1</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="c.jpg" target="_blank">
          <img src="c.jpg" alt="Fjords" style="width:100%">
          <div class="caption">
            <p>best car in 3.</p>
          </div>
        </a>
      </div>
    </div>
  </div>
</div>
  <div class="container text-center">    
  <h3>Popular Used Cars</h3><br>
 
        <div class="container">
 <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="a.jpg" target="_blank">
          <img src="e.jpg" alt="Lights" style="width:100%">
          <div class="caption">
            <p>best car 2.</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="b.jpg" target="_blank">
          <img src="b.jpg" alt="Nature" style="width:100%">
          <div class="caption">
            <p>best car 1</p>
          </div>
        </a>
      </div>
    </div>
       <div class="col-md-4">
      <div class="thumbnail">
        <a href="b.jpg" target="_blank">
          <img src="b.jpg" alt="Nature" style="width:100%">
          <div class="caption">
            <p>best car 1</p>
          </div>
        </a>
      </div>
    </div>
       <div class="col-md-4">
      <div class="thumbnail">
        <a href="b.jpg" target="_blank">
          <img src="b.jpg" alt="Nature" style="width:100%">
          <div class="caption">
            <p>best car 1</p>
          </div>
        </a>
      </div>
    </div>
       <div class="col-md-4">
      <div class="thumbnail">
        <a href="b.jpg" target="_blank">
          <img src="b.jpg" alt="Nature" style="width:100%">
          <div class="caption">
            <p>best car 1</p>
          </div>
        </a>
      </div>
    </div>
       <div class="col-md-4">
      <div class="thumbnail">
        <a href="b.jpg" target="_blank">
          <img src="b.jpg" alt="Nature" style="width:100%">
          <div class="caption">
            <p>best car 1</p>
          </div>
        </a>
      </div>
    </div>
       <div class="col-md-4">
      <div class="thumbnail">
        <a href="b.jpg" target="_blank">
          <img src="b.jpg" alt="Nature" style="width:100%">
          <div class="caption">
            <p>best car 1</p>
          </div>
        </a>
      </div>
    </div>
       <div class="col-md-4">
      <div class="thumbnail">
        <a href="b.jpg" target="_blank">
          <img src="b.jpg" alt="Nature" style="width:100%">
          <div class="caption">
            <p>best car 1</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="delhi.jsp" target="_blank">
          <img src="c.jpg" alt="Fjords" style="width:100%">
          <div class="caption">
            <p>best car in 3.</p>
          </div>
        </a>
      </div>
    </div>
  </div>
</div>

    </div>
  </div>
</div><br>

<div class="container-fluid">
   
  <div class="row">
    <div class="col-sm-4" style="background-color:brown;"> 
    <h4>OVERVIEW</h4>
<a href="/cert/default.asp">About us</a><br>
<a href="/cert/default.asp">Feedback</a><br>
<a href="/cert/default.asp">Contact us</a><br>
<a href="/cert/default.asp">FAQs</a><br>

</div>
    <div class="col-sm-4" style="background-color:brown;"> 
    <h4>Online services</h4>
<a href="/cert/default.asp">Roadside Assistance</a><br>
<a href="/cert/default.asp">trustmarket used cars</a><br>
<a href="/cert/default.asp">Car Accesories</a><br>
<a href="/cert/default.asp">advertise with us</a><br>

</div>
    <div class="col-sm-4" style="background-color:brown;">
        <h4>OTHERS</h4>
<a href="/cert/default.asp">Careers</a><br>
<a href="/cert/default.asp">Customer Care</a><br>
<a href="/cert/default.asp">Privacy Policy</a><br>
<a href="/cert/default.asp">Terms & Condition</a><br>

  </div>
</div>
</div>

   
    <footer><a> @copyright caraddiction.com</a>


</body>
</html>
