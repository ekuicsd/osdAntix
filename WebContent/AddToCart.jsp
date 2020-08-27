<%@ page import="service.DBHandler" %>
<%@ page import="model.Product" %>
<%@ page import="java.util.*" %>
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
<!-- <link type ="text/css" rel="stylesheet" href="AllCss/indexcss.css"> -->

<script src="jquery3-4-1.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script> -->
<script type="text/javascript" src="materialize-v1.0.0/materialize/js/materialize.min.js"></script>
<script type="text/javascript" src="bootstrap-4.0.0-dist/js/bootstrap.min.js"></script>


<style>
body {
padding: 0;
margin: 0;}
.row {
padding: 0;
margin: 0;}
.container-fluid {
padding: 0;
margin: 0;}
i {
vertical-align: -8px;}

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

.pic img {
	height: 120px;
	width: 100px;
	}

	.materialboxed {
	display: inline;
	}
	
	.desc {
	padding: 0px 10px;
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


</style>
</head>
<body>

<%String name=(String)session.getAttribute("user");
%>
<nav class="navbar navbar-expand-sm teal lighten-1 justify-content-end fixed-top">
   <span class="logo">
		  <a href="ProductCards.jsp"><img src="assets/antixbicycle.jpg"></a>
		
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
    <li class="nav-item">
      <a class="nav-link" href="AddToCart.jsp"><i class="material-icons">shopping_cart</i>Cart</a>
    </li>
    
    <%if(name!=null) { %>
	    <li class="nav-item dropdown" id="dis" >
	      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
	        <i class="material-icons">person</i>Your Account
	      </a>
	      <div class="dropdown-menu" >
	        <a class="dropdown-item" href="#">Your Profile</a>
	        <a class="dropdown-item" href="buyerLogout">Log Out</a>
	        <a class="dropdown-item" href="#">Delete Account</a>
	      </div>
	    </li>
    <% } %>
   
  </ul>
</nav>

<div class="container-fluid">

	<div class="row black" style="width: 100%; height: 11vh;"></div>
	
</div>

<div class="container" style="margin: 20px 50px;">
	<% if(name==null) { %>
		<h3>You are not login yet!!</h3><br>
		<a class="btn" href="BuyerLogin.jsp">Login</a>
	<%} else {%>
		
		<%
		LinkedList<Product> lst=new LinkedList<>();
		DBHandler obj=new DBHandler();
		String username=(String)session.getAttribute("user");
		System.out.println(username);
		lst=obj.getListFromAddToCart(username);
		System.out.println(lst); int totalprice=0; 
		session.setAttribute("lst", lst);%>
		
		<ul>
		<%for(Product p: lst) { 
		totalprice=totalprice+p.getPrice();%>
		<li style="background-color: white;margin-top: 20px;">
		<div class="row">
			<div class="col-xl-2 col-md-2 col-sm-2 pic text-center">
				<img src="images?rqno=<%=p.getRqno()%>" >	
			</div>
			<div class="col-xl-10 col-md-10 col-sm-10 desc">
				<div class="row">
					<h3><%=p.getName()%><span style="font-weight: 1px;">(<%=p.getDesc() %>)</span></h3>
				</div>
				<div class="row row1">
					<div class="col-xl-8 col-md-8 col-sm-8">
						<p id="margin"><b class="teal-text text-lighten-1">Price:- </b>Rs <%=p.getPrice()%>/-</p>
						
					</div>
					<div class="col-xl-4 col-md-4 col-sm-4">
						<p><b class="teal-text text-lighten-1" >Category: </b><%=p.getCat()%></p>
					</div>
				</div>
				<div class="row row1">
					<div class="col-xl-8 col-md-8 col-sm-8">
						<p id="margin"><b class="teal-text text-lighten-1">Genuine: </b> <%=p.getGenuine()%></p>
						
					</div>
					<div class="col-xl-4 col-md-4 col-sm-4" style="margin-bottom: 10px;">
						<a href="removeFromCart?rqno=<%=p.getRqno() %>" class="btn btn-block" >Remove</a>
					</div>
				</div>
				
			</div>
		</div>
		</li>
		<%} %>
	</ul>
	<%if(totalprice!=0) { %>
		<div class=" row" style="position:sticky; bottom: 0; overflow: hidden; width: 100%; margin-top: 30px;">
			<div class="col-sm-9 col-md-9 col-lg-9">
				<h1>Total: Rs <%=totalprice %>/-</h1>
			</div>
			<div class="col-sm-3 col-md-3 col-lg-3">
				<a href="SoldToBuyer" class="btn float-right btn-block ">BUY</a>
			</div>	
		</div>
	<% } else {%>
		<div class="row" style="margin-left: 100px;">
			<div class="col-sm-12 col-md-12 col-xl-12 text-center">
				<img src="assets/icons/basketicon.jpg" style="height: 350px;">	<br><br>
				<a href="ProductCards.jsp" class="btn">Start Shopping</a>
			</div>
		</div>	
		
	
	<% } %>
	<%} %>
</div>






</body>
</html>