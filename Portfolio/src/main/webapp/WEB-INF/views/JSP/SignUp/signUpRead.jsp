<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="col-sm-8 text-left"> 
<form action="<c:url value='/'/>" style="border:1px solid #ccc; margin:10px">
  <div class="container">
    <h1>Sign Up</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>

    <label for="email"><b>Email</b></label>
	<p>username : ${resultMap.USEREMAIL}</p>
    <label for="psw"><b>Password</b></label>
	<p>password : ${resultMap.PASSWORD}</p>

    <label for="psw-repeat"><b>Repeat Password</b></label>
	<p>password repeat : ${resultMap.PASSWORD_REPEAT}</p>
    
    <label>
	<p> remember state : ${resultMap.remember}</p>
    </label>
    

    <div class="clearfix">
      <button type="submit" class="signupbtn">Home</button>
    </div>
  </div>
</form>
<hr>
</div>

