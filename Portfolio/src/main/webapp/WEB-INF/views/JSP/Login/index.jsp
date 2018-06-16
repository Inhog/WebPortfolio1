<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="col-sm-8 text-left"> 
	<div class="wrapper">
		 <form role="form" method="POST" action="<c:url value='/Login/loginRead'/>">
			<h2 class="form-signin-heading">Please login</h2>			
			<input type="text" class="form-control" name="USERNAME" placeholder="Email Address" autofocus="" required/>
			<input type="password" class="form-control" name="PASSWORD" placeholder="Password" required/>
			<hr/><input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
			<button type ="submit" class="btn btn-lg btn-primary btn-block">Login</button>
		</form>
	</div>
<hr>
</div>
