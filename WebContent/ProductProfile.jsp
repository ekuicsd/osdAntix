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
.container-fluid {
padding: 0;
margin: 0;}

.row {
padding : 0;
margin: 0;}

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

.btn {
font-weight: bold;
padding: 0 20px;}

label {
color: blue;
font-size: 13px;}

.middle {
padding-top: 28px;}

.image img{
width: 370px;
height: 350px;
border-radius: 5px;

}

.txt-size {
font-size: 16px;}


.bold {
font-size: 20px;}

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

.about-box p {
text-align: justify;}



#img1, #img2, #img3 {
cursor: pointer;}

.img-zoom-container {
  position: relative;
  display: contents;
  cursor: zoom-in;
  }

.img-zoom-lens {
  position: absolute;
  border: 1px solid #d4d4d4;
  /*set the size of the lens:*/
  width: 40px;
  height: 40px;
  visibility: hidden;
  
}

.img-zoom-result {
 border: 1px solid #d4d4d4;
  /*set the size of the result div:*/
  width: 350px;
  height: 350px;
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



</style>

<script>

	
	function loadname() {
	
		var query=window.location.search.substring(1);
		
		var vars=query.split("&");
		
		var name=vars[1].split("=");
		
		if(name[1]!="null") {
			document.getElementById("dis").style.display="block";
		}
		
	}
	
	
	function imageZoom(imgID, resultID) {
		  var img, lens, result, cx, cy;
		  img = document.getElementById(imgID);
		  result = document.getElementById(resultID);
		  /*create lens:*/
		  lens = document.createElement("DIV");
		  lens.setAttribute("class", "img-zoom-lens");
		  /*insert lens:*/
		  img.parentElement.insertBefore(lens, img);
		  /*calculate the ratio between result DIV and lens:*/
		  cx = result.offsetWidth / lens.offsetWidth;
		  cy = result.offsetHeight / lens.offsetHeight;
		  /*set background properties for the result DIV:*/
		  result.style.backgroundImage = "url('" + img.src + "')";
		  result.style.backgroundSize = (img.width * cx) + "px " + (img.height * cy) + "px";
		  /*execute a function when someone moves the cursor over the image, or the lens:*/
		  lens.addEventListener("mousemove", moveLens);
		  img.addEventListener("mousemove", moveLens);
		  /*and also for touch screens:*/
		  lens.addEventListener("touchmove", moveLens);
		  img.addEventListener("touchmove", moveLens);
		  function moveLens(e) {
		    var pos, x, y;
		    /*prevent any other actions that may occur when moving over the image:*/
		    e.preventDefault();
		    /*get the cursor's x and y positions:*/
		    pos = getCursorPos(e);
		    /*calculate the position of the lens:*/
		    x = pos.x - (lens.offsetWidth / 2);
		    y = pos.y - (lens.offsetHeight / 2);
		    /*prevent the lens from being positioned outside the image:*/
		    if (x > img.width - lens.offsetWidth) {x = img.width - lens.offsetWidth;}
		    if (x < 0) {x = 0;}
		    if (y > img.height - lens.offsetHeight) {y = img.height - lens.offsetHeight;}
		    if (y < 0) {y = 0;}
		    /*set the position of the lens:*/
		    lens.style.left = x + "px";
		    lens.style.top = y + "px";
		    /*display what the lens "sees":*/
		    result.style.backgroundPosition = "-" + (x * cx) + "px -" + (y * cy) + "px";
		  }
		  function getCursorPos(e) {
		    var a, x = 0, y = 0;
		    e = e || window.event;
		    /*get the x and y positions of the image:*/
		    a = img.getBoundingClientRect();
		    /*calculate the cursor's x and y coordinates, relative to the image:*/
		    x = e.pageX - a.left;
		    y = e.pageY - a.top;
		    /*consider any page scrolling:*/
		    x = x - window.pageXOffset;
		    y = y - window.pageYOffset;
		    return {x : x, y : y};
		  }
		}

	
	
	
</script>



</head>
<body  onload="loadname()">


	<%
	System.out.println("hello Product Profile");
	String name=(String)session.getAttribute("user"); 
	int rqid=Integer.parseInt(request.getParameter("rqno"));
	
	/* String cat=request.getParameter("cat");
	cat=cat.toLowerCase(Locale.ENGLISH);
	String city=request.getParameter("city");
	city=city.toLowerCase(Locale.ENGLISH); 
	String gen=request.getParameter("gen");
	String strprice=request.getParameter("price");
	int price=Integer.parseInt(request.getParameter("price"));
	 */
	System.out.println(rqid);
	DBHandler obj=new DBHandler();
	Product p=obj.getProdProfile(rqid); 
	
	 int flag2=obj.getImg2(rqid); 
	 System.out.println(flag2); 
	 
	 int flag3=obj.getImg3(rqid); 
	 System.out.println(flag3); 
	
	/* System.out.println(cat);
	System.out.println(city);
	System.out.println(gen);
	System.out.println(price); */
	
	
	
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
	
	<form action="ProductCards.jsp" method="post">
	<div class="row" style="padding: 10px 10px 20px 200px;">
		<div class="col-xl-2 col-md-3 col-sm-12">
			<label>Select Category:</label>
			  <select name="cat" class=" form-control browser-default">
			<option selected><%=p.getCat() %></option>
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
 					<input type="text" name="city" class="form-control" id="city"  placeholder="Enter city" value="all" >  
				
		
		</div>
		
		<div class="col-xl-2 col-md-2 col-sm-12">
			<label>Select genuine Product</label>
			  <select class=" form-control browser-default" name="gen">
			   
			    <option value="genuine">Genuine</option>
			    <option value="not genuine">Not genuine</option>
			    <option value="both" selected>Both </option>
			  </select>	
		
		</div>
		
		<div class="col-xl-2 col-md-2 col-sm-12">
			<label for="price" >enter price upto:</label>
 					<input type="text" class="form-control" name="price" id="price"  placeholder="Enter price" value="<%=p.getPrice() %>"  >  
				
		</div>
		
		<div class="col-xl-2 col-md-2 col-sm-12 text-center middle">
	<button class="btn" type="submit">Submit</button>
	</div>
	
	</div>

	</form>
	
</div>
<div class="container" style="padding: 0px;">

		<div class="row" style="padding: 10px 100px 0 100px;">
		
			<div class="col-xl-1 col-md-1 col-sm-2">
				<img id="img1" onclick="img1()" src="images?rqno=<%=rqid%>" width="60px" height="60px"></img><br><br>
				<% if(flag2!=1)
				{%>
				
				<img id="img2" onclick="img2()" src="image2?rqno=<%=rqid%>" width="60px" height="60px"></img> <br><br>
				<%} 
				if(flag3!=1) {%>
				<img id="img3" onclick="img3()" src="image3?rqno=<%=rqid%>" width="60px" height="60px"></img> <br><br>
				 <%} %>
				<div class="row">
					
				</div>
			</div>
			
			<div class="img-zoom-container">
			  <img id="myimage" src="images?rqno=<%=rqid%>" width="350" height="350" style="margin: 0 15px">
			  <div id="myresult" class="img-zoom-result" style="margin:0 15px; display: none;"></div>
			</div>
						
			<%-- <div class="img-zoom-container">
			<div class="col-xl-5 col-md-5 col-sm-10 image ">
				<img id="myimage" src="images?rqno=<%=rqid%>">
			
			</div>
			
			<div id="myresult" class="col-xl-5 col-md-5 col-sm-12" style="padding-left:20px; display:none; z-index: 100;">
			<div id="myresult" class="img-zoom-result">
			</div>
			</div> --%>
			
			
			
			<div id="hoverdiv1" class="col-xl-5 col-md-5 col-sm-12" style="padding-left:20px;" >
			
				<h1><%=p.getName() %></h1>
				<p class="txt-size" ><%=p.getDesc() %></p>
				<i class="material-icons">update</i><%=p.getDate() %>
				<i class="material-icons ">location_on</i>address, city<br>
				<i class="material-icons">person</i>personName  
				<i class="material-icons">local_phone</i> 1234567890<br>
				<i class="material-icons">list</i><%=p.getCat() %><br>
				<br><b class="bold">INR <%=p.getPrice() %>/-</b><br><br>
  				<%if(name!=null){ %>
				<a href="ProductCards.jsp?"><button type="button" class="btn">Add to Cart</button></a>
				<%} 
				
				else{ %>
				<a href="BuyerLogin.jsp?rqno=<%=rqid%>"><button type="button" class="btn">Add to Cart</button></a>
				<%} %>
				
			</div>
			
			</div>
		
		
		<!-- </div> -->
		
</div>
<div class="container-fluid">		
		
		<div class="row footer" style="margin-top: 80px;">
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

/* $("#myimage").mouseover(function() {
	$("myresult").css("display", "block");
	$("hoverdiv1").css("display", "none");
}); */



$('#myimage').hover(
		
        function () {
        	$("#myresult").css("display", "block");
        	$("#hoverdiv1").css("display", "none");
        	imageZoom("myimage", "myresult");
        }, 
			
        function () {
        	$("#myresult").css("display", "none");
        	$("#hoverdiv1").css("display", "block");
        	
        }
        
     );
 
</script>
<script>

function img1() {
	var rq=<%=rqid%>;
	document.getElementById("myimage").src='images?rqno='+rq;
}

function img2() {
	var rq=<%=rqid%>;
	document.getElementById("myimage").src='image2?rqno='+rq;
}

function img3() {
	var rq=<%=rqid%>;
	document.getElementById("myimage").src='image3?rqno='+rq;
	}

//Initiate zoom effect:



<%-- $("#img1").click(function() {
	alert("hello");
	$("#myimage").attr("src", "image2?rqno="<%=rqid%>);
}); 
 --%>
</script>




</body>
</html>