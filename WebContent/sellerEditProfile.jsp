<%@ page import="service.DBHandler" %>
<%@ page import="model.Seller" %>

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
<link type ="text/css" rel="stylesheet" href="AllCss/editProfileCss.css">

<script src="jquery3-4-1.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script> -->
<script type="text/javascript" src="materialize-v1.0.0/materialize/js/materialize.min.js"></script>
<script type="text/javascript" src="bootstrap-4.0.0-dist/js/bootstrap.min.js"></script>

<!-- <style>
	/* .container-fluid {
	margin: 0;
	padding: 0;}
	
	
	
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
	
	/* background-image: linear-gradient(to bottom right, white, grey); */
	backgroud-color: #5f5f5f;
	margin: 0;
}


.signup-container {
	/* border: 2px solid black; */
	min-height: 400px;
	width: 570px;
	padding: 30px 10px 10px 70px;
	background-image: linear-gradient(rgb(230,230,230),rgb(255,255,255));
}




.signup-form {
	width: 570px;
    background: #fff;
    border-radius: 10px;
    overflow: hidden;
    position: relative;
    border: 1px solid gray;
}

.signup-form-title-pic {
    width: 100%;
    position: relative;
    z-index: 1;
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    flex-wrap: wrap;
    flex-direction: column;
    align-items: center;
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
    padding: 50px 15px 50px 15px;
}

.signup-form-title-pic::before {
    content: "";
    display: block;
    position: absolute;
    z-index: -1;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    background-color: rgba(54,84,99,0.7);
}

.signup-form-title {
    font-family: Poppins-Bold;
    font-size: 30px;
    color: #fff;
    text-transform: uppercase;
    line-height: 1.2;
    text-align: center;
}

.label0 {
	color: black;
	font-weight: bold;
	font-size: 18px;
	text-align: left;
	margin-bottom: 0;
}



.input0 {
	max-width: 270px;
}



input[type=text]:not(.browser-default) {
	margin-bottom: 20px;
	margin-left: 35px;
}

input[type=text]:not(.browser-default):focus:not([readonly]) {
     border-bottom: 1px solid #26a69a;
     box-shadow: 0 1px 0 0 #26a69a;
     color: black;
   }
   
#name {
	margin-left: 80px;
	
}

#no {
	margin-bottom: 25px;
}

#city {
	margin-left: 100px;
}


/* input[type=password]:not(.browser-default) {
	margin-bottom: 50px;
	margin-left: 50px;
}

input[type=password]:not(.browser-default):focus:not([readonly]) {
     border-bottom: 1px solid #26a69a;
     box-shadow: 0 1px 0 0 #26a69a;
     
     
   } */
   
   
.loc1, .loc2 {
	background-color: gray;
	color: black;
	border: 1px solid black;
	width: 320px;
	margin-bottom: 30px;
	display: inline;
	margin-left: 90px;
}

.loc1:focus, .loc2:focus  {
	background-color: lightblue;
	color: black;
	border: 1px solid black;
}


.loc1 option, .loc2 option {
	background-color: lightblue;
	color: black;
	
}

.loc2 {
	margin-left: 100px;
}


 select option:checked {
     background: linear-gradient(#d6d6d6, #d6d6d6);
     background-color: #d6d6d6 !important; /* for IE */
     color: #000000 !important;
 }

select:hover {
	color: #000000;
	background: #c0c0c0;
}



textarea.materialize-textarea {
    overflow-y: hidden;
    padding: 0;
    resize: none;
    min-height: 20px;
    margin-left: 65px;
    margin-bottom:0;
}


textarea:not(.browser-default):focus:not([readonly]) {
     border-bottom: 1px solid #26a69a;
     box-shadow: 0 1px 0 0 #26a69a;
     
     
}
   
#addmargin {
	vertical-align: middle;
	margin-bottom: 35px;
}  
   
#uname {
margin-bottom: 40px;
}  
   




.buttons  {
	text-decoration: none;
	background-color: transparent;
	vertical-align: middle;
} 

.buttons {
	text-decoration: none;
	margin-bottom: 25px;
	
} 



.btn1 button {
	font-size: 22px;
	font-weight: bold;
	border:4px solid #26a69a;
	border-radius: 5px ;
	padding: 0 50px 5px 50px;
	background-color: transparent;
	color: black;
	
}

.btn1 button:hover {
	background-color: #26a69a;
	border:4px solid #26a69a;
	color: black;
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
	
 */
</style>
 -->
</head>
<body>

<%DBHandler obj= new DBHandler();
String phone=request.getParameter("sphn");
System.out.println(phone);
Seller s=obj.getSellerByPhone(phone);

%>

<nav class="navbar navbar-expand-sm teal lighten-1 justify-content-end fixed-top">
  <span class="logo">
		  <a href="sellerProfile.jsp?sphn=<%=phone%>"><img src="assets/antixbicycle.jpg"></a>
		
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
	



<div class="container-fluid bg">

	<div class="row black" style="width: 100%; height: 11vh;" style="margin: 0; padding: 0;"></div>
	<div class="row signup-form">
			
			
				<div class="signup-form-title-pic" style= "background-image: url('assets/antixbicycle.jpg');">
					<span class="signup-form-title">
						Edit Profile
					</span>
				</div>
				<div class="signup-container">
				
				
					<form action="sellerEditProfile?no=<%=phone %>" method="post" onsubmit="updateProduct()">
					
					
					<label class="label0" for="name">Name : </label>
					<input class="input0" type="text" id="name" name="name" placeholder="Enter Name" value="<%=s.getName() %>" required/><br>
					
					<%-- <label class="label0" for="no">Contact no. : </label>
					<input class="input0" type="text" id="no" name="no" placeholder="Enter Phone number" disabled value="<%=phone %>" required/><br> --%>
					<!-- <p class="info">you can't change contact no.</p>
					 -->
					<%-- <label class="label0" for="state">State : </label>
					
						<select class="form-control loc1">
				 		<%for(int i=1; i<50; i++)
			            {%>
				    	<option><%=i %></option>
					    <%  }%>
				 	
				 		</select>
				 		<br> --%>
					
					
					
					
					<label class="label0" for="city">City : </label>
					<input class="input0" type="text" id="city" name="city" placeholder="Enter your city" value="<%=s.getCity() %>" required/><br>
					
					
					<label class="label0"id="addmargin" for="add">Address : </label>
					 <textarea id="add" placeholder="Address" name="add" class="materialize-textarea input0"  required><%=s.getAdd() %></textarea><br>
					
					
					<label class="label0" for="uname">User Name : </label>
					<input class="input0" type="text" id="uname" name="uname" placeholder="Enter Username" value="<%=s.getUsername() %>" required/><br>
					
	
					
<!-- 					<label class="label0" for="pwd">Password : </label>
					<input class="input0" type="password" id="pwd" name="pwd" placeholder="Enter Password" required/>
					 -->
					
					
					
					
					<div class="buttons text-center">
					<span class="btn1">
					 	<button type="submit">Update  </button>
					</span>
					</div>	
					
					
				</form>
				

				
				</div>
		
		</div>		
    
</div>

<script>

	function updateProduct() {
		alert("Profile Update Successfully!!");
	}
</script>

</body>
</html>