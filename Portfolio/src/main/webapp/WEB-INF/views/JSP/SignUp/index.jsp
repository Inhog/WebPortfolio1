<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="col-sm-8 text-left"> 
<form action="<c:url value ='/SignUp/signUpRead'/>" style="border:1px solid #ccc; margin:10px" >
  <div class="container-fluid text-center" style=padding:5px;>
    <h1>Sign Up</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>

    <label for="email"><b>Email</b></label><p/>
    <input type="text" placeholder="Enter Email" name="email" required/><p/>

    <label for="psw"><b>Password</b></label><p/>
    <input type="password" placeholder="Enter Password" name="psw" required/><p/>

    <label for="psw_repeat"><b>Repeat Password</b></label><p/>
    <input type="password" placeholder="Repeat Password" name="psw_repeat" required/>
    <p/>
	    
    <label>
      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
    </label>
    
    <div class="clearfix">
      <a href="<c:url value='/'/>"><button type="button" >Cancel</button></a>
      <button type="submit">Sign Up</button>
    </div>
  </div>
</form>
<hr>
</div>

