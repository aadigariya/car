<nav class=" navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
        <a class="navbar-brand" href="home.jsp"><u>CarAddiction</u></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">New Cars <span class="caret"></span></a>
          
        <ul class="dropdown-menu">
          <li><a href="searchnew.jsp">Search Cars</a></li>
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
              <li><a href="by state.jsp">by city</a></li>
              <li><a href="byprice.jsp">by price</a></li>
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
            <li><a><span><font size="2" color="yellow">Welcome,Guest!!</font></span></a></li>

                 <li id="myBtn"><a href="#"><span class="glyphicon glyphicon-log-in" id="myBtn"></span> Login</a></li>

     <li id="myBt"><a href="#"><span class="glyphicon glyphicon-log-in" id="myBt"></span> Signup</a></li>
           

      </ul>
    </div>
  </div>
</nav>
    <!-- Modal -->
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
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="text" class="form-control" id="usrname" name="NAME" placeholder="Enter email">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="text" class="form-control" id="psw" name="PASSWORD" placeholder="Enter password">
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
          <h4><span class="glyphicon glyphicon-lock"></span>SIGN UP</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
            <form ng-app="myApp" ng-controller="validateCtrl" 
name="myForm" novalidate>

     <label for="sel1">Select</label>
      <select class="myform" id="gender">
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
                  <!-- Date input -->
        <label class="control-label" for="date"><span class="glyphicon glyphicon-calendar"></span> DATE</label>
        <input class="form-control" id="date" name="date" placeholder="MM/DD/YYY" type="text"/>
      
               
  <label for="ADDRESS"><span class=" glyphicon glyphicon-globe"></span> ADDRESS</label>
              <input type="text" class="form-control" id="address" name="address" placeholder="enter your address">
              
              
        

 
<script>
var app = angular.module('myApp', []);
app.controller('validateCtrl', function($scope) {
    $scope.user = '';
    $scope.email = '';
});
  $(document).ready(function(){
      var date_input=$('input[name="date"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'mm/dd/yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })
    
    
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
