
<script type="text/javascript">
var app = angular.module('myApp', []);
app.controller('validateCtrl', function($scope) {
    $scope.use = '';
    $scope.ema = '';
    
    $scope.user = '';
    $scope.email = '';
    console.log('Appp');
   
    
    console.log('Appo');
});
</script>

<nav class=" navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
         <a class="navbar-brand" href="home2.jsp"> <h4><u>CarAddiction</u></h4></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">New Cars <span class="caret"></span></a>
          
        <ul class="dropdown-menu">
          <li><a href="searchnew.jsp">Search Cars</a></li>
          <li><a href="Tata.jsp">Upcoming cars</a></li>
          <li><a href="Mahindraa.jsp">Offer and discount</a></li>
              <li><a href="carvideoss.jsp">Car videos</a></li>
        </ul>
        </li>
          
       
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Reviews and news<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Car News</a></li>
           
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
          <li><a href="dealer.jsp">dealer 1</a></li>
           
        </ul>
      </li>
  
      </ul>
      
         <ul class="nav navbar-nav navbar-right">
  
                      <li><a><span><font size="2" color="yellow">WELCOME,<%=session.getAttribute("USERS")%></font></span></a></li>

                

                        <li id="myBtn"><a href="#"><span class="glyphicon glyphicon-log-in" id="myBtn"></span> Login</a></li>

                        <li id="myBtnn"><a href="#"><span class="glyphicon glyphicon-apple" id="myBtnn"></span> ADMIN LOGIN</a></li>

           

      </ul>
    </div>
  </div>
</nav>
    <!-- Modal -->
    
    <div ng-app="myApp" ng-controller="validateCtrl">
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
 
 
				</div>

			</div><!-- modal-content -->
		</div><!-- modal-dialog -->
	</div><!-- modal -->
	
                    </div>
    
    <div class="modal fade" id="myModalo" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> INSERT YOUR VEHICLE INFO</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
            
            <form action="sellcar" 
name="myForm" method="post" enctype="multipart/form-data" novalidate>

   
<p><label for="USER"><span class="glyphicon glyphicon-user"></span>your name</label><br>
<input type="text" name="name" ng-model="user" required>
 <span style="color:red" ng-show="myForm.name.$dirty && myForm.name.$invalid">
<span ng-show="myForm.name.$error.required"> <img src="angry.jpg" alt="" width="30" height="30"/>User name Required</span>
 </span>
</p>

<p><label for="USER"><span class="glyphicon glyphicon-user"></span>your vehical name</label><br>
<input type="text" name="carname" ng-model="carname" required>
 <span style="color:red" ng-show="myForm.carname.$dirty && myForm.carname.$invalid">
<span ng-show="myForm.carname.$error.required"> <img src="angry.jpg" alt="" width="30" height="30"/>User name Required</span>
 </span>
</p>

 
<p><label for="MOB-NUMBER"><span class=" glyphicon glyphicon-globe"></span> vehical used in KM.</label>
<input type="text" ng-model="KM" name="km" ng-pattern="/^\d{0,5}(\.\d{1,9})?$/" required>
 
    <span ng-show="myForm.km.$error.required">used car in Km. is required.</span>
    <span ng-show="myForm.km.$error.pattern">Please enter valid number!</span></p> 

<label for="MOB-NUMBER"><span class=" glyphicon glyphicon-globe"></span> Your price(Max. 99Lakh)</label>
<p><input type="text" ng-model="mobil" name="price" ng-pattern="/^\d{0,7}(\.\d{1,9})?$/" required>
    <span ng-show="myForm.price.$error.required">price is required.</span>
    <span ng-show="myForm.price.$error.pattern">Please enter valid number!</span></p>

<label for="USERA"><span class=" glyphicon glyphicon-globe"></span>UPLOAD YOUR VEHICAL PICTURE</label>

<p><input type="file" ng-model="ml" name="image" class="form-control" required/><br/><br/>
 <span ng-show="myForm.image.$error.required"> </span>
</p>
<label for="ADDRESS"><span class=" glyphicon glyphicon-globe"></span> ADDRESS</label>
<p> <input type="text" class="form-control" id="address" name="address" ng-model="mol" placeholder="enter your address" required>
 <span ng-show="myForm.address.$error.required"> <img src="angry.jpg" alt="" width="30" height="30"/>AddressRequired</span>
                       
</p>
 

<p><button type="submit"   class="btn btn-success btn-block"  ng-disabled="myForm.name.$error.required||  
           myForm.carname.$error.required|| myForm.price.$error.required || myForm.price.$error.pattern || myForm.km.$error.required || myForm.km.$error.pattern ||   myForm.address.$error.required ">
             <span class="glyphicon glyphicon-off"></span> SELL YoUR CAR</button>
                 
     </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          
        </div>
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
              <input type="text" class="form-control" id="usrname" name="NAME" placeholder="Enter email">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="text" class="form-control"   name="PASSWORD" placeholder="Enter password">
            </div>
            <div class="checkbox">
              <label><input type="checkbox" value="" checked>Remember me</label>
            </div>
              <button type="submit" class="btn btn-success btn-block" ><span class="glyphicon glyphicon-off"></span> Login</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
           </div>
      </div>
      </div>
    </div>
    
    <div class="modal fade" id="myM" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span>Insert your feedback</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form" action="fedbck" method="post">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="text" class="form-control" id="usrname" name="coment" placeholder="enter our valuable experience">
            </div>
              
              
               <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> name</label>
              <input type="text" class="form-control" id="name" name="name" value="comment by-<%=session.getAttribute("USERS")%>" readonly="readonly">
            </div>
              
             
              
              
              
              <button type="submit" class="btn btn-success btn-block" ><span class="glyphicon glyphicon-off"></span>comment</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          
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
          <form action="${pageContext.request.contextPath}/logoutt" method="post">
               <h1>WELCOME,<%=session.getAttribute("USERS")%></h1>
  
    <button type="submit" value="Logoutt"  class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Signout</button>
</form>
            
         </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
        
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
          <form action="${pageContext.request.contextPath}/logoutt" method="post">
               <h1>WELCOME,<%=session.getAttribute("USERS")%></h1>
  
    <button type="submit" value="Logoutt"  class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Signout</button>
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
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          </div>
      </div>
  </div>
 </div>
