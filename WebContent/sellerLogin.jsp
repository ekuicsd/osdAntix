 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link type="text/css" rel="stylesheet" href="materialize-v1.0.0/materialize/css/materialize.min.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="bootstrap-4.0.0-dist/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link type ="text/css" rel="stylesheet" href="AllCss/sellerLoginCss.css">

<script src="jquery3-4-1.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script> -->
<script type="text/javascript" src="materialize-v1.0.0/materialize/js/materialize.min.js"></script>
<script type="text/javascript" src="bootstrap-4.0.0-dist/js/bootstrap.min.js"></script>

<style>
.logo {
	position: fixed;
	top: 4px;
	left: 15px;
	z-index: 100;
	
}

.logo img {
	height: 55px;
	width: 100px;
}

.logo a {
pointer: cursor;}




</style>


</head>
<body>


		<nav class="navbar navbar-expand-sm teal lighten-1 justify-content-end fixed-top">
	  <span class="logo">
		  <a href="index.jsp"><img src="assets/antixbicycle.jpg"></a>
		
		</span>
	  <ul class="navbar-nav">
	    <li class="nav-item">
	      <a class="nav-link" href="sell.jsp"><i class="material-icons">search</i>Search Verifier</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="SellerWelcmPage.jsp"><i class="material-icons">camera_alt</i>Sell</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="buy.jsp"><i class="material-icons">collections</i>Buy</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="VerifierWlcmPage.jsp"><i class="material-icons">done_all</i>Verify</a>
	    </li>
	  </ul>
	</nav>

	<div class="container-fluid bg">
	
	<div class="row black" style="width: 100%; height: 8vh; z-index: 200;"></div>
		
		<div class="row login-form">
			
			
				<div class="login-form-title-pic" style= "background-image: url('assets/antixbicycle.jpg');">
					<span class="login-form-title">
						Sign In
					</span>
				</div>
				
				<div class="login-container">
				<form method="post" action="sellerAuth">
					<label class="label0" for="name">User Name : </label>
					<input class="input0" type="text" id="name" name="name" placeholder="Enter Username" required/><br>
					
					
					<label class="label0" for="pwd">Password : </label>
					<input class="input0" type="password" id="pwd" name="pwd" placeholder="Enter Password" required/>
					
					<div class="remember-forgot">
						<label>
					        <input type="checkbox"  />
					        <span class="heading">Remember me</span>
					    </label>
						
						<a href="#" class="txt1">
							Forgot Password ?
						</a>
						
					</div>
					
					<div class="buttons text-center">
					<span class="btn1">
					 	<button type="submit">Login </button>
					</span>
					</div>	
					
					
				</form>
				<div class="text-center">
				<a href="sellerSignup.jsp" class="btn2">
					 	<button>Create new account</button>
					 </a>
			     </div>
				</div>
		
		</div>
	
	</div>


</body>
</html>