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


<style>

	.bg {
	
	width: 100%;  
  min-height: 100vh;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
  padding: 15px 15px 5px 15px;
  background: white;
  margin: 0;
}
	
	.container-fluid {
		padding: 0;
	}
	
	.row {
	padding: 0;
	margin: 0;
	width: 100%;}
	
	.materialboxed {
    display: inline;}
    
    
    
   /*  .nameheading h1 {
    	font-size: 50px;
    	color: #d81b60;
    	margin: 0 0 30px 60px;
    }
    */
    .padding {
    padding: 2px 0 10px 60px;
    font-size: 20px;
    }
    
    
    #nm {
    margin-left: 100px;}
    
    #city {
    margin-left: 150px;}
    
    #phno {
    margin-left: 80px;}
    
    #add {
    margin-left: 110px;}
    
    p {
    margin-bottom: 10px;}
    
 /*   
    .btnpadding {
	padding: 5px 50px;
	font-size: 30px;
	font-weight: bold;
	border: 4px solid #d81d60;
	background-color: transparent;
	color: #d81d60;
	border-radius: 12px;
	 margin-bottom: 50px; 
	margin-right: 20px;
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
 */
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

<%long phno=Long.valueOf(request.getParameter("Ph"));
System.out.println(phno);

DBHandler obj=new DBHandler();
Verifier verifier= obj.getVerifierProfile(phno);
System.out.println(verifier);%>


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
	

	<div class="container-fluid bg">
		<div class="row black" style="width: 100%; height: 11vh;"></div>
		
		<div class="row" style="min-height: 10vh; align-items: center;">
			<div class="col-xl-12 col-md-12 col-sm-12 text-center">
			<h3><%=verifier.getName()%>'s Profile</h3>
			</div>
		</div>
		
		<%-- <div class="row" style="margin-top: 30px;">
			<div class="col-xl-5 col-md-5 col-sm-12 text-center" style="vertical-align: middle;">
				<img class="materialboxed " src="assets/antixbicycle.jpg" style="width: 370px; height: 370px; border-radius: 15%;">
			</div>
			<div class="col-xl-7 col-md-7 col-sm-12 " >
				<div class="row nameheading"><h1>Name</h1></div>
				<div class="row padding"><b>Category:</b><p id="nm"><%=verifier.getName()%></p></div>
				<div class="row padding"><b>City:</b><p id="city"><%=verifier.getCity()%></p></div>
				<div class="row padding"><b>Contact no:</b><p id="phno"><%=verifier.getPhone()%></p></div>
				<div class="row padding"><b>Address:</b><p id="add"><%=verifier.getAdd()%></p></div>
			</div>
		</div> 
		<div class="row">
			<div class="col-xl-12 col-md-12 col-sm-12 text-right">
				<a href="sellerLogin.jsp" ><button  class="pink darken-1 btnpadding" type="button">Want To Sell</button></a>
			</div>
		</div>
		 --%>
		
		
		
		<div class="row con" style="width: 370px; min-height: content-fit; border: 1px solid gray; margin: 10px 50px 50px 50px; padding: 20px;">
			<div class="col-xl-12 col-md-12 col-sm-12 text-center">
				<img class="materialboxed circle" src="assets/profile.png" style="height: 150px; width: 150px;">
				<div class="row"  style="margin-top: 20px;">
					<div class="col-xl-6 col-md-6 colsm-6">
						<b>Category:</b> 
					</div>
					<div class="col-xl-6 col-md-6 colsm-6">
						<p><%=verifier.getCat()%></p> 
					</div>
				</div>
				<div class="row" >
					<div class="col-xl-6 col-md-6 colsm-6">
						<b>City:</b> 
					</div>
					<div class="col-xl-6 col-md-6 colsm-6">
						<p><%=verifier.getCity()%></p> 
					</div>
				</div>
				<div class="row" >
					<div class="col-xl-6 col-md-6 colsm-6">
						<b>Contact no:</b> 
					</div>
					<div class="col-xl-6 col-md-6 colsm-6">
						<p><%=verifier.getPhone()%></p> 
					</div>
				</div>
				<div class="row">
					<div class="col-xl-6 col-md-6 colsm-6">
						<b>Address:</b> 
					</div>
					<div class="col-xl-6 col-md-6 colsm-6">
						<p><%=verifier.getAdd()%></p> 
					</div>
				</div>
				
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
$(document).ready(function(){
    $('.materialboxed').materialbox();
  });

 


</script>

</body>
</html>