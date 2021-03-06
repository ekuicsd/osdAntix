<%@ page import="service.DBHandler" %>
<%@ page import="java.util.*" %>
<%@ page import="model.Product" %>

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
<link type ="text/css" rel="stylesheet" href="AllCss/HistoryCss.css">

<script src="jquery3-4-1.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script> -->
<script type="text/javascript" src="materialize-v1.0.0/materialize/js/materialize.min.js"></script>
<script type="text/javascript" src="bootstrap-4.0.0-dist/js/bootstrap.min.js"></script>

<!-- <style>

.container-fluid {
		padding: 0;
		margin: 0;}
	
.row {
    
  margin-right: 0px; 
  margin-left: 0px; 
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


h2 {
margin-left: 20px;}

.count {
padding: 20px;}

.count img {
margin-bottom: 20px;
opacity: 0.7;}

.count h5 {
color: white;}

.btn:not(:disabled):not(.disabled) {
    cursor: pointer;
    text-transform: none;
}


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


li {
	cursor: pointer;
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
	

</style>
 -->



</head>
<body>



<% String flag1="false", flag2="false";
DBHandler obj=new DBHandler();
String phone=request.getParameter("sphn");
long phno=Long.parseLong(request.getParameter("sphn"));
ArrayList<Product> lst1=obj.getSellingHistory(phno);
ArrayList<Product> lst2=obj.getListOfDelete(phone);
System.out.println("lst1"+lst1);
System.out.println("lst2"+lst2);

if(!lst1.isEmpty())
{
	flag1="true";
}
if(!lst2.isEmpty())
{
	flag2="true";
}

System.out.println(flag1+" "+flag2);

%>



<nav class="navbar navbar-expand-sm teal lighten-1 justify-content-end fixed-top">
  <span class="logo">
		  <a href="sellerProfile.jsp?sphn=<%=phno%>"><img src="assets/antixbicycle.jpg"></a>
		
		</span>
  
  <!-- Links -->
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
	<div class="row" >
		<div class="col-xl-12 col-md-12 col-sm-12">
		<h2 class="black-text "> Your Selling History </h2>
		</div>
	</div>	
	
	
<div class="div1" id="div1" style="display: none;">
	<h2>Sold Products </h2>
	
		<table class="table table-bordered table-hover" style="margin: 20px 0 50px 0; ">
				<tr class="text-center grey">
					<th>Rq no.</th>
					<th>Image</th>
					<th>Name</th>				
					<th>Date</th>
					<th>Price</th>
					<th>Verified</th>
					<th>Sold</th>
				</tr>
				<%for(Product p1: lst1) {%>
					<tr>
						<td><%=p1.getRqno() %></td>
						<td><img class="materialboxed" width='150' height='150' src="images?rqno=<%=p1.getRqno()%>" alt="no image"></img></td>
						<td>
						<a href="historyOfProduct.jsp?rqno=<%=p1.getRqno() %>" class="btn btn-block">
						  <%=p1.getName() %>
						 </a>
						 </td>				
						<td><%=p1.getDate() %></td>
						<td> <%=p1.getPrice() %>/-</td>
						<td><%=p1.getGenuine() %></td>
						<td><%=p1.getSold() %></td>
					</tr>
					
					
				
				<%} %>
			</table>
</div>
<div class="div2" id="div2" style="display: none;">
		<h2>Unsold Products </h2>
	
		<table class="table table-bordered table-hover" style="margin: 20px 0 50px 0; ">
				<tr class="text-center grey">
					<th>Rq no.</th>
					<th>Image</th>
					<th>Name</th>				
					<th>Date</th>
					<th>Price</th>
					<th>Verified</th>
					<th>Sold</th>
				</tr>
				<%for(Product p1: lst2) {%>
					<tr>
						<td><%=p1.getRqno() %></td>
						<td><img class="materialboxed" width='150' height='150' src="images?rqno=<%=p1.getRqno()%>" alt="no image"></img></td>
						<td>
						<a href="ProductProfile.jsp?rqno=<%=p1.getRqno() %>" class="btn btn-block">
						  <%=p1.getName() %>
						 </a>
						 </td>				
						<td><%=p1.getDate() %></td>
						<td> <%=p1.getPrice() %>/-</td>
						<td><%=p1.getGenuine() %></td>
						<td><%=p1.getSold() %></td>
					</tr>
					
					
				
				<%} %>
			</table>
	
</div>
		
			
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
$(document).ready(function(){
    $('.materialboxed').materialbox();
    var flag11=<%=flag1%>;
	var flag22=<%=flag2%>;
    if(flag11==true) {
    	$("#div1").css("display", "block");
    	
    }
    if(flag22==true) {
    	$("#div2").css("display", "block");
    }	
  });

/* if(flag11=="false") {
	document.getElementById("div1").style.display="none";
	alert('hello1');
}
if(flag22=="false") {
	document.getElementById("div2").style.display="none";
	alert('hello2');
}	
 */

</script>
</body>
</html>