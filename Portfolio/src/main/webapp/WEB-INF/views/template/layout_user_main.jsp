<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<tiles:insertAttribute name="layout.header" />
<title><tiles:getAsString name="layout.title" /></title>
</head>
<body>
	<div id="wrapper">
		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0"> 
			<tiles:insertAttribute name="layout.top" />
				<div class="container-fluid text-center">
					<div class="row content">
						<tiles:insertAttribute name="layout.left" />
						<tiles:insertAttribute name="layout.body" />
						<tiles:insertAttribute name="layout.right" />
					</div>
				</div>
			<!-- /.navbar-static-side -->
		</nav>
			<tiles:insertAttribute name="layout.footer" />
	</div>
	<!-- /#wrapper -->
</body>
</html>