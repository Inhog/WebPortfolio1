<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="col-sm-8 text-left"> 
	<div class="wrapper">
			<h2 class="form-signin-heading">Please login</h2>
			<input type="text" class="form-control" name="username"
				placeholder="Email Address" required="" autofocus="" />
			<input type="password" class="form-control" name="password"
				placeholder="Password" required="" /> 
				<label class="checkbox">
			</label>
			<a href="<c:url value='/Login/loginRead'/>"><button class="btn btn-lg btn-primary btn-block">Login</button></a>
		</form>
	</div>
<hr>
</div>
