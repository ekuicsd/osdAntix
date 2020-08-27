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
padding: 0;
margin: 0;
}

.row {
padding: 0;
margin: 0;
}


.bg {
	
	width: 100%;  
 /*  min-height: 90vh; */
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
  padding: 15px 15px 5px 15px;
  background: #white;
  margin: 80px 0 0 0;
}

input[type=text]:not(.browser-default) {
padding: 0 0 0 0px;
height: 2.2rem;
border: 1px solid #ced4da;
border-radius: .25rem;
margin-right: 10px;
}

.col-xl-3, .col-md-3, .col-sm-12 {
padding: 3px;}

.btn {
font-weight: bold;
padding: 0 20px;}

label {
color: blue;
font-size: 13px;}

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
      <a class="nav-link" href="#"><i class="material-icons">collections</i>Buy</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="VerifierWlcmPage.jsp"><i class="material-icons">done_all</i>Verify</a>
    </li>
  </ul>
</nav>

	<div class="container-fluid">
		<div class="row black" style="width: 100%; height: 11vh;"></div>
		<div class="row bg">
			<img src="assets/logos/logo.png" style="height: 150px; width: 600px;"><br>
			
			</div>
			
			<form action="BuyAuth" method="post">
				<div class="row" style="padding: 20px 150px;">
					<div class="col-xl-3 col-md-3 col-sm-12">
						<label>Select Category:</label>
						  <select name="cat" class=" form-control browser-default" required>
						 <option value="" disabled selected>Choose Category</option>
					    <option value="antiques">Antiques</option>
					    <option value="furniture">Furniture</option>
					    <option value="vehicles">Vehicles</option>
					    <option value="electronics">Electronics</option>
					    <option value="fashion">Fashion</option>
					    <option value="jewellery">Jewellery</option>
						  </select>	
					
					</div>
					
					<div class="col-xl-3 col-md-3 col-sm-12">
						<label for="city" >Select City:</label>
    					<input type="text" name="city" class="form-control" id="city" value="Delhi" placeholder="Enter city" name="city">  
							
					
					</div>
					
					<div class="col-xl-3 col-md-3 col-sm-12">
						<label>Select genuine Product</label>
						  <select class=" form-control browser-default" name="gen">
						    
						    <option value="genuine">Genuine</option>
						    <option value="not genuine">Not genuine</option>
						    <option value="both" selected>Both </option>
						  </select>	
					
					</div>
					
					<div class="col-xl-3 col-md-3 col-sm-12">
						<label for="price" >enter price upto:</label>
    					<input type="text" class="form-control" name="price" id="price" value="20000" placeholder="Enter price" name="price">  
							
					</div>
				
				</div>
				
				<div class="row" >
				<div class="col-xl-12 col-md-12 col-sm-12 text-center">
				<button class="btn" type="submit">Submit</button>
				</div>
				</div>
			
				
				  
				</form>
		
		
		
	</div>

</body>
</html>