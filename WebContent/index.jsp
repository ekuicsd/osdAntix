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
<link type ="text/css" rel="stylesheet" href="AllCss/indexcss.css">

<script src="jquery3-4-1.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script> -->
<script type="text/javascript" src="materialize-v1.0.0/materialize/js/materialize.min.js"></script>
<script type="text/javascript" src="bootstrap-4.0.0-dist/js/bootstrap.min.js"></script>


<style>

.carousel {
	
	height: 90vh;	
}

.carousel .carousel-item {
     visibility: visible;
      width: 100%;
      height: 90vh;
     position: relative; 
} 


.carousel-inner img {
   width: 100%;
	max-height: 90vh;
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

.first-row {
	padding-top: 20px;
	margin-left: 0px;
	padding-left: 50px;
	margin-right: 0;
}

.catbox {
	border: 1px solid black;
	border-radius:5%;
	margin-bottom: 40px;
	margin-left: 60px;
	height: 190px;
	padding: 20px;
	cursor: pointer;
	/* min-height: fit-content; */
}

.catbox a {
color: black;}

.catbox a:hover {
text-decoration: none;
}

.about-box {
border: 1px solid gray;
margin: 30px;
padding: 20px;
background-color: #f5f5f5;
}

.about-box:hover {
border: 2px solid gray;
box-shadow:  5px 5px 8px gray;}

/* .back-teal{
	width: 100%; 
	height: 50vh;
	background-image: linear-gradient(white,#26a69a, white);
	
} */

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


</style>

</head>
<body>

<% DBHandler obj=new DBHandler(); 
int intprice=obj.getMaxPrice();
String maxprice=String.valueOf(intprice); %>
	
	
	<nav class="navbar navbar-expand-sm teal lighten-1 justify-content-end fixed-top">
  <span class="logo">
		  <a href="#"><img src="assets/antixbicycle.jpg"></a>
		
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
  </ul>
</nav>
	
	
	<div class="container-fluid">
	
	<div class="row black" style="width: 100%; height: 10vh; z-index: 200;"></div>
		
	<div class="row" style="background-color: black;">	
		<div id="demo" class=" col-xl-12 col-md-12 carousel slide" data-ride="carousel">

		  <!-- Indicators -->
		  <ul class="carousel-indicators">
		    <li data-target="#demo" data-slide-to="0" class="active"></li>
		    <li data-target="#demo" data-slide-to="1"></li>
		    <li data-target="#demo" data-slide-to="2"></li>
		    <li data-target="#demo" data-slide-to="3"></li>
		    <li data-target="#demo" data-slide-to="4"></li>
		  </ul>
		  
		  <!-- The slideshow -->
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img src="assets/carusol/antixlaptop.jpg" >
		    </div>
		    <div class="carousel-item">
		      <img src="assets/carusol/antixbrassmap.jpg" >
		    </div>
		    <div class="carousel-item">
		      <img src="assets/carusol/antixfurniture.jpg" >
		    </div>
		    <div class="carousel-item">
		      <img src="assets/carusol/antixflowerpot.jpg" >
		    </div>
		    <div class="carousel-item">
		      <img src="assets/carusol/antixfashion.jpg" >
		    </div>
		  </div>
		  
		  <!-- Left and right controls -->
		  <a class="carousel-control-prev" href="#demo" data-slide="prev">
		    <span class="carousel-control-prev-icon"></span>
		  </a>
		  <a class="carousel-control-next" href="#demo" data-slide="next">
		    <span class="carousel-control-next-icon"></span>
		  </a>
		</div>
		
	</div>
	<!-- <div class="row buttons" style=" background-color: white; background-image:linear-gradient(to bottom,rgba(0,0,0,0.9),rgba(128,128,128,0.2),rgba(255,255,255,0.3));">
		<div class="col-xl-4 col-md-4 col-sm-12 text-center">
			<a href="buy.jsp" > <button class="teal lighten-1 btnpadding">Buy</button></a>
		</div>
		<div class="col-xl-4 col-md-4 col-sm-12 text-center">
			<a href="verify.jsp" > <button class="teal lighten-1 btnpadding">Verify</button></a>
		</div>
		<div class="col-xl-4 col-md-4 col-sm-12 text-center">
			<a href="sell.jsp" > <button class="teal lighten-1 btnpadding">Sell</button></a>
		</div>
		
	</div> -->
	<div class="row " style="background-color: white; padding-top: 20px; padding-left: 100px;">
	<div class="col-xl-12 col-md-12 col-sm-12 " >
		<h3 class=" header text-center">Choose Category:</h3>
		<p class=" header text-center">Choose category of your own choice in which you want to buy.</p>
	</div>
	</div>
	
	
	
	<!-- <div class="row " style="background-color: white;">
	<div class="col-xl-12 col-md-12 col-sm-12 text-center">
		<form>
		<i class="material-icons" >location_on</i>
		<input type="text" placeholder="Enter your location" name="loc" id="loc" style="width: 200px; margin-bottom:0;">
		</form>
	</div>
	</div> -->
	
	<%-- <div class="row" >
	<form action="ProductCards.jsp" method="post">
		<input type="text" name="cat" value="" id="cat" >
		<input type="text" name="price" value="<%=maxprice %>" >
		<input type="text" name="city" value="all" >
		<input type="text" name="gen" value="all" >
	
	</form>
	</div> --%>
	
   		<div class="row first-row " style="background-color: white;">
   			<div class="col-lg-3 col-xl-3  col-sm-9 catbox text-center">
   				<a href="BuyAuth?cat=jewellery&price=<%=maxprice %>&city=all&gen=both" id="jewellery">
	   				<img src="assets/logos/jewellerylogo.jpeg" style="height: 67px; width: 100px;">
	   				<h2>Jewellery</h2>
	   				<p>small description of the categories is here mentioned here. </p>
   				</a>
   			</div>
   			
   			<div class="col-lg-3 col-xl-3  col-sm-9 catbox text-center">
   				<a href="BuyAuth?cat=antiques&price=<%=maxprice %>&city=all&gen=both" id="antiques">
	   				<img src="assets/logos/antiqueslogo.jpeg" style="height: 67px; width: 100px;">
	   				<h2>Antiques</h2>
	   				<p>small description of the categories is here mentioned here. </p>
	   			</a>
   			</div>
   			
   			<div class="col-lg-3 col-xl-3  col-sm-9  catbox text-center">
   				<a href="BuyAuth?cat=furniture&price=<%=maxprice %>&city=all&gen=both" id="furniture">
	   				<img src="assets/logos/furniturelogo.jpeg" style="height: 67px; width: 100px;">
	   				<h2>Furniture</h2>
	   				<p>small description of the categories is here mentioned here. </p>
	   			</a>
   			</div>
   			
   			<div class="col-lg-3  col-xl-3  col-sm-9 catbox text-center">
   				<a href="BuyAuth?cat=vehicles&price=<%=maxprice %>&city=all&gen=both" id="vehicles">
	   				<img src="assets/logos/carlogo.jpeg" style="height: 67px; width: 100px;">
	   				<h2>Vehicle</h2>
	   				<p>small description of the categories is here mentioned here. </p>
	   			</a>
   			</div>
   			
   			<div class="col-lg-3 col-xl-3  col-sm-9 catbox text-center">
   				<a href="BuyAuth?cat=fashion&price=<%=maxprice %>&city=all&gen=both" id="fashion">
	   				<img src="assets/logos/fashionlogo.jpeg" style="height: 67px; width: 80px;">
	   				<h2>Fashion</h2>
	   				<p>small description of the categories is here mentioned here. </p>
	   			</a>
   			</div>
   			
   			<div class="col-lg-3 col-xl-3  col-sm-9  catbox text-center">
   				<a href="BuyAuth?cat=electronics&price=<%=maxprice %>&city=all&gen=both" id="electronics">
	   				<img src="assets/logos/electronicslogo.png" style="height: 67px; width: 110px;">
	   				<h2>Electronics</h2>
	   				<p>small description of the categories is here mentioned here. </p>
	   			</a>
   			</div>
   			
   		
   		</div>
   			
   			
   		</div>
   		
   		
	
	
	<div class="parallax-container">
			      <div class="parallax"><img src="assets/carusol/antixsandclock.jpg"></div>
			    </div>
			    
			    
			    
			    <div class="section white" style="padding: 0">
			    
			      <div class="row " >
			      	<div class="col-xl-12 col-md-12 col-sm-12" style="background-image: linear-gradient(#eeeeee,white); padding-top: 30px;">
			        	<h2 class="header text-center"><b>About Us</b></h2>
			        </div>
			      </div>
			      
			      <div class="row">
			      	<div class="col-xl-3 col-md-3 col-sm-12 about-box" style="margin-left: 90px;">
			      		<h3 class="text-center teal-text">Seller</h3>
			      		<p class="black-text">Lorem Ipsum is simply dummy text of the printing and typesetting industry.
			      		 Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
			      		 when an unknown printer took a galley of type and scrambled it to make a type
			      		  specimen book. It has survived not only five centuries, 
			      		  but also the leap into electronic typesetting,
			      		   remaining essentially unchanged. It was popularised in the 1960s 
			      		   with the release of Letraset sheets containing Lorem Ipsum passages,
			      		    and more recently with desktop publishing software like Aldus PageMaker
			      		     including versions of Lorem Ipsum.</p>
			      	
			      	</div>
			      	
			      	<div class="col-xl-3 col-md-3 col-sm-12 about-box">
			      		<h3 class="text-center teal-text">Verifier</h3>
			      		<p class="black-text">Lorem Ipsum is simply dummy text of the printing and typesetting industry.
			      		 Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
			      		 when an unknown printer took a galley of type and scrambled it to make a type
			      		  specimen book. It has survived not only five centuries, 
			      		  but also the leap into electronic typesetting,
			      		   remaining essentially unchanged. It was popularised in the 1960s 
			      		   with the release of Letraset sheets containing Lorem Ipsum passages,
			      		    and more recently with desktop publishing software like Aldus PageMaker
			      		     including versions of Lorem Ipsum.</p>
			      	
			      	</div>
			      	
			      	<div class="col-xl-3 col-md-3 col-sm-12 about-box">
			      		<h3 class="text-center teal-text">Buyer</h3>
			      		<p class="black-text">Lorem Ipsum is simply dummy text of the printing and typesetting industry.
			      		 Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
			      		 when an unknown printer took a galley of type and scrambled it to make a type
			      		  specimen book. It has survived not only five centuries, 
			      		  but also the leap into electronic typesetting,
			      		   remaining essentially unchanged. It was popularised in the 1960s 
			      		   with the release of Letraset sheets containing Lorem Ipsum passages,
			      		    and more recently with desktop publishing software like Aldus PageMaker
			      		     including versions of Lorem Ipsum.</p>
			      	
			      	</div>
			      
			      </div>
			      
			      <div class="row">
				<div class="col-xl-12 col-md-12 col-sm-12 " style="width: 100%; height: 15vh; background-image: linear-gradient(white,#b2dfdb,#26a69a)">
				
				</div>
				
				<div class="col-xl-12 col-md-12 col-sm-12 teal lighten-1" style="width: 100%; padding: 0;">
				
					<div class="row"  style="padding: 0 50px;">
						<div class="col-xl-3 col-md-3 col-sm-12 text-center count">
							<img src="assets/icons/searcher.png" style="height: 80px; width: 90px;">
							<h5>No. of Verifiers</h5>
							<h2><b>500+</b></h2>
						</div>
						
						<div class="col-xl-3 col-md-3 col-sm-12 text-center count">
							<img src="assets/icons/box.png" style="height: 80px; width: 90px;">
							<h5>No. of Buyers</h5>
							<h2><b>1500+</b></h2>
						</div>
						<div class="col-xl-3 col-md-3 col-sm-12 text-center count">
							<img src="assets/icons/full-items-inside-a-shopping-bag.png" style="height: 80px; width: 90px;">
							<h5>No. of Products</h5>
							<h2><b>2500+</b></h2>
						</div>
						<div class="col-xl-3 col-md-3 col-sm-12 text-center count">
							<img src="assets/icons/verified-text-paper.png" style="height: 80px; width: 90px;">
							<h5>No. of Verified Products</h5>
							<h2><b>1500+</b></h2>
						</div>
						
					</div>
				
				</div>
				
				<div class="col-xl-12 col-md-12 col-sm-12 " style="width: 100%; height: 20vh; background-image: linear-gradient(#26a69a,#b2dfdb, white)">
				
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
						<li><a href="#"><img src="assets/logos/whatsapp-pic.png">&nbsp; &nbsp;WhatsApp</a> </li>
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

/* $("#antiques").click(function() {
	alert("antiques");
	$("name").val("antiques");
});
 */

</script>		



</body>
</html>


















<!-- 
----------------------------------------------------------------------------------------------------------------

 The Modal
  <div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        Modal Header
        <div class="modal-header">
          <h4 class="modal-title">Name </h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        Modal body
        <div class="modal-body text-center">
        <img src="" alt="pic will be placed here"><br>
          Address: #123 Model Town<br>
          Category: jewellery<br>
          City: Panipat<br>
          Contactno: 1234567890
        </div>
        
        Modal footer
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">ok</button>
        </div>
        
      </div>
    </div>
  </div>
   -->