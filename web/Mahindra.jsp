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
    
      .thumbnail {
      padding: 0 0 15px 0;
      border:none;
      border-radius: 0;
  }
  .thumbnail img {
      width: 120%;
    height:220px;
 

      margin-bottom: 10px;
  }
 
      body {
  font-family: 'Pacifico', cursive;
  font-size: 13px;
  font-weight: 400;
  color: #4f5d6e;
  position: relative;
  background:black;
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
    <br>
    <br>
    <br>
    <br>
    <br>

    
    

  <div class="container-fluid text-center">
  
  <h2>MAHINDRA</h2>
  <div class="row text-center">
    <div class="col-sm-12">
        <div class="col-sm-1">
        </div>
          <div class="col-sm-10" >
         <div class="container-fluid text-center ">
  
   
       <div class="col-sm-4">
      <div class="thumbnail">
          <img src="Image/mahindra/kuv10 (1).jpg" alt="Paris" width="400" height="300">
          <p><strong>Mahindra KUV100</strong></p>
        <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
        <h5> Diesel | 2017</h5>
      </div>
    </div>
        <div class="col-sm-4">
      <div class="thumbnail">
          <img src="Image/mahindra/thar (1).jpg" alt="Paris" width="400" height="300">
        <p><strong>Mahindra Thar</strong></p>
 <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
 <h5> Diesel | 2017</h5>
      </div>
    </div>
   <div class="col-sm-4">
      <div class="thumbnail">
          <img src="Image/mahindra/bolero (1).jpg" alt="Paris" width="400" height="300">
         <p><strong>Mahindra Bolero</strong></p>
        <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
        <h5> Diesel | 2017</h5>
      </div>
    </div> <div class="col-sm-4">
      <div class="thumbnail">
          <img src="Image/mahindra/vertito (1).jpg" alt="Paris" width="400" height="300">
         <p><strong>Mahindra Verito Vibe CS</strong></p>
        <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
      <h5> Diesel | 2017</h5>
      </div>
    </div>
   <div class="col-sm-4">
      <div class="thumbnail">
          <img src="Image/mahindra/e20  (1).jpg" alt="Paris" width="400" height="300">
         <p><strong>Mahindra e2o Plus</strong></p>
        <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
      <h5> Diesel | 2017</h5>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
            <img src="Image/mahindra/vertito (12).jpg" alt="Paris" width="400" height="300">

         <p><strong>Mahindra Verito</strong></p>
        <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
      <h5> Diesel | 2017</h5>
      </div>
    </div>
   <div class="col-sm-4">
      <div class="thumbnail">
          <img src="Image/mahindra/tuv30 (1).jpg" alt="Paris" width="400" height="300">
         <p><strong>Mahindra TUV300</strong></p>
        <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
      <h5> Diesel | 2017</h5>
      </div>
    </div>
   
   <div class="col-sm-4">
      <div class="thumbnail">
          <img src="Image/mahindra/xylo (1).jpg" alt="Paris" width="400" height="300">
          <p><strong>Mahindra Xylo</strong></p>
        <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
              <h5> Diesel | 2017</h5>

      </div>
    </div>
 </div>
  </div>
    </div>
      <div class="col-sm-1"></div>
  </div>
  </div>
</body>
</html>
