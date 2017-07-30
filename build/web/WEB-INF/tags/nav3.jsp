<nav class=" navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
         <a class="navbar-brand" href="home.jsp"> <h4><u>CarAddiction</u></h4></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">New Cars <span class="caret"></span></a>
          
        <ul class="dropdown-menu">
          <li><a href="searchnew.jsp">Search Cars</a></li>
          <li><a href="Tata.jsp">Upcoming cars</a></li>
          <li><a href="Mahindra.jsp">Offer and discount</a></li>
             <li><a href="carvideoss.jsp">Car videos</a></li>
        </ul>
        </li>
          
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"> signup for Used cars<span class="caret"></span></a>
        <ul class="dropdown-menu">
             <li class="dropdown-submenu">
                                    <li id="mybt">   <button type="button" class="btn btn-success" id="mybotn">Sell your car here</button></li>

            
         </ul>
      </li>
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Reviews and news<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="https://www.carwale.com/tata-cars/nexon/expert-reviews-30244/">Car News</a></li>
           <li><a href="feedbackk.jsp">Write Review</a></li>
        </ul>
      </li>
          
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Research <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">blog</a></li>
          <li><a href="compare.jsp">compare</a></li>
         </ul>
      </li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Dealers<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="dealer.jsp">dealer1</a></li>
           
        </ul>
      </li>
      
      
      </ul>
      
        
        <ul class="nav navbar-nav navbar-right">
 
            <li><a><span><font size="2" color="yellow">Welcome,Guest!!</font></span></a></li>

                 <li id="myBtn"><a href="#"><span class="glyphicon glyphicon-log-in" id="myBtn"></span> Login</a></li>

     <li id="myBt"><a href="#"><span class="glyphicon glyphicon-log-in" id="myBt"></span> Signup</a></li>
           <li id="myBtnn"><a href="#"><span class="glyphicon glyphicon-apple" id="myBtnn"></span> ADMIN LOGIN</a></li>

           

      </ul>
    </div>
  </div>
</nav>
    <!-- Modal -->
     <div class="modal fade" id="myModalo" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Login</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form" action="sellcar" method="post" enctype="multipart/form-data">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span>YOUR NAME</label>
              <input type="text" class="form-control" id="usrname" name="name" placeholder="Enter your name">
            </div>
            
              <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span>VECHICAL NAME</label>
              <input type="text" class="form-control" id="usrnam" name="carname" placeholder="Enter name">
            </div>
              <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span>USED IN km.</label>
              <input type="text" class="form-control" id="usr" name="km" placeholder="Enter km">
            </div>
              <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span>YOUR PRICE</label>
              <input type="text" class="form-control" id="us" name="price" placeholder="Enter price">
            </div>
              <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span>ADDRESS</label>
              <input type="text" class="form-control" id="usrna" name="address" placeholder="Enter address">
            </div>
              <div class="form-group">
                <label for="USERA"><span class=" glyphicon glyphicon-globe"></span>UPLOADD YOUR VEHICAL PICTURE</label>
                     <input type="file" name="image" required="required"/><br/><br/>
            </div>
            <div class="checkbox">
              <label><input type="checkbox" value="" checked>Remember me</label>
            </div>
              <button type="submit" class="btn btn-success btn-block" ><span class="glyphicon glyphicon-off"></span> Login</button>
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
    
    
      <div class="modal fade" id="myModalll" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Login</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form" action="adminlogin" method="post">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="text" class="form-control" id="usrname" name="NAME" placeholder="Enter email" required>
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="password" class="form-control"   name="PASSWORD" placeholder="Enter password" required>
            </div>
            <div class="checkbox">
              <label><input type="checkbox" value="" checked>Remember me</label>
            </div>
              <button type="submit" class="btn btn-success btn-block" ><span class="glyphicon glyphicon-off"></span> Login</button>
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
          <form role="form" action="NewServlet" method="post">
            <div class="form-group">
                <h3>Sorry, username or password error!</h3>
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="text" class="form-control" id="usrname" name="USERS" placeholder="Enter email">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="password" class="form-control" id="psw" name="PASSWORD" placeholder="Enter password">
            </div>
            <div class="checkbox">
              <label><input type="checkbox" value="" checked>Remember me</label>
            </div>
              <button type="submit" class="btn btn-success btn-block" ><span class="glyphicon glyphicon-off"></span> Login</button>
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
 <div class="modal fade" id="myModall" role="dialog">
    <div class="modal-dialog">
       
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Login</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">     
 <form action="cmcm" ng-app="myApp" ng-controller="validateCtrl" 
name="myForm" method="post" enctype="multipart/form-data" novalidate>

 <label for="sel1">Select</label>
      <select class="myform" name="gender">
        <option>Mr.</option>
        <option>Mrs.</option>
         </select>
<p><label for="USER"><span class="glyphicon glyphicon-user"></span>USER</label><br>
<input type="text" name="user" ng-model="user" required>
 <span style="color:red" ng-show="myForm.user.$dirty && myForm.user.$invalid">
<span ng-show="myForm.user.$error.required"> <img src="angry.jpg" alt="" width="30" height="30"/>User name Required</span>
 </span>
</p>

<p><label for="PASSWORD"><span class="glyphicon glyphicon-lock"></span>PASSWORD</label><br>
        <input type="password" ng-model="uuserPassword" name="userPassword" required ng-pattern="/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/">
<span style="color:red" ng-show="myForm.userPassword.$dirty && myForm.userPassword.$invalid">
<span ng-show="myForm.userPassword.$error.required"><img src="angry.jpg" alt="" width="30" height="30"/>PASSWORD is required.</span>
<span ng-show="myForm.userPassword.$error.pattern"><img src="angry.jpg" alt="" width="30" height="30"/>Password should be atleast 8 characters long
                    and should contain one number,one character and one special
                    character</span>
</span>

</p>

<p><label for="E-MAIL"><span class="glyphicon glyphicon-envelope"></span>E-MAIL</label><br>
<input type="email" name="email" ng-model="email" required>
<span style="color:red" ng-show="myForm.email.$dirty && myForm.email.$invalid">
<span ng-show="myForm.email.$error.required">Email is required.</span>
<span ng-show="myForm.email.$error.email"><img src="angry.jpg" alt="" width="30" height="30"/></span>
</span>
</p>
  <label for="MOB-NUMBER"><span class=" glyphicon glyphicon-globe"></span> MOB-NUMBER</label>
<p><input type="number" ng-model="mobile" name="mobile" ng-pattern="/^[7-9][0-9]{9}$/" required>
    <span ng-show="myForm.mobile.$error.required">number is required.</span>
    <span ng-show="myForm.mobile.$error.pattern">Please enter valid number!</span></p>             
  <label for="ADDRESS"><span class=" glyphicon glyphicon-globe"></span> ADDRESS</label>
              <input type="text" class="form-control" id="address" name="address" placeholder="enter your address">
              
                          <input type="file" name="image" required="required"/><br/><br/>

        

 
<script>
var app = angular.module('myApp', []);
app.controller('validateCtrl', function($scope) {
    $scope.user = '';
    $scope.email = '';
});

    
    
</script>

<p><button type="submit"   class="btn btn-success btn-block"  ng-disabled="myForm.user.$dirty && myForm.user.$invalid ||  
            myForm.email.$dirty && myForm.email.$invalid || myForm.userPassword.$dirty && myForm.userPassword.$invalid "><span class="glyphicon glyphicon-off"></span> Login </p></button>
                 
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
