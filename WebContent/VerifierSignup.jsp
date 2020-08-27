<%@ page import="service.DBHandler" %>

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
<link type ="text/css" rel="stylesheet" href="AllCss/verifierSignupCss.css">

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

<% DBHandler obj= new DBHandler();
   int id=obj.getVerifierId();%>

<script>

	$(document).ready(function() {
		$("#vrid").val(<%=id%>).css("display","none");
		$("#vid").val(<%=id%>);
	});

</script>

<nav class="navbar navbar-expand-sm teal lighten-1 justify-content-end fixed-top">
   <span class="logo">
		  <a href="VerifierWlcmPage.jsp"><img src="assets/antixbicycle.jpg"></a>
		
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
    <!-- <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        <i class="material-icons">person</i>Your Account
      </a>
      <div class="dropdown-menu" >
        <a class="dropdown-item" href="#">Your Profile</a>
        <a class="dropdown-item" href="index.jsp">Log Out</a>
        <a class="dropdown-item" href="index.jsp">Delete Account</a>
      </div>
    </li> -->
  </ul>
</nav>
	

<div class="container-fluid bg">

<div class="row black" style="width: 100%; height:11vh;"></div>

<div class="row signup-form">
			
			
				<div class="signup-form-title-pic" style= "background-image: url('assets/antixbicycle.jpg');">
					<span class="signup-form-title">
						Sign Up
					</span>
				</div>
				<div class="signup-container">
				
				
					<form action="verifierSignupAuth" method="post" >
					
					<label class="label0" for="vid">Verifier ID :</label>
					<input class="input0" type="text" id="vid" name="vid" placeholder="id" disabled/><br>
					
					<input class="input0" type="text" id="vrid" name="vrid" placeholder="id" />
					
					
					<label class="label0" for="name">Name : </label>
					<input class="input0" type="text" id="name" name="name" placeholder="Enter Name" required/><br>
					
					<label class="label0" for="no">Contact no. : </label>
					<input class="input0" type="text" id="no" name="no" placeholder="Enter Phone number" required/><br>
					
					
					<label class="label0" for="cat">Category : </label>
					
						<select class="form-control loc0" name="cat" required>
				 		<option value="antiques">Antiques</option>
				    	<option value="electronics">Electronics</option>
					    <option value="vehicles">Vehicles</option>
					    <option value="fashion">Fashion</option>
					    <option value="furniture">Furniture</option>
					    <option value="jewellery">Jewellery</option>
				 	
				 		</select>
				 		<br>
				 		
					<%-- 
					<label class="label0" for="state">State : </label>
					
						<select class="form-control loc1">
				 		<%for(int i=1; i<50; i++)
			            {%>
				    	<option><%=i %></option>
					    <%  }%>
				 	
				 		</select>
				 		<br>
					 --%>
					
					
					
					<label class="label0" for="city">City : </label>
					<input class="input0" type="text" id="city" name="city" placeholder="Enter your city location " required/><br>
					
					
					
					
					
					
					<label class="label0"id="addmargin" for="add">Address : </label>
					 <textarea id="add" placeholder="Address" name="add" class="materialize-textarea input0" required></textarea><br>
					
					
					

					<label class="label0" for="accnm">Account Name :</label>
					<input class="input0" type="text" id="accnm" name="accnm" placeholder="Enter Account Holder Name " required/><br>
					
					<label class="label0" for="accno">Account no. : </label>
					<input class="input0" type="text" id="accno" name="accno" placeholder="Enter Account number" required/><br>
					
					<label class="label0" for="ifsc">IFSC Code :</label>
					<input class="input0" type="text" id="ifsc" name="ifsc" placeholder="Enter IFSC Code" required/><br>
					
					<label class="label0" for="banknm">Branch Name :</label>
					<input class="input0" type="text" id="banknm" name="banknm" placeholder="Enter Bank Branch" required/><br>
					




					<label class="label0" for="uname">User Name : </label>
					<input class="input0" type="text" id="uname" name="uname" placeholder="Enter Username" required/><br>
					
					
					<label class="label0" for="pwd">Password : </label>
					<input class="input0" type="password" id="pwd" name="pwd" placeholder="Enter Password" required/>
					
					
					
					<div class="buttons text-center">
					<span class="btn1">
					 	<button type="submit" name="variable">Login </button>
					</span>
					</div>	
					
					
				</form>
	
				</div>
		
		</div>		
    

</div>


</body>
</html>