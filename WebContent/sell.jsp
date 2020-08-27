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
<link type ="text/css" rel="stylesheet" href="AllCss/sellcss.css">

<script src="jquery3-4-1.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script> -->
<script type="text/javascript" src="materialize-v1.0.0/materialize/js/materialize.min.js"></script>
<script type="text/javascript" src="bootstrap-4.0.0-dist/js/bootstrap.min.js"></script>

<script>
	



</script>

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

input[type=text]:not(.browser-default):focus:not([readonly]) {
     border-bottom: 2px solid #26a69a; 
     box-shadow: none;
     
}


.inputclass {
	align-items: center;
	justify-content: center;
	display: flex; 
	height: 20vh;
}

.cat1 {
	/* border: 2px solid black; */
    padding-top: 30px;
    padding-left: 30px;
    display: none; 
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
      <a class="nav-link" href="VerifierWlcmPage.jsp"><i class="material-icons">done_all</i>Verify</a>
    </li>
  </ul>
</nav>
	

	<div class="container-fluid">
	
	<div class="row black" style="width: 100%; height: 11vh; z-index: 200;"></div>
	
		<div class="row" style="height: 89vh;">
			<div class="col-xl-5 col-md-5 col-sm-5 cat1">
				<!-- <h1 class="text-center">Category</h1> -->
			  	<ul class="cat-list" >
					<a href="#" ><li>Jewellery</li></a>
			        <a href="#" ><li>Antiques</li></a>			
					<a href="#" ><li>Electronics</li></a>
					<a href="#" ><li>Vehicles</li></a>
					<a href="#" ><li>Furniture</li></a>
					<a href="#" ><li>Fashion</li></a>
				</ul>
			</div>
			
			<div class="col-xl-7 col-md-7 col-sm-7 cat0">
			<img src="assets/leftHand.png"><h1> Select Category</h1>
			</div>
			
			
			<div class="col-xl-7 col-md-7 col-sm-7 cat2" >
				<form name="valid" class="form was-validated" action="verifierList.jsp" method="post">
				<h1 class="text-center category"></h1>
				<input type="text" name="categorynm" class="catnm" placeholder="Category" >
				<div class="inputclass">
				<input type="text" name="location" placeholder="Enter your city" required/>
				</div>
				<div class="inputbtn">
				<button  class="pink darken-1 btnpadding" type="submit">Search Verifier</button>
				</div>

				</form>
				<!-- <div class="inputbtn1">
				<a href="sellerLogin.jsp" ><button  class="pink darken-1 btnpadding" type="">Sell Product</button></a>
				</div> -->
				
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

<script>

	$(document).ready(function() {
		$(".cat1").slideDown(1000);
	});

	
	var catname;

	$(".cat1 a").click(function() {
		$(".cat0").hide();
		catname=$(this).text();
		$(".form .category").text(catname); 
		$(".form .catnm").val(catname.toLowerCase()).css("visibility","hidden"); 
		$(".cat2").fadeIn();
		
	});
	
	

	
</script>



</body>
</html>