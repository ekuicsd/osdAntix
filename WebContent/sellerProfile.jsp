<%@ page import="service.DBHandler" %>
<%@ page import="model.Seller" %>


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
<link type ="text/css" rel="stylesheet" href="AllCss/profileCss.css">


<script src="jquery3-4-1.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script> -->
<script type="text/javascript" src="materialize-v1.0.0/materialize/js/materialize.min.js"></script>
<script type="text/javascript" src="bootstrap-4.0.0-dist/js/bootstrap.min.js"></script>

<style>
	/* .container-fluid {
		padding: 0;
		margin: 0;}
	
	.row {
    
     margin-right: 0px; 
     margin-left: 0px; 
}

.padding {
    padding: 2px 0 10px 90px;
    font-size: 25px;
    }
	
	p {
	margin: 0;}
	
	#nm {
	margin-left: 143px;}
	
	
	#unm {
	margin-left: 93px;}
	
	
	#city {
	margin-left: 170px;}
	
	
	#phno {
	margin-left: 88px;}
	
	
	#add {
	margin-left: 120px;}
	
	.btnpadding {
	padding: 5px 50px;
	font-size: 30px;
	font-weight: bold;
	border: 4px solid #d81d60;
	background-color: transparent;
	color: #d81d60;
	border-radius: 12px;
	margin: 9px 0 0px 90px;;
}

.pink.darken-1 {
    background-color: transparent !important;
}

.pink.darken-1:hover {
    background-color: #d81d60 !important;
}

.btnpadding:hover {
	padding: 5px 40px;
	font-size: 30px;
	font-weight: bold;
	border: 4px solid #d81d60;
	background-color: #d81d60;
	color: black;
	border-radius: 12px;
}

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

.box {
border: 1px solid black;
 margin: 30px; 
padding: 15px;}

.big-box {
margin: 0 50px 0 100px;
} 

.box:hover {
background-color: #f5f5f5;}

.box img {
width: 50px;
height: 50px;
margin-right: 20px;
margin-bottom: 12px;}

.box b {
font-size: 18px;}

.box p {
text-align: justify;
color: gray;
font-size: 14px;}

a {
text-decoration : none;
color: black;}

a:hover {
text-decoration : none;
color: black;}

.uolist a {
color: #eeeeee;}

.uolist a:hover {
color: #eeeeee;}

a:hover {
text-decoration: none;}

.foot p {
color: #eeeeee;}


h5 {
color: white;}

hr {
background-color: #455a64;}

.uolist {
	list-style: none;
}

.uolist img {
	max-width: 20px;
	max-height: 20px;
}

.uolist li {
	margin: 5px 0;
}

.about-box p {
text-align: justify;}

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

 */

</style>
</head>
<body>
<%
DBHandler obj = new DBHandler();
String phone=request.getParameter("sphn"); 
System.out.println(phone);
/* Seller seller=obj.getsellerProfileByUnm(phone); */
%>


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
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        <i class="material-icons">person</i>Your Account
      </a>
      <div class="dropdown-menu" >
        <a class="dropdown-item" href="sellerProfile.jsp?sphn=<%=phone %>">Your Profile</a>
        <a class="dropdown-item" href="sellerLogin.jsp">Log Out</a>
        <a class="dropdown-item" href="sellerDelete?sphn=<%=phone%>">Delete Account</a>
      </div>
    </li>
  </ul>
</nav>
	



<div class="container-fluid">
	<div class="row black" style="width: 100%; height:11vh;"></div>
</div>
<div class="container">
	<div class="row" >
		<div class="col-xl-12 col-md-12 col-sm-12">
		<h3 class="teal-text text-lighten-1" style="padding-left: 40px;">
			<!-- <i class="material-icons" style="font-size: 35px; vertical-align: -6px;">person</i> -->
			<span style="color: black;">Your Profile</span> :)
		</h3>
		</div>
	</div>
	<hr>
</div>
	<div class="container-fluid">
	<div class="row big-box">
	
		<div class="col-xl-3 col-md-3 col-sm-12 box ">
			<a href="sellingForm.jsp?sphn=<%=phone%>">
				<img src="assets/icons/tag.png" >
				<b>Sell Product</b><br>
				 <p>Select to sell products through our site.</p> 
			</a>
		</div>
	
	
		<div class="col-xl-3 col-md-3 col-sm-12 box">
			<a href="sellerHistory.jsp?sphn=<%=phone%>">
				<img src="assets/icons/shopping-bag.png" >
				<b>Your Selling History</b><br>
				 <p>See products which you can sell through our site.</p>
			</a> 
		</div>
		<div class="col-xl-3 col-md-3 col-sm-12 box ">
			<a href="sellerEditProfile.jsp?sphn=<%=phone%>">
				<img src="assets/icons/resume.png" >
				<b>Edit Profile</b><br>
				 <p>Change your Address or password or username, etc .</p>
			</a> 
		</div>
		<div class="col-xl-3 col-md-3 col-sm-12 box ">
			<a href="editSellerPayment.jsp?sphn=<%=phone%>">
				<img src="assets/icons/payment-method.png" >
				<b>Payment Options</b><br>
				 <p>Select payment option through our site.</p> 
			</a>
		</div>
		<div class="col-xl-3 col-md-3 col-sm-12 box ">
			<a href="sellerChangePwd.jsp?sphn=<%=phone%>">
				<img src="assets/icons/lock.png" >
				<b>Change Password</b><br>
				 <p>Select change password for new password.</p> 
			</a>
		</div>
		<div class="col-xl-3 col-md-3 col-sm-12 box ">
			<a href="sellerDeleteProduct.jsp?sphn=<%=phone%>">
				<img src="assets/icons/delete.png" >
				<b>Delete Product</b><br>
				 <p>Select to delete any product from website.</p> 
			</a>
		</div>
	</div>
	<div class="row footer" style="margin: 0; margin-top: 80px;">
				<div class="col-xl-12 col-md-12 col-sm-12" style="padding: 0;">
					<a href="#" ><button class="btn btn-block">Back to Top</button></a>
				</div>
			</div>
			
			<div class="row blue-grey darken-4 foot" style="padding: 50px 150px 0px 150px; margin: 0;">
				<div class="col-xl-4 col-md-4 col-sm-12 text-center">
					<h5>Contact us</h5>
					<hr>
					<p><b>Through : </b>Fill 'FEEDBACK' Form</p>
					<p><b>E-mail : </b>osdantix@gmail.com</p>
					<p><b>Contact no. : </b>+91-1234567890</p>
				</div>
				
				<div class="col-xl-4 col-md-4 col-sm-12 text-center">
					<h5>Connect with us</h5>
					<hr>
					<ul class="uolist">
						<li><a href="#"><img src="assets/logos/whatsapp-pic.png">&nbsp; &nbsp;WhatAapp</a> </li>
						<li><a href="#"><img src="assets/logos/insta-pic.png">&nbsp; &nbsp;Instagram</a> </li>
						<li><a href="#"><img src="assets/logos/facebook-pic.png">&nbsp; &nbsp;Facebook</a> </li>
						<li><a href="#"><img src="assets/logos/twitter-pic.png">&nbsp; &nbsp;Twitter</a> </li>
						</ul>
				</div>
				
				<div class="col-xl-4 col-md-4 col-sm-12 text-center">
					<h5>Address</h5>
					<hr>
					<p><b>OSD Antix Company </b></p>
					<p>#123 ABC Colony </p>
					<p>Near this Road</p>
					<p>City</p>
				</div>
				
				
			</div>
			
			<div class="row blue-grey darken-4" style="margin: 0; padding-bottom: 30px;">
				<div class="col-xl-12 col-md-12 col-sm-12 text-center">
					<br>
				<hr>
				<br>
				<p style="color: #eeeeee;">@copyrights 2019 <b>OSD Antix</b> -- All Rights Reserved </p>
				
				</div>
			
			</div>
		
	
</div>


</body>
</html>