<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css'/>">
  <script src="<c:url value='/resources/js/jquery.min.js'/>"></script>
  <script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
  <style>
  
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 100%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 80%;
    }
}
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="../../../index.html">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="../../../index.html">Home</a></li>
        <li><a href="../About/index.html">About</a></li>
        <li class="active"><a href="./index.html">List</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
        <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;" glyphicon glyphicon-log-in>Login</button>
	<div id="id01" class="modal">
  <form class="modal-content animate" action="/action_page.php">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="../../images/login.png" alt="login" >
    </div>

    <div class="container">
      <label for="uname"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
        
      <button type="submit">Login</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>
    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div></a></li>
      </ul>
    </div>
  </div>
</nav>
<div class="container-fluid text-center">    
	<div class="row content">
		<div class="col-sm-2 sidenav">
      		<p><a href="./index.html">Main</a></p>
      		<p><a href="./index.html">Notice</a></p>
    	</div>
   		<div class="col-sm-8 text-left">
			<div class="container" style="width:100%">
				<table class="table table-bordered">
				   <thead>
				   <caption> 글쓰기 </caption>
				   </thead>
				   <tbody>
				       <form action="write_ok.jsp" method="post" encType="multiplart/form-data">
				           <tr>
				               <th>제목: </th>
				               <td><input type="text" placeholder="제목을 입력하세요. " name="subject" class="form-control"/></td>
				           </tr>
				           <tr>
				               <th>내용: </th>
				               <td><textarea cols="10" placeholder="내용을 입력하세요. " name="content" class="form-control" style="height:90px"></textarea></td>
				           </tr>
				           <tr>
				               <th>첨부파일: </th>
				               <td><input type="text" placeholder="파일을 선택하세요. " name="filename" class="form-control"/></td>
				           </tr>
				           <tr>
				               <th>비밀번호: </th>
				               <td><input type="password" placeholder="비밀번호를 입력하세요" class="form-control"/></td>
				           </tr>
				           <tr>
				               <td colspan="2">
				                   <input type="button" value="등록" onclick="sendData()" class="btn btn-default pull-right"/>
				                   <input type="button" value="reset" class="btn btn-default pull-left"/>
				                   <a class="btn btn-default pull-right" href="./index.html">글 목록</a>
				               </td>
				           </tr>
				       </form>
				   </tbody>
				</table>
				</div>
			</div>
		<div class="col-sm-2 sidenav">
			<div class="well">
				<p>ADS</p>
	      	</div>
		    <div class="well">
				<p>ADS</p>
		    </div>
		</div>
	</div>
</div>

<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>


<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

</body>
</html>