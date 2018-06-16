<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="col-sm-8 text-left"> 
	<div class="wrapper">
			<h2 class="form-signin-heading">Login Info</h2>
			<p>user : ${resultMap.USERNAME}</p>
			<p>password : ${resultMap.PASSWORD}</p>
			<a href="<c:url value='/'/>"><button class="btn btn-lg btn-primary btn-block">Home</button></a>
	</div>
<hr>
</div>
