<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
    <div id="wrapper">
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Read</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Form Elements
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form" method="POST" action="<c:url value='/member/edit' />">
	                                    <div class="form-group">
											<label>MEMBER_ID Static Control</label>
											<p class="form-control-static">${resultMap.MEMBER_ID}</p>
	                                    </div>
	                                    <div class="form-group">
											<label>PASSWORD Static Control</label>
											<p class="form-control-static">${resultMap.PASSWORD}</p>
	                                    </div>
	                                    <div class="form-group">
											<label>NAME Static Control</label>
											<p class="form-control-static">${resultMap.NAME}</p>
	                                    </div>
	                                    <div class="form-group">
											<label>EMAIL Static Control</label>
											<p class="form-control-static">${resultMap.EMAIL}</p>
	                                    </div>
	                                    <div class="form-group">
											<label>CELLPHONE Static Control</label>
											<p class="form-control-static">${resultMap.CELLPHONE}</p>
	                                    </div>
                                        <button type="submit" class="btn btn-default">Add Button</button>
										<a href="<c:url value='/member/edit' />">Add With a Tag</a>
                                    </form>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                <div class="col-lg-6">
                                    <div class="form-group">
										<label>MEMBER_SEQ Static Control</label>
										<p class="form-control-static">${resultMap.MEMBER_SEQ}</p>
                                    </div>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
</body>
</html>