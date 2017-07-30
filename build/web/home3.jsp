<%-- 
    Document   : new1
    Created on : 3 May, 2017, 2:09:46 PM
    Author     : AaDI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html lang="en">
<head>
  <title>CarAddiction</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.js"></script> 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <%@ include file="WEB-INF/tags/angularr.jsp"%>  
  <script>
      
      
      var appk = angular.module('myApppo', []);
appk.controller('validateC', function($scope) {
    $scope.use = '';
    $scope.ema = '';
    
    
    console.log('Appo');
});  
       
       $(function() {
  $('select[data-nested-select]').each(function() {
    var select           = $(this),
        groupName        = select.data('nested-select'),
        optgroups        = select.find('optgroup'),
        options          = select.find('optgroup option'),
        groupSelect      = $('<select>'),
        emptyGroupOption = makeOption(groupName);

    groupSelect.
      append(emptyGroupOption).
      insertBefore(select);

    optgroups.each(function(index) {
      var optgroup    = $(this),
          name        = this.label,
          children    = optgroup.children(),
          firstChild  = children.eq(0),
          selected    = children.is(':selected'),
          groupOption = makeOption(name, index, selected);

      groupSelect.append(groupOption);
      children.data('group', index);
      firstChild.unwrap();
    });

    groupSelect.change(function() {
      var selectedGroup  = parseInt(groupSelect.val(), 10),
          optionsInGroup = options.filter(function() { return $(this).data('group') == selectedGroup; }),
          hiddenOptions  = options.not(optionsInGroup);

      hiddenOptions.
        attr('selected', false).
        detach();

      select.append(optionsInGroup);
    });

    function makeOption(text, value, selected) {
      var option = $('<option>');
      option.attr('value', value);
      option.attr('selected', selected);
      option.text(text);
      return option;
    }
  });
});
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
    $("#myBto").click(function(){
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
 
   $(document).ready(function() {	

var id = '#dialog';
	
//Get the screen height and width
var maskHeight = $(document).height();
var maskWidth = $(window).width();
	
//Set heigth and width to mask to fill up the whole screen
$('#mask').css({'width':maskWidth,'height':maskHeight});

//transition effect
$('#mask').fadeIn(500);	
$('#mask').fadeTo("slow",0.9);	
	
//Get the window height and width
var winH = $(window).height();
var winW = $(window).width();
              
//Set the popup window to center
$(id).css('top',  winH/2-$(id).height()/2);
$(id).css('left', winW/2-$(id).width()/2);
	
//transition effect
$(id).fadeIn(2000); 	
	
//if close button is clicked
$('.window .close').click(function (e) {
//Cancel the link behavior
e.preventDefault();

$('#mask').hide();
$('.window').hide();
});

//if mask is clicked
$('#mask').click(function () {
$(this).hide();
$('.window').hide();
});
	
});
 
</script>
   <style>
      
      .bgimga {
    background-image: url('Image/olx/ameo.jpg');
    height: 100%;
    background-position: center;
    background-size: cover;
    position: initial;
    color: palegoldenrod;
     font-size: 25px;
     text-align: center;
}
  
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
   font-size: 1.0em !important;
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
  .fa {
  padding: 20px;
  font-size: 30px;
  width: 30px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
  border-radius: 50%;
}

.fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}

.fa-twitter {
  background: #55ACEE;
  color: white;
}

.fa-google {
  background: #dd4b39;
  color: white;
}

.fa-linkedin {
  background: #007bb5;
  color: white;
}

.fa-youtube {
  background: #bb0000;
  color: white;
}

.fa-instagram {
  background: #125688;
  color: white;
}
  
#mask {
  position: absolute;
  left: 0;
  top: 0;
  z-index: 9000;
  background-color: #000;
  display: none;
}

#boxes .window {
  position: absolute;
  left: 0;
  top: 0;
  width: 800px;
  height: 500px;
  display: none;
  z-index: 9999;
  padding: 20px;
  border-radius: 15px;
  text-align: right;
  background-image: url('Image/olx/popo.jpg');
}

#boxes #dialog {
  width: 950px;
  height: 550px;
  padding: 10px;
  background-color: #ffffff;
   font-size: 15pt;
}

#popupfoot {
  font-size: 16pt;
  position: absolute;
  bottom: 0px;
  width: 800px;
  left: 800px;
}
  

 

 

  </style>
  <script>
// Set the date we're counting down to
var countDownDate = new Date("Aug 5, 2017 15:37:25").getTime();

// Update the count down every 1 second
var countdownfunction = setInterval(function() {

    // Get todays date and time
    var now = new Date().getTime();
    
    // Find the distance between now an the count down date
    var distance = countDownDate - now;
    
    // Time calculations for days, hours, minutes and seconds
    var days = Math.floor(distance / (1000 * 60 * 60 * 24));
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    
    // Output the result in an element with id="demo"
    document.getElementById("demo").innerHTML = days + "d " + hours + "h "
    + minutes + "m " + seconds + "s ";
    
    // If the count down is over, write some text 
    if (distance < 0) {
        clearInterval(countdownfunction);
        document.getElementById("demo").innerHTML = "EXPIRED";
    }
}, 1000);



</script>
   <script>
  angular.module('numberExample', [])
    .controller('ExampleController', ['$scope', function($scope) {
      $scope.example = {
        value: 12
      };
    }]);
</script>
 
</head>
<body>
    <script type="text/javascript">
var appk = angular.module('myApppo', []);
appk.controller('validateC', function($scope) {
    $scope.use = '';
    $scope.ema = '';
    
    $scope.user = '';
    $scope.email = '';
    console.log('Appp');
   
    
    console.log('Appo');
});

     
    
</script>   
    
   
    <%@ include file="WEB-INF/tags/nav3.jsp"%>  
    <br>
    <br>
    <br>
   
     
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="toyo2.jpg" alt="Image">
        <div class="carousel-caption">
          <h3>sale</h3>
          <p>large discount</p>
        </div>      
      </div>
 
         
        <div class="item">
        <img src="ameooo.jpg" alt="Image">
        <div class="carousel-caption">
          <h3>large discount</h3>
         </div>      
      </div>
        <div class="item">
        <img src="creta.jpg" alt="Image">
        <div class="carousel-caption">
          <h3>LARGE DISCOUNT</h3>
          <p>HURRY UP!! </p>
        </div>      
      </div>
        <div class="item">
        <img src="hyun.jpg" alt="Image">
        <div class="carousel-caption">
          <h3>HURRY UP!</h3>
           
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
    <br>
     
    <br>
    <br>
    <MARQUEE>
        <h3><font color="white"><u>
                PLEASE! SIGNUP FOR SELL YOUR CAR OR SEE BUY USED CAR SECTION ND MUCH  MORE OFFERS****</u></font></h3>
</MARQUEE>
       
        
 <div align="center" >    
<%@ include file="opt.jsp"%>  
    </div>
  
    
<div class="row">
    <br>
     <h2 class="text-center">POPULAR NEW  CARS</h2>
    <br>
    <div class="col-sm-12">
      
      <div class="carousel slide media-carousel-xs visible-xs" id="media-xs">
        <div class="carousel-inner">
          <div class="item  active">
            <div class="row">
              <div class="col-xs-4">
                 <a class="thumbnail" href="#"><img alt="" src="Image/olx/olx (1).jpeg"></a>
              </div>          
              <div class="col-xs-4">
                <a class="thumbnail" href="#"><img alt="" src="Image/olx/olx (2).jpeg"></a>
              </div>
              <div class="col-xs-4">
                <a class="thumbnail" href="#"><img alt="" src="Image/olx/olx (3).jpeg"></a>
              </div>
            </div>
          </div>
          
          <div class="item">
            <div class="row">
              <div class="col-xs-4">
                <a class="thumbnail" href="#"><img alt="" src="Image/olx/olx (3).jpeg"></a>
              </div>          
              <div class="col-xs-4">
                <a class="thumbnail" href="#"><img alt="" src=" Image/olx/olx (1).jpeg"></a>
              </div>
              <div class="col-xs-4">
                <a class="thumbnail" href="#"><img alt="" src="Image/olx/olx (2).jpeg"></a>
              </div>
            </div>
          </div>  
 
        </div>
        <a data-slide="prev" href="#media-xs" class="left carousel-control">‹</a>
        <a data-slide="next" href="#media-xs" class="right carousel-control">›</a>
        </div>   
      
      <div class="carousel slide media-carousel-up hidden-xs" id="media-up">
        <div class="carousel-inner">
          <div class="item  active">
            <div class="row">
              <div class="col-xs-2">
                <a class="thumbnail" href="ameo.jsp"> <img src="Image/volkwagen/ameo (1).jpg" alt="Paris" width="400" height="300">
         <p><strong>Volkswagen Ameo</strong></p>
 <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
 <h5> Diesel | 2017</h5></a>
              </div>          
              <div class="col-xs-2">
                  <a class="thumbnail" href="mobilio.jsp"><img src="Image/honda/mobilio (11).jpg" alt="Paris" width="400" height="300">
        <p><strong>Honda Mobilio</strong></p>
        <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
        <h5> Diesel | 2017</h5></a>
              </div>
              <div class="col-xs-2">
                <a class="thumbnail" href="vento.jsp"><img src="Image/volkwagen/vento (4).jpg" alt="Paris" width="400" height="300">
         <p><strong>Volkswagen Vento</strong></p>
        <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
      <h5> Diesel | 2017</h5></a>
              </div>
              <div class="col-xs-2">
                <a class="thumbnail" href="beetal.jsp"><img src="Image/volkwagen/beetal (1).jpg" alt="Paris" width="400" height="300">
         <p><strong>Volkswagen Beetle</strong></p>
        <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
      <h5> Diesel | 2017</h5>
</a>
              </div>          
              <div class="col-xs-2">
                <a class="thumbnail" href="amaze.jsp"> <img src="Image/honda/amaze (2).jpg" alt="Paris" width="400" height="300">
         <p><strong>Honda Amaze</strong></p>
  <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
 <h5> Diesel | 2017</h5></a>
              </div>
              <div class="col-xs-2">
                <a class="thumbnail" href="etios.jsp">  <img src="Image/toyota/etios (1).jpg" alt="Paris" width="400" height="300">
         <p><strong>Toyota Etios Liva</strong></p>
        <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
        <h5> Diesel | 2017</h5></a>
              </div>
            </div>
          </div>
          
          <div class="item">
            <div class="row">
              <div class="col-xs-2">
                <a class="thumbnail" href="fortuner.jsp"><img src="Image/toyota/fortuner (1).jpg" alt="Paris" width="400" height="300">
         <p><strong>Toyota Fortuner</strong></p>
        <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
      <h5> Diesel | 2017</h5></a>
              </div>          
              <div class="col-xs-2">
                <a class="thumbnail" href="tiago.jsp"> <img src="Image/tata/tiago (1).jpg" alt="Paris" width="400" height="300">
         <p><strong>Tata Tiago</strong></p>
        <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
        <h5> Diesel | 2017</h5></a>
              </div>
              <div class="col-xs-2">
                <a class="thumbnail" href="bolt.jsp">  <img src="Image/tata/bolt (1).jpg" alt="Paris" width="400" height="300">
         <p><strong>Tata Bolt</strong></p>
        <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
      <h5> Diesel | 2017</h5></a>
              </div>
              <div class="col-xs-2">
                <a class="thumbnail" href="baleno.jsp"> <img src="Image/maruti/baleno (2).jpg" alt="Paris" width="400" height="300">
          <p><strong>Maruti Suzuki Baleno</strong></p>
        <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
              <h5> Diesel | 2017</h5></a>
              </div>          
              <div class="col-xs-2">
                <a class="thumbnail" href="wagnr.jsp"> <img src="Image/maruti/wagonr (6).jpg" alt="Paris" width="400" height="300">
         <p><strong>Maruti Suzuki Wagon R 1.0</strong></p>
        <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
       <h5> Diesel | 2017</h5></a>
              </div>
              <div class="col-xs-2">
                <a class="thumbnail" href="tucson.jsp"><img src="Image/hyundai/tucson (3).jpg" alt="Paris" width="400" height="300">
        <p><strong>Hyundai Tucson</strong></p>
        <h3><strong>₹</strong>2.68 Lakhs onwards</h3>
              <h5> Diesel | 2017</h5></a>
              </div>
            </div>
          </div>  
 
        </div>
        
        <a class="left carousel-control" href="#media-up" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#media-up" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
      </div>
      
    </div>
  </div>
<br>
<br>
<br>
<br>
<br>
     
 
<br>
<br>
<br>

 <footer>
			<div class="footer-top ">
				<div class="container">
					<div class="foo-grids">
						<div class="col-md-3 footer-grid">
							<h4 class="footer-head">Who We Are</h4>
							<p>WE ARE NUMBER TRUSTED CAR BUYER AND SELLER SINCE 2000,YOU CAN TRUST US</p>
							<p>to easy to buy dream car</p>
						</div>
						<div class="col-md-3 footer-grid">
							<h4 class="footer-head">Help</h4>
							<ul>
 								<li><a href="faq.html">Faq</a></li>
								<li><a href="feedback.html">Feedback</a></li>
  							</ul>
						</div>
						<div class="col-md-3 footer-grid">
							<h4 class="footer-head">Information</h4>
							<ul>
								<li><a href="map.jsp">Locations Map</a></li>	
								<li><a href="terms.html">Terms of Use</a></li>
 								<li><a href=" ">Privacy Policy</a></li>	
							</ul>
						</div>
						<div class="col-md-3 footer-grid">
 							<span class="hq">Our headquarters
                                                        new delhi,japan,australia,america
                                                        </span>
							<address>
								<ul class="location">
									<li><span class="glyphicon glyphicon-map-marker"></span></li>
									<li> south-ex,part-2
                                                                         Near,mahatmagandhi road
                                                                        building no-70</li>
								</ul>	
								<ul class="location">
									<li><span class="glyphicon glyphicon-earphone"></span></li>
									<li>9999999999</li>
								</ul>	
								<ul class="location">
									<li><span class="glyphicon glyphicon-envelope"></span></li>
									<li><a href="mailto:info@example.com">carAdiction@gmail.com</a></li>
								</ul>						
							</address>
						</div>
						<div class="clearfix"></div>
					</div>						
				</div>	
			</div>	
			<div class="footer-bottom text-center">
			<div class="container">
				<div class="footer-logo">
                                    <h4><a href="founder.jsp">Car addiction founder and ceo</a></h4>
                                    <br>
                                    <a href="#" class="fa fa-facebook"></a>
<a href="#" class="fa fa-twitter"></a>
<a href="#" class="fa fa-google"></a>
<a href="#" class="fa fa-linkedin"></a>
<a href="#" class="fa fa-youtube"></a>
<a href="#" class="fa fa-instagram"></a>
<br>
					<a href="home.jsp"><span>Car</span>Addiction</a>
				</div>
				
				<div class="copyrights">
					<p> © 2016 carAddiction. All Rights Reserved |</p>
				</div>
			</div>
		</div>
		</footer>
    </div>
</body>
</html>

