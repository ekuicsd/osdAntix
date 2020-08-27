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
<link type ="text/css" rel="stylesheet" href="AllCss/indexcss.css">

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

.text {
width: 100%;
height: 50vh;
text-align: center;
vertical-align: middle;
align-items: center;
background-image: linear-gradient(#26a69a,white); 
}

.text .btn, .text2 .btn {
height: 70px;
width: 250px;
font-size: 25px;
font-weight: bold;
color: white;
text-transform: none;}

.container {
padding: 20px auto;}
 
.box {
border: 1px solid gray;
margin: 30px;
padding: 10px;}

.box img {
width: 120px;
height: 100px;
margin-bottom: 20px;}
 
h5 {
margin-bottom: 20px;}
 
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
      <a class="nav-link" href="#"><i class="material-icons">done_all</i>Verify</a>
    </li>
  </ul>
</nav>
	
	
	<div class="container-fluid" style="background-color:black;">
	
	<div class="row black" style="width: 100%; height: 11vh; z-index: 200;"></div>
	
	<div class="row text">
		<div class="col-xl-12 col-md-12 col-sm-12">
			<h1 class="black-text" style="margin-bottom : 30px;">"Since last year, my business <br> 
				on OSD Antix has grown more than 9 times."</h1><br>
			<a href="verify.jsp">
			<button class="btn btn-dark">Start Verifying</button>
			</a>
		</div>
	
	</div>
	
	</div>
	
	<div class="container">
		<h2 class="black-text">Why Verify Products On OSD Antix ?</h2>	
		
		<div class="row">
			<div class="col-xl-3 col-md-3 col-sm-12 box text-center" style="margin-left: 50px;">
				<img src="assets/icons/online-store.png"><br>
				<h5>Platform to Enchanced Your Business</h5>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
				   containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus
				    PageMaker including versions of Lorem Ipsum.</p>
			</div>
			<div class="col-xl-3 col-md-3 col-sm-12 box text-center">
				<img src="assets/icons/network.png"><br>
				<h5>Connect with People</h5>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
				   containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus
				    PageMaker including versions of Lorem Ipsum.</p>
			</div>
			<div class="col-xl-3 col-md-3 col-sm-12 box text-center">
				<img src="assets/icons/hand.png"><br>
				<h5>Recieve Timely Payments</h5>
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
				   containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus
				    PageMaker including versions of Lorem Ipsum.</p>
			</div>		
		</div>
	
	</div>
	<hr>
	
	<div class="container-fluid">
		<div class="row text2">
			<div class="col-xl-12 col-md-12 col-sm-12 text-center">
				<a href="verify.jsp">
				<button class="btn" style="margin-bottom:50px; margin-top: 20px;">Verify</button>
				</a>
			</div>
		</div>
		
		
		
		<div class="row footer">
				<div class="col-xl-12 col-md-12 col-sm-12" style="padding: 0;">
					<a href="#" ><button class="btn btn-block">Back to Top</button></a>
				</div>
			</div>
			
			<div class="row blue-grey darken-4 foot" style="padding: 50px 150px 0px 150px;">
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
			
			<div class="row blue-grey darken-4">
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