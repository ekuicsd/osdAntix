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
<link type ="text/css" rel="stylesheet" href="AllCss/VerifierProfileCss.css">

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

.dropdown-item {
height: 45px;
padding: 0;
background-color: black;
font-weight: bold;
color: #26a69a;
border-bottom: 1px solid gray;
}

.dropdown-menu a:hover {
height: 45px;
padding: 0;
background-color: black;
font-weight: bold;
color: #26a69a;
}

.dropdown-menu {
padding: 0 10px;
margin: 0;
left: 20px;
padding-bottom: 20px;
background-color: black;
text-align: center;
border-radius: 10px;
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
<%String phone=request.getParameter("nm"); %>


	<nav class="navbar navbar-expand-sm teal lighten-1 justify-content-end fixed-top">
 <span class="logo">
		  <a href="verifierMainProfile.jsp?nm=<%=phone%>"><img src="assets/antixbicycle.jpg"></a>
		
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
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        <i class="material-icons">person</i>Your Account
      </a>
      <div class="dropdown-menu" >
        <a class="dropdown-item" href="verifierMainProfile.jsp?nm=<%=phone%>">Your Profile</a>
        <a class="dropdown-item" href="verify.jsp">Log Out</a>
        <a class="dropdown-item" href="verifierDelete?phno=<%=phone%>">Delete Account</a>
      </div>
    </li>
  </ul>
</nav>
	
	

	<div class="container-fluid ">
	
	<div class="row black" style="width: 100%; height:11vh;"></div>

	<div class="bg">

	<div class="row login-form ">
			
			
				<div class="login-form-title-pic" style= "background-image: url('assets/antixbicycle.jpg');">
					<span class="login-form-title">
						Verify Products
					</span>
				</div>
				
				<div class="login-container">
				<form action="verifiedFormAuth?nm=<%=phone %>" method="post" onsubmit="productVerified()" >
					<label class="label" for="rid">Request ID : </label>
					<input class="input" type="text" id="rid" name="rid" placeholder="Enter Request ID of product" required/><br>
			  	  
			  	  
			  	  <label class="label" for="pnm">Company : </label>
					<input class="input" type="text" id="pnm" name="pnm" placeholder="Enter product company" required/><br>
			  	  
			  	  <label class="label" for="pid">Product ID : </label>
					<input class="input" type="text" id="pid" name="pid" placeholder="Enter product ID" optional/><br>
			  	  
			  	  
			  	 <label class="gen">
			        <input class="with-gap" name="group1" value="verified" type="radio"  required/>
			        <span>Genuine</span>
			      </label>
			      
			      
			      <label class="ngen">
			        <input class="with-gap" name="group1" value="not verified" type="radio"  />
			        <span>Not Genuine</span>
			      </label>
					
					
					
			  	  <div class="buttons text-center">
					<span class="btn1">
					 	<button type="submit">Verified </button>
					</span>
					</div>	
			  	  
			  	  
					
					
				</form>
				
				</div>
		
		</div>
	</div>

	</div>
	<script>
	function productVerified()
	{
		alert("Product Verified Successfully!!");
	}
	</script>

</body>
</html>


