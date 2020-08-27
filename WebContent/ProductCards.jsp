<%@ page import="service.DBHandler" %>
<%@ page import="model.CardProduct" %>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- <link type ="text/css" rel="stylesheet" href="AllCss/indexcss.css"> -->

<script src="jquery3-4-1.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script> -->
<script type="text/javascript" src="materialize-v1.0.0/materialize/js/materialize.min.js"></script>
<script type="text/javascript" src="bootstrap-4.0.0-dist/js/bootstrap.min.js"></script>


<style>

.container-fluid {
padding : 0;
margin: 0;}


.row {
padding : 0;
margin: 0;}



.link {
font-size: 16px;
font-weight: bold;
}

.material-icons {
font-size: 30px;
margin-left: 165px;
line-height: 0;
} 

input[type=text]:not(.browser-default) {
padding: 0 0 0 0px;
height: 2.2rem;
border: 1px solid #ced4da;
border-radius: .25rem;
margin-right: 10px;
}

.col-xl-3, .col-md-3, .col-sm-12 {
padding: 3px;
}

.card {
margin: 20px 50px 20px 30px;}

.btn {
font-weight: bold;
padding: 0 20px;}

label {
color: blue;
font-size: 13px;}

.middle {
padding-top: 28px;}


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

<%  String name=(String)session.getAttribute("user"); 
	System.out.println("hello buyAuth");
	String cat=(String)session.getAttribute("cat");
	String city=(String)session.getAttribute("city");
	String gen=(String)session.getAttribute("gen");
	int price=(int)session.getAttribute("price");
	DBHandler obj=new DBHandler();	
  %>
  
  <nav class="navbar navbar-expand-sm teal lighten-1 justify-content-end fixed-top">
   <span class="logo">
		  <a href="buy.jsp"><img src="assets/antixbicycle.jpg"></a>
		
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
	
	
  
  <form action="BuyAuth" method="post">
	<div class="row" style="padding: 10px 10px 20px 200px;">
		<div class="col-xl-2 col-md-3 col-sm-12">
			<label>Select Category:</label>
			  <select name="cat" class=" form-control browser-default">
			 <option value="<%=cat %>"selected><%=cat %> </option>
		    <option value="antiques">Antiques</option>
		    <option value="furniture">Furniture</option>
		    <option value="vehicles">Vehicles</option>
		    <option value="electronics">Electronics</option>
		    <option value="fashion">Fashion</option>
		    <option value="jewellery">Jewellery</option>
			  </select>	
		
		</div>
		
		<div class="col-xl-2 col-md-2 col-sm-12">
			<label for="city" >Select City:</label>
 					<input type="text" name="city" class="form-control" id="city" value="<%=city %>" placeholder="Enter city" name="city">  
				
		
		</div>
		
		<div class="col-xl-2 col-md-2 col-sm-12">
			<label>Select genuine Product</label>
			  <select class=" form-control browser-default" name="gen">
			   <option value="<%=gen %>"selected><%=gen %> </option>
			    <option value="genuine">Genuine</option>
			    <option value="not genuine">Not genuine</option>
			    <option value="both">Both </option>
			  </select>	
		
		</div>
		
		<div class="col-xl-2 col-md-2 col-sm-12">
			<label for="price" >enter price upto:</label>
 					<input type="text" class="form-control" name="price" id="price" value="<%=price %>" placeholder="Enter price" name="price">  
				
		</div>
		
		<div class="col-xl-2 col-md-2 col-sm-12 text-center middle">
	<button class="btn" type="submit">Submit</button>
	</div>
	
	</div>

	</form>


  
  
  <%if(city.equals("all") && gen.equals("both") )
	{
		ArrayList<CardProduct> lst1=obj.getIndexProd(cat);
		System.out.println("list1"+lst1);
		%>
		
		<div class="row" style="padding: 0px 50px;"> 
  	<% for (CardProduct pc: lst1) { %>
			  <div class="card" style="height: 350px;">
			    <div class="card-image waves-effect waves-block waves-light" style="width:300px; height: 200px; padding: 10px;">
			      <img class="activator" src="images?rqno=<%=pc.getRqid()%>" style="width:100%; height: 200px;">
			    </div>
			    <div class="card-content">
			      <span class="card-title activator grey-text text-darken-4" style="font-weight: bold;">Rs.<%=pc.getPrice() %>/-<i class="material-icons right">more_vert</i></span>
			      
			      <p style="font-size: 14px;"><%=pc.getAdd()%>, <%=pc.getCity() %></p><br>
			      <p class="link"><a href="ProductProfile.jsp?rqno=<%=pc.getRqid()%>&name=null">See More</a>
			      	<span>
			      		<%if(name==null) { %>
			      		<a class="btn float-right" style="height:100%; padding: 5px 20px;" href="BuyerLogin.jsp">Add to Cart</a>
			      		<% } else {%>
			      		<a class="btn float-right" style="height:100%; padding: 5px 20px;" href="AddToCart?rqno=<%=pc.getRqid()%>">Add to Cart</a>
			      		<%} %>
			      	</span>
			      </p>
			    </div>
			    <div class="card-reveal">
			      <span class="card-title grey-text text-darken-4"><%=pc.getName() %><i class="material-icons right">close</i></span>
			      <p><%=pc.getDesc() %>.</p>
			    </div>
			  </div>
		
		<%} %>
		
		</div>
  
		
	<%  }
  
  if(city.equals("all") && gen.equals("genuine"))
  {
		ArrayList<CardProduct> lst3=obj.getProductCardInfoByGen(cat, gen, price);
		System.out.println("list3"+lst3);
		%>
		<div class="row" style="padding: 0px 50px;"> 
<% for (CardProduct pc: lst3) { %>
		  <div class="card" style="height: 350px;">
		    <div class="card-image waves-effect waves-block waves-light" style="width:300px;  padding: 10px;">
		      <img class="activator" src="images?rqno=<%=pc.getRqid()%>" style="width:100%">
		    </div>
		    <div class="card-content">
		      <span class="card-title activator grey-text text-darken-4" style="font-weight: bold;">Rs.<%=pc.getPrice() %>/-<i class="material-icons right">more_vert</i></span>
		      
		      <p style="font-size: 14px;"><%=pc.getAdd()%>, <%=pc.getCity() %></p><br>
		      <p class="link"><a href="ProductProfile.jsp?rqno=<%=pc.getRqid() %>&name=null">See More</a>
				<span>
		      		<%if(name==null) { %>
		      		<a class="btn float-right" style="height:100%; padding: 5px 20px;" href="BuyerLogin.jsp">Add to Cart</a>
		      		<% } else {%>
		      		<a class="btn float-right" style="height:100%; padding: 5px 20px;" href="AddToCart?rqno=<%=pc.getRqid()%>">Add to Cart</a>
		      		<%} %>
		      	</span>
				</p>
		    </div>
		    <div class="card-reveal">
		      <span class="card-title grey-text text-darken-4"><%=pc.getName() %><i class="material-icons right">close</i></span>
		      <p><%=pc.getDesc() %>.</p>
		    </div>
		  </div>
	
	<%} %>
	
	</div>

		
<%	}
  if(city.equals("all") && gen.equals("not genuine"))
  {
		ArrayList<CardProduct> lst4=obj.getProductCardInfoByNotGen(cat, gen, price);
		System.out.println("list3"+lst4);
		%>
		<div class="row" style="padding: 0px 50px;"> 
<% for (CardProduct pc: lst4) { %>
		  <div class="card" style="height: 350px;">
		    <div class="card-image waves-effect waves-block waves-light" style="width:300px;  padding: 10px;">
		      <img class="activator" src="images?rqno=<%=pc.getRqid()%>" style="width:100%">
		    </div>
		    <div class="card-content">
		      <span class="card-title activator grey-text text-darken-4" style="font-weight: bold;">Rs.<%=pc.getPrice() %>/-<i class="material-icons right">more_vert</i></span>
		      
		      <p style="font-size: 14px;"><%=pc.getAdd()%>, <%=pc.getCity() %></p><br>
		      <p class="link"><a href="ProductProfile.jsp?rqno=<%=pc.getRqid() %>&name=null">See More</a>
				<span>
		      		<%if(name==null) { %>
		      		<a class="btn float-right" style="height:100%; padding: 5px 20px;" href="BuyerLogin.jsp">Add to Cart</a>
		      		<% } else {%>
		      		<a class="btn float-right" style="height:100%; padding: 5px 20px;" href="AddToCart?rqno=<%=pc.getRqid()%>">Add to Cart</a>
		      		<%} %>
		      	</span>
			</p>
		    </div>
		    <div class="card-reveal">
		      <span class="card-title grey-text text-darken-4"><%=pc.getName() %><i class="material-icons right">close</i></span>
		      <p><%=pc.getDesc() %>.</p>
		    </div>
		  </div>
	
	<%} %>
	
	</div>

		
<%	}

  
  else
		{
			ArrayList<CardProduct> lst2=obj.getProductCardInfo(cat,city, gen, price);
			System.out.println("list2"+lst2);
			%>
			<div class="row" style="padding: 0px 50px;"> 
  	<% for (CardProduct pc: lst2) { %>
			  <div class="card" style="height: 350px;">
			    <div class="card-image waves-effect waves-block waves-light" style="width:300px;  padding: 10px;">
			      <img class="activator" src="images?rqno=<%=pc.getRqid()%>" style="width:100%">
			    </div>
			    <div class="card-content">
			      <span class="card-title activator grey-text text-darken-4" style="font-weight: bold;">Rs.<%=pc.getPrice() %>/-<i class="material-icons right">more_vert</i></span>
			      
			      <p style="font-size: 14px;"><%=pc.getAdd()%>, <%=pc.getCity() %></p><br>
			      <p class="link"><a href="ProductProfile.jsp?rqno=<%=pc.getRqid() %>&name=null">See More</a>
			      	<span>
			      		<%if(name==null) { %>
			      		<a class="btn float-right" style="height:100%; padding: 5px 20px;" href="BuyerLogin.jsp">Add to Cart</a>
			      		<% } else {%>
			      		<a class="btn float-right" style="height:100%; padding: 5px 20px;" href="AddToCart?rqno=<%=pc.getRqid()%>">Add to Cart</a>
			      		<%} %>
			      	</span>
			      </p>
			    </div>
			    <div class="card-reveal">
			      <span class="card-title grey-text text-darken-4"><%=pc.getName() %><i class="material-icons right">close</i></span>
			      <p><%=pc.getDesc() %>.</p>
			    </div>
			  </div>
		
		<%} %>
		
		</div>
  
			
	<%	}%>
  	
  	
  	<div class="row footer" style="margin-top: 70px;">
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