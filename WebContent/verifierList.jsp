<%@ page import="service.DBHandler" %>
<%@ page import="java.util.*" %>
<%@ page import="model.Verifier" %>

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
<!-- <link type ="text/css" rel="stylesheet" href="AllCss/sellcss.css"> -->

<script src="jquery3-4-1.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script> -->
<script type="text/javascript" src="materialize-v1.0.0/materialize/js/materialize.min.js"></script>
<script type="text/javascript" src="bootstrap-4.0.0-dist/js/bootstrap.min.js"></script>

<script>


</script>

<style>

.container-fluid{
padding: 0;
margin: 0;}

/* .row {
margin: 0;
padding: 0;}
 */
	li {
	cursor: pointer;
	margin-top: 20px;
	}
	
	
	.pic img {
	height: 80px;
	width: 80px;
	}

	.materialboxed {
	display: inline;
	}
	
	.desc {
	padding: 0px 50px;
	border-bottom:1px solid black;
	}
	
	a {
	text-decoration: none;
	color: black;}
	
	 
	a:hover {
	text-decoration: none;
	color: black;}
	
	.desc .row {
	margin-bottom: 0;}
	
	.desc .row1 {
	margin-top: 8px;}
	
	.row1 p {
	font-size: 16px;
	margin: 0;}
	
	.col-xl-8, .col-md-8, .col-sm-8 {
	padding: 0;}
	
	.col-xl-4, .col-md-4, .col-sm-4 {
	padding: 0;}
	
	#margin {
	margin-bottom: 10px;}
	
	h2 {
	margin-top: 7px;}
	
	
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

<script>



</script>

<%  
DBHandler obj= new DBHandler();
String loc= request.getParameter("location");
loc=loc.toLowerCase(Locale.ENGLISH);
System.out.println(loc);
String catname = request.getParameter("categorynm");
System.out.println(catname);


ArrayList<Verifier> verify=obj.getVerifierArrayList(loc, catname);
System.out.println("1"+verify);
%>

	<nav class="navbar navbar-expand-sm teal lighten-1 justify-content-end fixed-top">
 	<span class="logo">
		  <a href="sell.jsp"><img src="assets/antixbicycle.jpg"></a>
		
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
	<div class="row" style="margin: 0;">
		<div class="col-xl-12 col-md-12 col-sm-12 black" style="height: 11vh;">
		</div>
	</div>
	
	
	
	
	<ul>
		<%for(Verifier v: verify) { %>
		<li style="background-color: white;">
		<a href='VerifierListProfile.jsp?Ph=<%=v.getPhone()%>'>
		<div class="row" style="margin-right: 40px;">
			<div class="col-xl-2 col-md-2 col-sm-2 pic text-center">
				<img class="circle" src="assets/profile.png" >	
			</div>
			<div class="col-xl-10 col-md-10 col-sm-10 desc">
				<div class="row">
					<h3><%=v.getName()%></h3>
				</div>
				<div class="row row1">
					<div class="col-xl-8 col-md-8 col-sm-8">
						<p id="margin"><b class="teal-text text-lighten-1">Address:- </b><%=v.getAdd()%></p>
						
					</div>
					<div class="col-xl-4 col-md-4 col-sm-4">
						<p><b class="teal-text text-lighten-1" >Contact no:- </b><%=String.valueOf(v.getPhone())%></p>
					</div>
				</div>
				
			</div>
		</div>
		</a>
		</li>
		<%} %>
	</ul>
	
	<div class="row footer" style="margin: 0; padding: 0;">
				<div class="col-xl-12 col-md-12 col-sm-12" style="padding: 0;">
					<a href="#" ><button class="btn btn-block">Back to Top</button></a>
				</div>
			</div>
			
			<div class="row blue-grey darken-4 foot" style="margin: 0;padding: 50px 150px 0px 150px;">
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
			
			<div class="row blue-grey darken-4" style="margin: 0;">
				<div class="col-xl-12 col-md-12 col-sm-12 text-center">
					<br>
				<hr>
				<br>
				<p style="color: #eeeeee;">@copyrights 2019 <b>OSD Antix</b> -- All Rights Reserved </p>
				
				</div>
			
			</div>
		
	
	
	
	
</div>







<script>


</script>

</body>
</html>