<%-- 
    Document   : search
    Created on : 2 May, 2017, 5:47:16 PM
    Author     : AaDI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html lang="en">
<head>
         <%@ include file="WEB-INF/tags/boot2.jsp"%>  
     <%@ include file="WEB-INF/tags/script1.jsp"%> 
     <%@ include file="WEB-INF/tags/style1.jsp"%> 

  <%@ include file="WEB-INF/tags/angularr.jsp"%>  
</head>
<body>

     <%@ include file="WEB-INF/tags/nav.jsp"%>  

    <br>

  <div class="container-fluid text-center bg-grey">
  
      <h4><U>NEW CARS BY BRAND</u></h4>
  <div class="container">
  <h2>All NEW CARS</h2>

  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">BRANDS</a></li>
    <li><a data-toggle="tab" href="#menu1">EMI.BUDGETS</a></li>
    <li><a data-toggle="tab" href="#menu2">FUEL TYPE</a></li>
    <li><a data-toggle="tab" href="#menu3">BODY TYPE</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>BRAND</h3>
       <div class="col-sm-4" >
      <div class="thumbnail" >
          <img src="Image/sign/maruti.jpg" alt="Paris" width="400" height="300">
         <a href="Maruti.jsp"><p><strong>Maruti Suzuki</strong></p></a>
        <p>Yes, we built Paris</p>
      </div>
    </div>
       <div class="col-sm-4">
      <div class="thumbnail">
          <img src="Image/sign/hyundai.jpg" alt="Paris" width="400" height="300">
         <a href="hyundai.jsp"><p><strong>Hyundai </strong></p></a>
        <p>Yes, we built Paris</p>
      </div>
    </div> <div class="col-sm-4">
      <div class="thumbnail">
          <img src="Image/sign/honda.jpg" alt="Paris" width="400" height="300">
         <a href="Honda.jsp"> <p><strong>Honda </strong></p></a>
        <p>Yes, we built Paris</p>
      </div>
    </div>
       <div class="col-sm-4">
      <div class="thumbnail">
          <img src="Image/sign/Mahindra.jpg" alt="Paris" width="400" height="300">
         <a href="Mahindra.jsp"> <p><strong> Mahindra </strong></p> </a>
        <p>Yes, we built Paris</p>
      </div>
    </div>
       <div class="col-sm-4">
      <div class="thumbnail">
          <img src="Image/sign/toyota.jpg" alt="Paris" width="400" height="300">
         <a href="Toyota.jsp"> <p><strong>Toyota</strong></p> </a>
        <p>Yes, we built Paris</p>
      </div>
    </div>
      
    <div class="col-sm-4">
      <div class="thumbnail">
                    <img src="Image/sign/tata.png" alt="Paris" width="400" height="300">
                    <a href="Tata.jsp"> <p><strong>Tata</strong></p> </a>
        <p>We built New York</p>
      </div>
    </div>
      <div class="col-sm-4">
      <div class="thumbnail">
          <img src="Image/volkswagen.jpg" alt="Paris" width="400" height="300">
                     <a href="Volkswagen.jsp"> <p><strong>Tata</strong></p> </a>
        <p>We built New York</p>
      </div>
    </div>
     
       
  </div>
      
     <div id="menu1" class="tab-pane fade">
     <h3>Emi/budget</h3>
         <div class="row text-center">
    
    </div>
       <div class="col-sm-4">
           <a href="Tata.jsp"> <p><strong>2 To 4 lakh</strong></p></a>
        <p>between</p>
    </div>
       <div class="col-sm-4">
           <a href="Mahindra.jsp">   <p><strong>4 To 8 lakh</strong></p></a>
        <p>between</p>
    </div>
     <div class="col-sm-4">
         <a href="Volkswagen.jsp"> <p><strong>8 To 12 lakh</strong></p></a>
        <p>between</p>
    </div> 
     <br>
     <br>
          <br>
     <br>
          <br>
     <br>
          <br>
     <br>
     <div class="col-sm-4">
         <a href="Toyota.jsp"> <p><strong>12 To 18 lakh</strong></p></a>
        <p>between</p>
    </div>  
     <div class="col-sm-4">
         <a href="Mahindra.jsp"> <p><strong>18 To 20 lakh</strong></p></a>
        <p>between</p>
    </div>  
     <div class="col-sm-4">
         <a href="Honda.jsp"><p><strong>20To 40 lakh</strong></p></a>
        <p>between</p>
    </div>  
       
  </div>
     <div id="menu2" class="tab-pane fade">
      <h3>FUEL TYPE</h3>
         <div class="row text-center">
    
    </div>
       <div class="col-sm-4">
      <div class="thumbnail">
          <img src="Image/sign/petrol.jpg" alt="Paris" width="400" height="300">
          <a href="Tata.jsp"> <p><strong>PETROL</strong></p></a>
        <p>Yes, we built Paris</p>
      </div>
    </div>
       <div class="col-sm-4">
      <div class="thumbnail">
          <img src="Image/sign/diesel.jpg" alt="Paris" width="400" height="300">
          <a href="Honda.jsp"> <p><strong>DIESEL</strong></p></a>
        <p>Yes, we built Paris</p>
      </div>
    </div> <div class="col-sm-4">
      <div class="thumbnail">
          <img src="Image/sign/cng.jpg" alt="Paris" width="400" height="300">
          <a href="mahindra.jsp"> <p><strong>CNG</strong></p></a>
        <p>Yes, we built Paris</p>
      </div>
    </div>
       <div class="col-sm-4">
      <div class="thumbnail">
          <img src="Image/sign/electric.jpg" alt="Paris" width="400" height="300"/>
          <a href="Toyota.jsp"><p><strong>ELECTRIC</strong></p></a>
        <p>Yes, we built Paris</p>
      </div>
    </div>
       
    </div>
    <div id="menu3" class="tab-pane fade">
        <a href="Honda.jsp"> <h3>BODY TYPE</h3></a>
        <div class="row text-center">
    
    </div>
       <div class="col-sm-4">
      <div class="thumbnail">
          <img src="Image/sign/hatchback.jpg" alt="Paris" width="400" height="300">
          <a href="Honda.jsp"> <p><strong>HATCHBACK</strong></p></a>
        <p>Yes, we built Paris</p>
      </div>
    </div>
       <div class="col-sm-4">
      <div class="thumbnail">
          <img src="Image/sign/siddn.jpg" alt="Paris" width="400" height="300">
          <a href="Toyota.jsp"> <p><strong>SEDAN</strong></p></a>
        <p>Yes, we built Paris</p>
      </div>
    </div> <div class="col-sm-4">
      <div class="thumbnail">
          <img src="Image/sign/comsidan.jpg" alt="Paris" width="400" height="300">
          <a href="maruti.jsp"><p><strong>COMPACT SEDAN</strong></p></a>
        <p>Yes, we built Paris</p>
      </div>
    </div>
       <div class="col-sm-4">
      <div class="thumbnail">
          <img src="Image/sign/suvv.jpg" alt="Paris" width="400" height="300">
          <a href="Volkeswagen.jsp"><p><strong> SUV/MUV</strong></p></a>
        <p>Yes, we built Paris</p>
      </div>
       </div>
    </div>
  </div></div>
  </div>
      
</body>
</html>
