
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
 