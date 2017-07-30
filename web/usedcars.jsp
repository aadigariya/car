<%-- 
    Document   : filto
    Created on : 4 Jun, 2017, 2:29:37 PM
    Author     : AaDI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <title>CarAddiction</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <%@ include file="WEB-INF/tags/angularr.jsp"%>  

      <style>
             body {
  font-family: 'Pacifico', cursive;
  font-size: 12px;
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
  .navbar-nav > li{
  padding-left:5px;
  padding-right:5px;
}
   

.gallery-title
{
    font-size: 36px;
    color: #42B32F;
    text-align: center;
    font-weight: 500;
    margin-bottom: 70px;
}
.gallery-title:after {
    content: "";
    position: absolute;
    width: 7.5%;
    left: 46.5%;
    height: 45px;
    border-bottom: 1px solid #5e5e5e;
}
 
.filter-button:hover
{
    font-size: 18px;
    border: 1px solid #42B32F;
    border-radius: 5px;
    text-align: center;
    color: #ffffff;
    background-color: #42B32F;

}
.btn-default:active .filter-button:active
{
    background-color: #42B32F;
    color: white;
}

.port-image
{
    width: 100%;
}

.gallery_product
{
    margin-bottom: 30px;
}
</style>

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
    $("#myBtnn").click(function(){
        $("#myModalll").modal();
    });
});
$(document).ready(function(){
    $("#mybotn").click(function(){
        $("#myModalo").modal();
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

 
    $(document).ready(function(){

    $(".filter-button").click(function(){
        var value = $(this).attr('data-filter');
        
        if(value == "all")
        {
            //$('.filter').removeClass('hidden');
            $('.filter').show('1000');
        }
        else
        {
//            $('.filter[filter-item="'+value+'"]').removeClass('hidden');
//            $(".filter").not('.filter[filter-item="'+value+'"]').addClass('hidden');
            $(".filter").not('.'+value).hide('3000');
            $('.filter').filter('.'+value).show('3000');
            
        }
    });
    
    if ($(".filter-button").removeClass("active")) {
$(this).removeClass("active");
}
$(this).addClass("active");

}); 
  </script>
      </head>

    <body>
    <%@ include file="WEB-INF/tags/nav.jsp"%>  

 
        <div class="container">
        <div class="row">
        <div class="gallery  col-sm-12 ">
            
            
            
            
            
            
            <h1 class="gallery-title">all used cars</h1>
        </div>
            <br>
                        <br>
            <br>
            <br>
            <br>

        <div align="center">
            <button class="btn btn-info filter-button" data-filter="all">All</button>
            <button class="btn btn-info filter-button" data-filter="delhi">DELHI</button>
            <button class="btn btn-info filter-button" data-filter="punjab">PUNJAB</button>
            <button class="btn btn-info filter-button" data-filter="mumbai">MUMBAI</button>
            <button class="btn btn-info filter-button" data-filter="uttrakhand">UTTRAKHAND</button>
                        <button class="btn btn-info filter-button" data-filter="latest">latest</button>

        </div>
        <br/>
        <div class="col-sm-12">
<div class="   col-sm-4 filter delhi">
                <div class="thumbnail">
<img src="VWWIMG.jsp?id=1" width="250" height="250">  
 <h5><strong>Honda Brio VX MT</strong></h5>
<h4>₹8.50L</h4>
<p>Check Right Price</p><p>EMI ₹ 9,098</p><a>Get Instant Loan Approval</a>
<p>6,629 km 	| 	Petrol 	|2015</p>
 <p>Defence Colony , New Delhi </p> 
<a>9867675858</a>
            </div>
            </div>
            <div class="   col-sm-4 filter punjab">
  <div class="thumbnail">
<img src="VWWIMG.jsp?id=2" width="250" height="250">  
 <h5><strong>Ford EcoSport Titanium 1.5 TDCi</strong></h5>
<h4>₹ 5.50L</h4>
<p>Check Right Price</p><p>EMI ₹ 9,098</p><a>Get Instant Loan Approval</a>
<p>6,629 km 	| 	Petrol 	|2015</p>
 <p>Defence Colony , New Delhi </p> 
<a>9867675858</a>
            </div>
            </div>
<div class="   col-sm-4 filter delhi">
  <div class="thumbnail">
<img src="VWWIMG.jsp?id=3" width="250" height="250">  
<div>
<h5><strong>Honda Brio VX MT</strong></h5>
<h4>₹ 3.50L</h4>
<p>Check Right Price</p><p>EMI ₹ 9,098</p><a>Get Instant Loan Approval</a>
<p>6,629 km 	| 	Petrol 	|2015</p>
 <p>Defence Colony , New Delhi </p></div>
<a>9867675858</a>
            </div>
            </div>
<div class="   col-sm-4 filter uttrakhand">
  <div class="thumbnail">
<img src="VWWIMG.jsp?id=4" width="250" height="250">  
 <h5><strong>Honda Brio VX MT</strong></h5>
<h4>₹ 7.50L</h4>
<p>Check Right Price</p><p>EMI ₹ 9,098</p><a>Get Instant Loan Approval</a>
<p>6,629 km 	| 	Petrol 	|2015</p>
 <p>Defence Colony , New Delhi </p> 
<a>9867675858</a>
            </div>
            </div>
            <div class="   col-sm-4 filter mumbai">
  <div class="thumbnail">
<img src="VWWIMG.jsp?id=5" width="250" height="250">  
 <h5><strong>Honda Brio VX MT</strong></h5>
<h4>₹ 5.50L</h4>
<p>Check Right Price</p><p>EMI ₹ 9,098</p><a>Get Instant Loan Approval</a>
<p>6,629 km 	| 	Petrol 	|2015</p>
 <p>Defence Colony , New Delhi </p> 
<a>9867675858</a>
            </div>
            </div>
 <div class="   col-sm-4 filter uttrakhand">
   <div class="thumbnail">
<img src="VWWIMG.jsp?id=6" width="250" height="250">  
 <h5><strong>Honda Brio VX MT</strong></h5>
<h4>₹ 4.50L</h4>
<p>Check Right Price</p><p>EMI ₹ 9,098</p><a>Get Instant Loan Approval</a>
<p>6,629 km 	| 	Petrol 	|2015</p>
 <p>Defence Colony , New Delhi </p> 
<a>9867675858</a>
            </div>
            </div>
  <div class="   col-sm-4 filter mumbai">
  <div class="thumbnail">
<img src="VWWIMG.jsp?id=7" width="250" height="250">  
 <h5><strong>Honda Brio VX MT</strong></h5>
<h4>₹ 4.50L</h4>
<p>Check Right Price</p><p>EMI ₹ 9,098</p><a>Get Instant Loan Approval</a>
<p>6,629 km 	| 	Petrol 	|2015</p>
 <p>Defence Colony , New Delhi </p> 
<a>9867675858</a>
            </div>
            </div>
  <div class="   col-sm-4 filter uttrakhand">
  <div class="thumbnail">
<img src="VWWIMG.jsp?id=8" width="250" height="250">  
 
<h5><strong>Honda Brio VX MT</strong></h5>
<h4>₹ 4.50L</h4>
<p>Check Right Price</p><p>EMI ₹ 9,098</p><a>Get Instant Loan Approval</a>
<p>6,629 km 	| 	Petrol 	|2015</p>
 <p>Defence Colony , New Delhi </p> 
<a>9867675858</a>
            </div>
            </div>
 <div class="   col-sm-4 filter uttrakhand">
  <div class="thumbnail">
<img src="VWWIMG.jsp?id=9" width="250" height="250">  
<h5><strong>Honda Brio VX MT</strong></h5>
<h4>₹ 6.0L</h4>
<p>Check Right Price</p><p>EMI ₹ 9,098</p><a>Get Instant Loan Approval</a>
<p>6,629 km 	| 	Petrol 	|2015</p>
 <p>Defence Colony , New Delhi </p> 
<a>9867675858</a>
            </div>
            </div>
 <div class="   col-sm-4 filter delhi">
  <div class="thumbnail">
<img src="VWWIMG.jsp?id=10" width="250" height="250">  
 <h5><strong>Honda Brio VX MT</strong></h5>
<h4>₹ 750L</h4>
<p>Check Right Price</p><p>EMI ₹ 9,098</p><a>Get Instant Loan Approval</a>
<p>6,629 km 	| 	Petrol 	|2015</p>
 <p>Defence Colony , New Delhi </p> 
<a>9867675858</a>
            </div>
            </div>
  <div class="   col-sm-4 filter delhi">
  <div class="thumbnail">
<img src="VWWIMG.jsp?id=11" width="250" height="250">  
 <h5><strong>Ford EcoSport Titanium 1.5 TDCi</strong></h5>
<h4>₹ 3.50L</h4>
<p>Check Right Price</p><p>EMI ₹ 9,098</p><a>Get Instant Loan Approval</a>
<p>6,629 km 	| 	Petrol 	|2015</p>
 <p>Defence Colony , New Delhi </p> 
<a>9867675858</a>
            </div>
            </div>
            <div class="   col-sm-4 filter punjab">
  <div class="thumbnail">
<img src="VWWIMG.jsp?id=12" width="250" height="250">  
 
<h5><strong>Honda Civic 1.8S MT</strong></h5>
<h4>₹ 4.50L</h4>
<p>Check Right Price</p><p>EMI ₹ 9,098</p><a>Get Instant Loan Approval</a>
<p>6,629 km 	| 	Petrol 	|2015</p>
 <p>Defence Colony , New Delhi </p>
<a>9867675858</a>
            </div>
            </div>
       <div class="   col-sm-4 filter uttrakhand">
  <div class="thumbnail">
<img src="VWWIMG.jsp?id=13" width="250" height="250">  
 
<h5><strong>Mahindra Scorpio VLX 2WD BS-III</strong></h5>
<h4>₹ 4.50L</h4>
<p>Check Right Price</p><p>EMI ₹ 9,098</p><a>Get Instant Loan Approval</a>
<p>6,629 km 	| 	Petrol 	|2015</p>
 <p>Defence Colony , New Delhi </p> 
<a>9867675858</a>
            </div>
            </div>
          <div class="   col-sm-4 filter uttrakhand">
  <div class="thumbnail">
<img src="VWWIMG.jsp?id=14" width="250" height="250">  
 
<h5><strong>Honda Brio VX MT</strong></h5>
<h4>₹ 4.50L</h4>
<p>Check Right Price</p><p>EMI ₹ 9,098</p><a>Get Instant Loan Approval</a>
<p>6,629 km 	| 	Petrol 	|2015</p>
 <p>Defence Colony , New Delhi </p> 
<a>9867675858</a>
            </div>
            </div>
          <div class="   col-sm-4 filter uttrakhand">
  <div class="thumbnail">
<img src="VWWIMG.jsp?id=15" width="250" height="250">  
<div>
<h5><strong>Honda Brio VX MT</strong></h5>
<h4>₹ 4.0L</h4>
<p>Check Right Price</p><p>EMI ₹ 9,098</p><a>Get Instant Loan Approval</a>
<p>6,629 km 	| 	Petrol 	|2015</p>
 <p>Defence Colony , New Delhi </p></div>
<a>9867675858</a>
            </div>
            </div>
        
          <div class="   col-sm-4 filter uttrakhand">
  <div class="thumbnail">
<img src="VWWIMG.jsp?id=16" width="250" height="250">  
<div>
<h5><strong>Honda Brio VX MT</strong></h5>
<h4>₹ 4.50L</h4>
<p>Check Right Price</p><p>EMI ₹ 9,098</p><a>Get Instant Loan Approval</a>
<p>6,629 km 	| 	Petrol 	|2015</p>
 <p>Defence Colony , New Delhi </p></div>
<a>9867675858</a>
            </div>
            </div>
          <div class="   col-sm-4 filter uttrakhand">
  <div class="thumbnail">
<img src="VWWIMG.jsp?id=17" width="250" height="250">  
<div>
<h5><strong>Tata Nano LX</strong></h5>
<h4>₹ 4.50L</h4>
<p>Check Right Price</p><p>EMI ₹ 9,098</p><a>Get Instant Loan Approval</a>
<p>6,629 km 	| 	Petrol 	|2015</p>
 <p>Defence Colony , New Delhi </p></div>
<a>9867675858</a>
            </div>
            </div>
          <div class="   col-sm-4 filter uttrakhand">
  <div class="thumbnail">
<img src="VWWIMG.jsp?id=18" width="250" height="250">  
 
<h5><strong>Honda Brio VX MT</strong></h5>
<h4>₹ 6.50L</h4>
<p>Check Right Price</p><p>EMI ₹ 9,098</p><a>Get Instant Loan Approval</a>
<p>6,629 km 	| 	Petrol 	|2015</p>
 <p>Defence Colony , New Delhi </p> 
<a>9867675858</a>
            </div>
            </div>
          <div class="   col-sm-4 filter uttrakhand">
  <div class="thumbnail">
<img src="VWWIMG.jsp?id=19" width="250" height="250">  
<div>
<h5><strong>BMW 5 Series 525i Sedan</strong></h5>
<h4>₹ 4.50L</h4>
<p>Check Right Price</p><p>EMI ₹ 9,098</p><a>Get Instant Loan Approval</a>
<p>6,629 km 	| 	Petrol 	|2015</p>
 <p>Defence Colony , New Delhi </p></div>
<a>9867675858</a>
            </div>
            </div>
        <div class="   col-sm-4 filter uttrakhand">
  <div class="thumbnail">
<img src="VWWIMG.jsp?id=20" width="250" height="250">  
<div>
<h5><strong>Honda Brio VX MT</strong></h5>
<h4>₹ 6.0L</h4>
<p>Check Right Price</p><p>EMI ₹ 9,098</p><a>Get Instant Loan Approval</a>
<p>6,629 km 	| 	Petrol 	|2015</p>
 <p>Defence Colony , New Delhi </p></div>
<a>9867675858</a>
            </div>
            </div>
        <div class="   col-sm-4 filter latest">
  <div class="thumbnail">
<img src="VWWIMG.jsp?id=225" width="250" height="250">  
    <div>
<h5><strong>Honda Br MT</strong></h5>
<h4>₹ 3.05L</h4>
<p>Check Right Price</p><p>EMI ₹ 9,098</p><a>Get Instant Loan Approval</a>
<p>6,629 km 	| 	Petrol 	|2015</p>
 <p>Defence Colony , New Delhi </p></div>
<a>9867675858</a>
 
            </div>
            </div>
              <div class="   col-sm-4 filter latest">
  <div class="thumbnail">
<img src="VWWIMG.jsp?id=226" width="250" height="250">  
     <div id="div1" class="fa"></div>
<h5><strong>will UPDATE  after you sell YOU CAR</strong></h5>
 
            </div>
            </div>
              <div class="   col-sm-4 filter latest">
  <div class="thumbnail">
<img src="VWWIMG.jsp?id=227" width="250" height="250">  
     <div id="div1" class="fa"></div>
<h5><strong>will UPDATE  after you sell YOU CAR</strong></h5>
 
            </div>
            </div>
              <div class="   col-sm-4 filter latest">
  <div class="thumbnail">
<img src="VWWIMG.jsp?id=228" width="250" height="250">  
     <div id="div1" class="fa"></div>
<h5><strong>will UPDATE  after you sell YOU CAR</strong></h5>
 
            </div>
            </div>
              <div class="   col-sm-4 filter latest">
  <div class="thumbnail">
<img src="VWWIMG.jsp?id=229" width="250" height="250">  
     <div id="div1" class="fa"></div>
<h5><strong>will UPDATE  after you sell YOU CAR</strong></h5>
 
            </div>
            </div>
              <div class="   col-sm-4 filter latest">
  <div class="thumbnail">
<img src="VWWIMG.jsp?id=230" width="250" height="250">  
     <div id="div1" class="fa"></div>
<h5><strong>will UPDATE  after you sell YOU CAR</strong></h5>
 
            </div>
            </div>
              <div class="   col-sm-4 filter latest">
  <div class="thumbnail">
<img src="VWWIMG.jsp?id=231" width="250" height="250">  
     <div id="div1" class="fa"></div>
<h5><strong>will UPDATE  after you sell YOU CAR</strong></h5>
 
            </div>
            </div>
              <div class="   col-sm-4 filter latest">
  <div class="thumbnail">
<img src="VWWIMG.jsp?id=232" width="250" height="250">  
     <div id="div1" class="fa"></div>
<h5><strong>will UPDATE  after you sell YOU CAR</strong></h5>
 
            </div>
            </div>
 
             </div>
            
        
        
        </div>
        </div>
       
    </body>
</html>