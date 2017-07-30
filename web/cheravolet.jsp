<%-- 
    Document   : search
    Created on : 2 May, 2017, 5:47:16 PM
    Author     : AaDI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html lang="en">
<head>
  <title>CarAddiction</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
$('#myCarousel').carousel({interval:10000});
$('#media-up').carousel({interval:30000});
$('#media-xs').carousel({interval:15000});
$('#media-up').carousel({interval:30000});
$('#media-xss').carousel({interval:15000});

 
</script>
  <style>
      .bg-grey {
      background-color: #f6f6f6;
  }
      .thumbnail {
      padding: 0 0 15px 0;
      border:none;
      border-radius: 0;
  }
  .thumbnail img {
      width: 100%;
    height:250px;
    width:100%;


      margin-bottom: 10px;
  }
 
      body {
  font-family: 'Pacifico', cursive;
  font-size: 13px;
  font-weight: 400;
  color: #4f5d6e;
  position: relative;
  background:darkkhaki;
}


nav {
  margin-top: 0px;
  box-shadow: 5px 4px 10px #000;
 }
      
      /*submenu*/
           .dropdown-submenu {
    position: relative;
}

.dropdown-submenu .dropdown-menu {
    top: 0;
    left: 100%;
    margin-top:-1px;
}
      /*modal*/
      
      .modal-header, .close {
      background-color: #5cb85c;
      color:white !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-footer {
      background-color: #f9f9f9;
  }
  
    
    
    /* Add a gray background color and some padding to the footer */
    
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }
  .carousel-caption {
   position:absolute;
   top: 80px
}

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }
  </style>
</head>
<body>

     <%@ include file="WEB-INF/tags/nav.jsp"%>  

    <br>
    
    
    <div class="container-fluid">
        <br>
        <br>
        <br>
        <br>
 
  <div class="row">
    <div class="col-sm-2" style="background-color:lavender;">.col-sm-4</div>
    <div class="col-sm-10" style="background-color:lavenderblush;">
         <div class="container-fluid text-center ">
  
  <h4>Used car by state</h4>
  
       <div class="col-sm-4">
      <div class="thumbnail">
        <img src="delhi.jpg" alt="Paris" width="400" height="300">
        <p><strong>Chevrolet Tavera</strong></p>
        <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
        <h5> Diesel | 2017</h5>
      </div>
    </div>
        <div class="col-sm-4">
      <div class="thumbnail">
        <img src="delhi.jpg" alt="Paris" width="400" height="300">
        <p><strong>Chevrolet Spark</strong></p>
 <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
 <h5> Diesel | 2017</h5>
      </div>
    </div>
   <div class="col-sm-4">
      <div class="thumbnail">
        <img src="delhi.jpg" alt="Paris" width="400" height="300">
        <p><strong>Chevrolet Beat</strong></p>
        <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
        <h5> Diesel | 2017</h5>
      </div>
    </div> <div class="col-sm-4">
      <div class="thumbnail">
        <img src="delhi.jpg" alt="Paris" width="400" height="300">
        <p><strong>Chevrolet Sail Hatchback</strong></p>
        <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
      <h5> Diesel | 2017</h5>
      </div>
    </div>
   <div class="col-sm-4">
      <div class="thumbnail">
        <img src="delhi.jpg" alt="Paris" width="400" height="300">
        <p><strong>Chevrolet Sail</strong></p>
        <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
      <h5> Diesel | 2017</h5>
      </div>
    </div>
   <div class="col-sm-4">
      <div class="thumbnail">
        <img src="delhi.jpg" alt="Paris" width="400" height="300">
        <p><strong>Chevrolet Enjoy</strong></p>
        <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
      <h5> Diesel | 2017</h5>
      </div>
    </div>
   <div class="col-sm-4">
      <div class="thumbnail">
        <img src="delhi.jpg" alt="Paris" width="400" height="300">
        <p><strong>Chevrolet Cruze</strong></p>
        <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
      <h5> Diesel | 2017</h5>
      </div>
    </div>
   <div class="col-sm-4">
      <div class="thumbnail">
        <img src="delhi.jpg" alt="Paris" width="400" height="300">
        <p><strong> Tata Venture</strong></p>
        <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
              <h5> Diesel | 2017</h5>
     </div>
    </div>
   <div class="col-sm-4">
      <div class="thumbnail">
        <img src="delhi.jpg" alt="Paris" width="400" height="300">
        <h2> <u><b>Tata Zest</b></u></h2>
        <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
              <h5> Diesel | 2017</h5>

      </div>
    </div>
 </div>
  </div>
    </div>
    </div>
  </body>
</html>
