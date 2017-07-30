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
   
  <link href="css/bootstrap.min.css" rel="stylesheet">
   <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
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

 jQuery(document).ready(function($) {

        $('#myCarousel').carousel({
                interval: 5000
        });

        $('#carousel-text').html($('#slide-content-0').html());

        //Handles the carousel thumbnails
        $('[id^=carousel-selector-]').click( function(){
                var id_selector = $(this).attr("id");
                var id = id_selector.substr(id_selector.length -1);
                var id = parseInt(id);
                $('#myCarousel').carousel(id);
        });


        // When the carousel slides, auto update the text
        $('#myCarousel').on('slid.bs.carousel', function (e) {
                 var id = $('.item.active').data('slide-number');
                $('#carousel-text').html($('#slide-content-'+id).html());
        });
});


 
</script>
  <style>
      .box{
	width:90px;
	height:30px;
}
 
.silver{
	background:silver;
}
.white{
	background:white;
}
.pink{
	background:pink;
}
.red{
	background:red;
}
.blue{
	background:blue;
}
.green{
	background:green;
}

      .bg-pink {
      background-color: #f6f6f6;
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
    
   

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }
  .hide-bullets {
list-style:none;
margin-left: -40px;
margin-top:20px;
}
   
col-centered{
float: none;
margin: 0 auto;
}
hr { background-color:silver; height: 1px; border: 0; }
.modal.left .modal-dialog,
	.modal.right .modal-dialog {
		position: fixed;
		margin: auto;
		width: 320px;
		height: 100%;
		-webkit-transform: translate3d(0%, 0, 0);
		    -ms-transform: translate3d(0%, 0, 0);
		     -o-transform: translate3d(0%, 0, 0);
		        transform: translate3d(0%, 0, 0);
	}

	.modal.left .modal-content,
	.modal.right .modal-content {
		height: 100%;
		overflow-y: auto;
	}
	
	.modal.left .modal-body,
	.modal.right .modal-body {
		padding: 15px 15px 80px;
	}

/*Left*/
	.modal.left.fade .modal-dialog{
		left: -320px;
		-webkit-transition: opacity 0.3s linear, left 0.3s ease-out;
		   -moz-transition: opacity 0.3s linear, left 0.3s ease-out;
		     -o-transition: opacity 0.3s linear, left 0.3s ease-out;
		        transition: opacity 0.3s linear, left 0.3s ease-out;
	}
	
	.modal.left.fade.in .modal-dialog{
		left: 0;
	}
        
/*Right*/
	.modal.right.fade .modal-dialog {
		right: -320px;
		-webkit-transition: opacity 0.3s linear, right 0.3s ease-out;
		   -moz-transition: opacity 0.3s linear, right 0.3s ease-out;
		     -o-transition: opacity 0.3s linear, right 0.3s ease-out;
		        transition: opacity 0.3s linear, right 0.3s ease-out;
	}
	
	.modal.right.fade.in .modal-dialog {
		right: 0;
	}

/* ----- MODAL STYLE ----- */
	.modal-content {
		border-radius: 0;
		border: none;
	}

	.modal-header {
		border-bottom-color: #EEEEEE;
		background-color: #FAFAFA;
	}

/* ----- v CAN BE DELETED v ----- */
body {
	background-color: #78909C;
}

.demo {
	padding-top: 60px;
	padding-bottom: 110px;
}

.btn-demo {
	margin: 15px;
	padding: 10px 15px;
	border-radius: 0;
	font-size: 16px;
	background-color: #FFFFFF;
}

.btn-demo:focus {
	outline: 0;
}

.demo-footer {
	position: fixed;
	bottom: 0;
	width: 100%;
	padding: 15px;
	background-color: #212121;
	text-align: center;
}

.demo-footer > a {
	text-decoration: none;
	font-weight: bold;
	font-size: 16px;
	color: #fff;
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
      <div class="col-sm-12" style="background-color:silver;">        
          <div class="col-sm-8" style="background-color:silver;">  
        <h2>Maruti Suzuki Alto 800</h2>
					<p> <i class="glyphicon glyphicon-map-marker"></i>
                                            <a href="#">delhi</a>, <a href="#">cp</a>| Added at 06:55 pm, Ad ID: 987654321</p>
                                        <p>   EMI starts at <b>4,894/-</b> </p>
                                        
 <div class="container">
        <div id="main_area">
                <!-- Slider -->
                <div class="row">
                    <div class="col-xs-12" id="slider">
                        <!-- Top part of the slider -->
                        <div class="row">
                            <div class="col-sm-6" id="carousel-bounding-box">
                                <div class="carousel slide" id="myCarousel">
                                    <!-- Carousel items -->
                                    <div class="carousel-inner">
                                        <div class="active item" data-slide-number="0">
                                        <img src=" m1.jpg"></div>

                                        <div class="item" data-slide-number="1">
                                        <img src="m2.jpg"></div>

                                        <div class="item" data-slide-number="2">
                                        <img src="m3.jpg"></div>

                                        <div class="item" data-slide-number="3">
                                        <img src="m4.jpg"></div>

                                        <div class="item" data-slide-number="4">
                                        <img src="m5.jpg"></div>

                                        <div class="item" data-slide-number="5">
                                        <img src="m6.jpg"></div>
                                        <div class="item" data-slide-number="6">
                                        <img src="m7.jpg"></div>
                                        <div class="item" data-slide-number="7">
                                        <img src="m8.jpg"></div>
                                        <div class="item" data-slide-number="8">
                                        <img src="m9.jpg"></div>
                                    </div><!-- Carousel nav -->
                                    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                        <span class="glyphicon glyphicon-chevron-left"></span>                                       
                                    </a>
                                    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                        <span class="glyphicon glyphicon-chevron-right"></span>                                       
                                    </a>                                
                                    </div>
                            </div>
<div class="col-sm-3" style="background-color:silver;"> 
                        </div>
                            <div class="col-sm-3" style="background-color:silver;"> 
                                <ul class="list-group">
                                    <li class="list-group-item list-group-item-success"> <span class=" glyphicon glyphicon-hand-right"></span><strong>Test Drive</strong></li>
    <li class="list-group-item list-group-item-info"><span class=" glyphicon glyphicon-hand-right"></span><strong> Exchange Benefit</strong></li>
    <li class="list-group-item list-group-item-warning"><span class=" glyphicon glyphicon-hand-right"></span><strong>EMI Option</strong></li>
    <li class="list-group-item list-group-item-danger"><span class=" glyphicon glyphicon-hand-right"></span><strong>Offers</strong></li>
   
                            
                             
                                <li class="list-group-item list-group-item-danger"><a href="#"> <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal2">Get the Best Deal</button></a></li>
  </ul>
                                
                                
                                </div>
                          
                        </div>
                         
                        <div class="modal right fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
		<div class="modal-dialog" role="document">
			<div class="modal-content">

				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="myModalLabel2">Make your car buying easier</h4>
				</div>

				<div class="modal-body">
                                     <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
          <th>
              <span class=" glyphicon glyphicon-hand-right"></span>
              <br><strong>Doorstep Demo</strong>
          </th>
        <th><span class=" glyphicon glyphicon-hand-right"></span>
              <br><strong>Lowest EMI Option</strong></th>
        <th><span class=" glyphicon glyphicon-hand-right"></span>
              <br><strong>Exchange Benefit</strong></th>
        <th><span class=" glyphicon glyphicon-hand-right"></span>
              <br><strong>Offers and Discount</strong></th>
   </tr>
    </thead>
    <tbody> 
                                   
  </table>
    <br>
    <br>
    
   
 
  <form class="form-inline" action="/action_page.php">
      <div class="form-group">
  <label for="usr">Name:</label>
  <input type="text" class="form-control" id="usr"  placeholder="Enter Name" name="Name"   >
      </div><br><br>
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
      <br><br>
       <div class="form-group">
  <label for="usr">Phone Number:</label>
  <input type="text" class="form-control" id="usr"  placeholder="Enter Name" name="Name"   >
      </div><br><br>
    
     
      <button type="submit" class="btn btn-success">Submit</button><br>
  </form>
 
				</div>

			</div><!-- modal-content -->
		</div><!-- modal-dialog -->
	</div><!-- modal -->
	
                    </div>
 
                           <div class="row">
                               
                               
    <div class="col-sm-4" style="background-color:silver;"> 

                <div class="row hidden-xs" id="slider-thumbs">
                        <!-- Bottom switcher of slider -->
                        <ul class="hide-bullets">
                            <li class="col-sm-4">
                                <a class="thumbnail" id="carousel-selector-0"><img src="m1.jpg" width="80" height="80"></a>
                            </li>
                            <li class="col-sm-4">
                                <a class="thumbnail" id="carousel-selector-1"><img src="m2.jpg" width="80" height="80"></a>
                            </li>
                            <li class="col-sm-4">
                                <a class="thumbnail" id="carousel-selector-2"><img src="m3.jpg" width="80" height="80"></a>
                            </li>
                            <li class="col-sm-4">
                                <a class="thumbnail" id="carousel-selector-3"><img src="m4.jpg" ></a>
                            </li>

                            <li class="col-sm-4">
                                <a class="thumbnail" id="carousel-selector-4"><img src="m5.jpg"></a>
                            </li>

                            <li class="col-sm-4">
                                <a class="thumbnail" id="carousel-selector-5"><img src="m6.jpg"></a>
                            </li>
                             <li class="col-sm-4">
                                <a class="thumbnail" id="carousel-selector-6"><img src="m7.jpg"></a>
                            </li>
                             <li class="col-sm-4">
                                <a class="thumbnail" id="carousel-selector-7"><img src="m8.jpg"></a>
                            </li>
                             <li class="col-sm-4">
                                <a class="thumbnail" id="carousel-selector-8"><img src="m9.jpg"></a>
                            </li>
                        </ul>                 
                </div>
        </div>
                               <div class="col-sm-4" style="background-color:silver;">  </div>      
                               <div class="col-sm-4" style="background-color:pink;"> 
                                   <h4>Alternatives</h4>
                                    <div class="media">
    <div class="media-left media-middle">
      <img src="c5.jpg" class="media-object" style="width:70px">
    </div>
    <div class="media-body">
      <h4 class="media-heading">Tata Nano</h4>
       
       
      <p>₹2.99 Lakhs onwards</p> 
    </div>
                                        
  </div>
  <hr>
   <div class="media">
    <div class="media-left media-middle">
      <img src="c5.jpg" class="media-object" style="width:70px">
    </div>
    <div class="media-body">
      <h4 class="media-heading">Tata Nano GenX</h4>
        <p>₹2.49 Lakhs onwards</p> 
    </div>
                                        
  </div>
  <hr>
   <div class="media">
    <div class="media-left media-middle">
      <img src="c5.jpg" class="media-object" style="width:70px">
    </div>
    <div class="media-body">
      <h4 class="media-heading">Renault Kwid</h4>
       
    
      <p>₹2.99 Lakhs onwards</p> 
    </div>
                                        
  </div>
  <hr>
   <div class="media">
    <div class="media-left media-middle">
      <img src="c5.jpg" class="media-object" style="width:70px">
    </div>
    <div class="media-body">
      <h4 class="media-heading">Datsun Redi-GO</h4>
        <p>₹2.69 Lakhs onwards</p> 
    </div>
                                        
  </div>
                               
                               </div>
</div>
                    </div>
                </div>
        </div></div>
                                        
   </div>
         <br>
         <br>
         <br>
         <br>
         
         
         <div class="row">
     
    <div class="col-sm-12">
        <br>    
        <br>
        <div class="col-sm-1"></div>
    <div class="col-sm-7" style="background-color:pink;"> 
        <h4>Alto 800 Overview</h4>
         <div class="table-responsive">          
  <table class="table">
     
    <tbody>
      <tr>
        <td>Alto 800 Price</td>
        <td> 2.68 Lakhs onwards
            <br>
Ex-Showroom, Mumbai</td>
         </tr>
         <tr>
        <td>Alto 800 Mileage</td>
        <td> 24.7 km/kg CNG Manual
            <br>
24.7 Kmpl Petrol Manual</td>
         </tr>
         <tr>
        <td>Alto 800 Colours</td>
        <td> Silky Silver, Superior White, Granite Grey, Blazing Red, Cerulean Blue, Mojito Green</td>
         </tr>
    </tbody>
  </table>
  </div>
    </div> 
        <div class="col-sm-1"  style="background-color:silver;"></div>
        <div class="col-sm-3"  style="background-color:silver;">
            
              <div class="thumbnail">
                 <h3>Discount in Datsun Redi-go</h3>
        <img src="delhi.jpg" alt="Paris" width="300" height="100" >
        <p><strong> Datsun Redi-go</strong></p>
        <p><strong>₹</strong> <del> 4,46,093</del> (24,096 off)</p>
        <h3><strong>₹</strong> 4,21,997 On-Road Price Mumbai   onwards</h3>
      <h5> Diesel | 2017</h5>
      </div>
            
            
            
        </div>
     </div>
         </div>
         
      
      <br>
      <br>
      <h4>Maruti Suzuki Alto 800 Mileage</h4>
      <div class="row">
     
    <div class="col-sm-12">
        <br>    
        <br>
        <div class="col-sm-1"></div>
    <div class="col-sm-7" style="background-color:pink;"> 
       <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>Fuel Type</th>
        <th>Transmission</th>
        <th>mileage</th>
       
      </tr>
    </thead>
    <tbody>
      <tr>
         <td>CNG</td>
        <td>MANUAL</td>
        <td>24.7 KM/KG</td>
         </tr>
         <tr>
         <td>Petrol</td>
        <td>MANUAL</td>
        <td>24.7 kmpl</td>
         </tr>
    </tbody>
  </table>
  </div>
</div>
    </div>     
      
       </div>
      
       <div class="row">
     
    <div class="col-sm-12">
        <h3>Specifications Summary</h3>
        <br>    
        <br>
        <div class="col-sm-1"></div>
    <div class="col-sm-7" style="background-color:pink;"> 
         
        <h4> Engines</h4>
        <hr>
        <strong>796 cc, CNG, 40 bhp @ 6000 RPM power<br>
            796 cc, Petrol, 48 bhp @ 6000 RPM power<br>
            <br></strong>

<h4>Gearboxes</h4>
        <hr>

<strong>5-speed, Manual, Front Wheel Drive</strong>
<br><br>
<h4>Seating Capacity</h4>
        <hr>
<strong>5 Seater</strong><br><br>

<h4>Steering</h4>
        <hr>

<strong>Power steering<br>
Manual steering </strong><br><br>
    
    
    
    </div>
        
      
    </div>
       </div>
      <br>
      <br>>
      
       <div class="row">
      <div class="col-sm-12" style="background-color:silver;">        
          <div class="col-sm-1" style="background-color:silver;">  </div>
            <div class="col-sm-7" style="background-color:pink;"> 
            
             <div class="media">
    <div class="media-left media-top">
      <img src="service.jpg" class="media-object" style="width:80px">
    </div>
    <div class="media-body">
      <h4 class="media-heading">Sai Service</h4>
       
      <p><strong>7685948474</strong></p>
      <p>Get in touch for the best buying options from your authorised dealer </p>
    </div>
  </div>
            
            
            </div>
          <div class="col-sm-4" style="background-color:silver;">  </div>

    </div>
    </div>
      <h2>Maruti Suzuki Alto 800 Colours</h2>
       <div class="row">
           <div class="col-sm-1" style="background-color:silver;"> </div>       
           <div class="col-sm-7" style="background-color:pink;"> 
           
           
            <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>Name</th>
        <th>Colour</th>
          </tr>
    </thead>
    <tbody>
      <tr>
       <td>Silky Silver</td>
	<td><div class="box silver"></div></td>
      </tr>
       <tr>
       <td> Superior White</td>
	<td><div class="box white"></div></td>
      </tr>
       <tr>
       <td>Granite Grey</td>
	<td><div class="box pink"></div></td>
      </tr>
       <tr>
       <td>Blazing Red</td>
	<td><div class="box red"></div></td>
      </tr>
       <tr>
       <td>Cerlean blue</td>
	<td><div class="box blue"></div></td>
      </tr>
       <tr>
       <td>Mojito Green</td>
	<td><div class="box green"></div></td>
      </tr>
    </tbody>
  </table>
  </div>
           
           </div>
           <div class="col-sm-4" style="background-color:silver;"> </div>
  </div>
      <br><br><br>
       <div class="row">
           <div class="col-sm-1" style="background-color:silver;"> </div>       
          <div class="col-sm-7" style="background-color:pink;">  
			<div class="list-seperator"><a class="font16" href="/marutisuzuki-cars/alto-800/userreviews/47268/">Maruti Suzuki Alto 800</a><div class="margin-top10">
					<img src="https://imgd.aeplcdn.com/0x0/images/ratings/1.png"><img src="https://imgd.aeplcdn.com/0x0/images/ratings/1.png"><img src="https://imgd.aeplcdn.com/0x0/images/ratings/1.png"><img src="https://imgd.aeplcdn.com/0x0/images/ratings/1.png"><img src="https://imgd.aeplcdn.com/0x0/images/ratings/0.png"><span>for <b>Maruti Suzuki Alto 800</b> on 27-Jan-2017 by dinesh kumar</span></div><div class="margin-top10">
					Exterior&nbsp;Great look and comfort,easy handling,leg room also nice,and good fuel efficient car&nbsp;
Interior (Features, Space &amp; Comfort)&nbsp;Space inside, seating comfort....
				</div></div>
      <hr>
			<div class="list-seperator"><a class="font16" href="/marutisuzuki-cars/alto-800/userreviews/46991/">THE BEST BUDGET HATCHBACK AND VALUE FOR MONEY</a><div class="margin-top10">
					<img src="https://imgd.aeplcdn.com/0x0/images/ratings/1.png"><img src="https://imgd.aeplcdn.com/0x0/images/ratings/1.png"><img src="https://imgd.aeplcdn.com/0x0/images/ratings/1.png"><img src="https://imgd.aeplcdn.com/0x0/images/ratings/0.png"><img src="https://imgd.aeplcdn.com/0x0/images/ratings/0.png"><span>for <b>Maruti Suzuki Alto 800</b> on 02-Nov-2016 by Sanchit Sawant</span></div><div class="margin-top10">
					Exterior The design is conventional but good looking but the paint quality is not that good that i expected. It gets scratches very easily.
Interior (Features, Space &amp;...
				</div></div>
      <hr>
			<div class="list-seperator"><a class="font16" href="/marutisuzuki-cars/alto-800/userreviews/46878/">The Family car</a><div class="margin-top10">
					<img src="https://imgd.aeplcdn.com/0x0/images/ratings/1.png"><img src="https://imgd.aeplcdn.com/0x0/images/ratings/1.png"><img src="https://imgd.aeplcdn.com/0x0/images/ratings/0.png"><img src="https://imgd.aeplcdn.com/0x0/images/ratings/0.png"><img src="https://imgd.aeplcdn.com/0x0/images/ratings/0.png"><span>for <b>Maruti Suzuki Alto 800</b> on 05-Oct-2016 by Sasankan N</span></div><div class="margin-top10">
					Exterior&nbsp;Good style ,sporty design, has an average height &nbsp;stylish designs good paint job ,good detailing stylish headlamps and off lamps body and paint can be easily damaged...
                        </div></div>
                                            
          </div>
                   
           <div class="col-sm-4" style="background-color:silver;">  </div>
           <br><br>
           <br>
	
  </div>
    </div>
    </div>
    </div>
    </body>
</html>
