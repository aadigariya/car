<%-- 
    Document   : newjsp2
    Created on : 29 Jul, 2017, 7:30:56 PM
    Author     : AaDI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
  
      
    </head>
    
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
<body>
    <div ng-app="myApppo" ng-controller="validateC">
        
<form action="doorstep"  
      name="myFom" method="post"   novalidate>
<label for="usr">Name:</label>
<input type="text" name="name" ng-model="use" required>
 <span style="color:red" ng-show="myFom.name.$dirty && myFom.name.$invalid">
<span ng-show="myFom.name.$error.required"> <img src="angry.jpg" alt="" width="30" height="30"/>User name Required</span>
 </span>

<p><label for="E-MAIL"><span class="glyphicon glyphicon-envelope"></span>E-MAIL</label><br>
<input type="email" name="email" ng-model="ema" required>
<span style="color:red" ng-show="myFom.email.$dirty && myFom.email.$invalid">
<span ng-show="myFom.email.$error.required">Email is required.</span>
<span ng-show="myFom.email.$error.email"><img src="angry.jpg" alt="" width="30" height="30"/></span>
</span>
</p>
  <label for="MOB-NUMBER"><span class=" glyphicon glyphicon-globe"></span> MOB-NUMBER</label>
<p><input type="text" ng-model="mobi" name="mobile" ng-pattern="/^[7-9][0-9]{9}$/" required>
    <span ng-show="myFom.mobile.$error.required">number is required.</span>
    <span ng-show="myFom.mobile.$error.pattern">Please enter valid number!</span></p>  



<p><button type="submit"   class="btn btn-default btn-block"  ng-disabled="myFom.name.$error.required||  
           myFom.email.$error.required ||myFom.email.$error.email ||myFom.mobile.$error.required ||myFom.mobile.$error.pattern"> Register</button>
                 
</form>
 
 
        
        <br>
        
        
          <form action="cmcm"  
name="myform" method="post" enctype="multipart/form-data"   novalidate>

<label for="sel1">Select</label>
      <select class="myform" name="gender">
        <option>Mr.</option>
        <option>Mrs.</option>
         </select>
<p><label for="USER"><span class="glyphicon glyphicon-user"></span>USER</label><br>
<input type="text" name="user" ng-model="user" required>
 <span style="color:red" ng-show="myform.user.$dirty && myform.user.$invalid">
<span ng-show="myform.user.$error.required"> <img src="angry.jpg" alt="" width="30" height="30"/>User name Required</span>
 </span>
</p>

<p><label for="PASSWORD"><span class="glyphicon glyphicon-lock"></span>PASSWORD</label><br>
        <input type="password" ng-model="uuserPassword" name="userPassword" required ng-pattern="/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/">
<span style="color:red" ng-show="myform.userPassword.$dirty && myform.userPassword.$invalid">
<span ng-show="myform.userPassword.$error.required"><img src="angry.jpg" alt="" width="30" height="30"/>PASSWORD is required.</span>
<span ng-show="myform.userPassword.$error.pattern"><img src="angry.jpg" alt="" width="30" height="30"/>Password should be atleast 8 characters long
                    and should contain one number,one character and one special
                    character</span>
</span>

</p>

<p><label for="E-MAIL"><span class="glyphicon glyphicon-envelope"></span>E-MAIL</label><br>
<input type="email" name="email" ng-model="email" required>
<span style="color:red" ng-show="myform.email.$dirty && myform.email.$invalid">
<span ng-show="myform.email.$error.required">Email is required.</span>
<span ng-show="myform.email.$error.email"><img src="angry.jpg" alt="" width="30" height="30"/></span>
</span>
</p>
  <label for="MOB-NUMBER"><span class=" glyphicon glyphicon-globe"></span> MOB-NUMBER</label>
<p><input type="number" ng-model="mobile" name="mobile" ng-pattern="/^[7-9][0-9]{9}$/" required>
    <span ng-show="myform.mobile.$error.required">number is required.</span>
    <span ng-show="myform.mobile.$error.pattern">Please enter valid number!</span></p>             
  <label for="ADDRESS"><span class=" glyphicon glyphicon-globe"></span> ADDRESS</label>
              <input type="text" class="form-control" id="address" name="address" placeholder="enter your address">
              
       <label for="USERA"><span class=" glyphicon glyphicon-globe"></span>UPLOAD YOUR PROFILE PIC</label>
                     <input type="file" name="image" required="required"/><br/><br/>
    
<p><button type="submit"   class="btn btn-success btn-block"  ng-disabled="myform.user.$dirty && myform.user.$invalid ||  
            myform.email.$dirty && myform.email.$invalid || myform.userPassword.$dirty && myform.userPassword.$invalid "><span class="glyphicon glyphicon-off"></span>SIGNUP</button>
                 
     </form>
        
        
        
        
        
    </div>   
 
    </body>
</html>
