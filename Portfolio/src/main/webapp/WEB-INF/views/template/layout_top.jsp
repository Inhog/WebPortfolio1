<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="<c:url value ='/'/>">Logo</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<!-- 이부분은 참고해랏 -->
					<li><a href="<c:url value='/'/>">Home</a></li>
					<li><a href="<c:url value='/About/index'/>">About</a></li>
					<li><a href="<c:url value='/List/index'/>">List</a></li>
				</ul>
		    <ul class="nav navbar-nav navbar-right">
		    	<li><a href="<c:url value='/SignUp/index'/>">Sign UP</a></li>
		     	<li><a href="<c:url value='/Login/index'/>">Log In</a></li>
		    </ul>
			</div>
		</div>
	</nav>
</body>
</html>