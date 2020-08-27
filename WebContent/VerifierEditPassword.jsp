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
<link type ="text/css" rel="stylesheet" href="AllCss/changePwd.Css.css">

<script src="jquery3-4-1.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script> -->
<script type="text/javascript" src="materialize-v1.0.0/materialize/js/materialize.min.js"></script>
<script type="text/javascript" src="bootstrap-4.0.0-dist/js/bootstrap.min.js"></script>


</head>
<body>
<% String phone= request.getParameter("nm");%>

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
        <a class="dropdown-item" href="#">Log Out</a>
        <a class="dropdown-item" href="#">Delete Account</a>
      </div>
    </li>
  </ul>
</nav>

<div class="container-fluid bg">

	<div class="row black" style="width: 100%; height: 11vh;" style="margin: 0; padding: 0;"></div>
	<div class="row signup-form">
			
			
				<div class="signup-form-title-pic" style= "background-image: url('assets/antixbicycle.jpg');">
					<span class="signup-form-title">
						Change Password
					</span>
				</div>
				<div class="signup-container">
				
				
					<form action="verifierEditPassword?nm=<%=phone %>" method="post" onsubmit="passwordChange()">
					
					
					
					
					
					
					<label class="label0" for="city">Contact no : </label>
					<input class="input0" type="text" id="no" name="no" disabled placeholder="Enter your phone no" value="<%=phone %>" required/><br>
					
					
					 
					 <label class="label0" for="opwd">Old Password : </label>
					<input class="input0" type="password" id="opwd" name="opwd" placeholder="Enter old Password" required/><br>
					
	
					
					<label class="label0" for="pwd">New Password : </label>
					<input class="input0" type="password" id="pwd" name="pwd" placeholder="Enter new Password" required/><br>
					
						<label class="label0" for="pwd">Confirm Password : </label>
					<input class="input0" type="password" id="cpwd" name="cpwd" placeholder="Enter cofirm Password" required/>
					
					
					
					
					
					
					<div class="buttons text-center">
					<span class="btn1">
					 	<button type="submit">Change password</button>
					</span>
					</div>	
					
					
				</form>
				

				
				</div>
		
		</div>		
    
</div>

<script>
	function passwordChange()
	{
		alert("Password Changed Successfully!!");
	}
	</script>

</body>
</html>