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
<link type ="text/css" rel="stylesheet" href="AllCss/sellerSignupCss.css">

<script src="jquery3-4-1.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script> -->
<script type="text/javascript" src="materialize-v1.0.0/materialize/js/materialize.min.js"></script>
<script type="text/javascript" src="bootstrap-4.0.0-dist/js/bootstrap.min.js"></script>

<style>
	.nav-item a:hover {
text-decoration: none;
color: white;
font-size : 16px;}

.nav-link {
font-size: 16px;

}

.navbar {
padding: 0 50px ;
}

.nav-link {
    display: block;
    padding: 0;
}


nav i, nav i.material-icons {
display: inline;
font-size: 25px;
margin: 0 5px;
line-height: 0;
vertical-align: -6px; }

nav ul li {
padding: 0 10px;
font-size: 16px;
}
	
	
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
		  <a href="sellerLogin.jsp"><img src="assets/antixbicycle.jpg"></a>
		
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
		
         <div class="row black" style="width: 100%; height: 11vh;"></div>  
        
        <div class="row signup-form">
			
			
				<div class="signup-form-title-pic" style= "background-image: url('assets/antixbicycle.jpg');">
					<span class="signup-form-title">
						Sign Up
					</span>
				</div>
				<div class="signup-container">
				
				
					<form action="sellerSignupAuth" method="post" >
					
					
					<label class="label0" for="name">Name : </label>
					<input class="input0" type="text" id="name" name="name" placeholder="Enter Name" required/><br>
					
					<label class="label0" for="no">Contact no. : </label>
					<input class="input0" type="text" id="no" name="no" placeholder="Enter Phone number" required/><br>
										
					<label class="label0" for="city">City : </label>
					<input class="input0" type="text" id="city" name="city" placeholder="Enter your city" required/><br>
					
					<label class="label0" for="acc">Account no : </label>
					<input class="input0" type="text" id="acc" name="acc" placeholder="Enter your account number" required/><br>
					
					<label class="label0" for="accnm">Account name : </label>
					<input class="input0" type="text" id="accnm" name="accnm" placeholder="Enter your Account Holder's name" required/><br>
					
					<label class="label0" for="ifsc">IFSC code : </label>
					<input class="input0" type="text" id="ifsc" name="ifsc" placeholder="Enter your IFSC code" required/><br>
					
					<label class="label0" for="branch">Bank Branch : </label>
					<input class="input0" type="text" id="branch" name="branch" placeholder="Enter your Bank Branch name" required/><br>
					
					<label class="label0"id="addmargin" for="add">Address : </label>
					 <textarea id="add" placeholder="Address" name="add" class="materialize-textarea input0" required></textarea><br>
					
					
					<label class="label0" for="uname">User Name : </label>
					<input class="input0" type="text" id="uname" name="uname" placeholder="Enter Username" required/><br>
					
					
					<label class="label0" for="pwd">Password : </label>
					<input class="input0" type="password" id="pwd" name="pwd" placeholder="Enter Password" required/>
					
					
					
					<div class="buttons text-center">
					<span class="btn1">
					 	<button type="submit">Login </button>
					</span>
					</div>	
					
					
				</form>
				

				
				</div>
		
		</div>		
    
        
       </div> 


</body>
</html>