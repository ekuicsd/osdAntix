<%@ page import="service.DBHandler" %>
<%@ page import="model.sellerPayment" %>


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
<link type ="text/css" rel="stylesheet" href="AllCss/paymentEditCss.css">

<script src="jquery3-4-1.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script> -->
<script type="text/javascript" src="materialize-v1.0.0/materialize/js/materialize.min.js"></script>
<script type="text/javascript" src="bootstrap-4.0.0-dist/js/bootstrap.min.js"></script>

<!-- <style>
	.container-fluid {
	padding: 0;
	margin: 0;}

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
 -->
 
 
<style>

	#accno {
	margin-left: 64px;}
	
	#ifsc {
	margin-left: 88px;}

	#bank {
	margin-left: 54px;}

</style>

</head>
<body>

<%String phone=request.getParameter("sphn");
DBHandler obj=new DBHandler();
sellerPayment s=obj.getSellerAccInfoByPhone(phone);
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
		<div class="row black" style="height: 11vh; width: 100%; margin: 0; padding: 0;"></div>
		
		<div class="row signup-form" style="margin-top: 20px;">
			
			
				<div class="signup-form-title-pic" style= "background-image: url('assets/antixbicycle.jpg');">
					<span class="signup-form-title">
						Edit Payment Options
					</span>
				</div>
				<div class="signup-container">
				
				
					<form action="editSellerPayment?no=<%=phone %>" method="post" onsubmit="updateProduct()" >
					
					
					<label class="label0" for="accno">Account no : </label>
					<input class="input0" type="text" id="accno" name="accno" placeholder="Enter Account no" value="<%=s.getAccountno() %>" required/><br>
					
					<label class="label0" for="accnm">Account Name : </label>
					<input class="input0" type="text" id="accnm" name="accnm" placeholder="Enter account holder name" value="<%=s.getName() %>" required/><br>
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
					
					
					
					
					<label class="label0" for="ifsc">IFSC code </label>
					<input class="input0" type="text" id="ifsc" name="ifsc" placeholder="Enter IFSC code" value="<%=s.getIfsc() %>"  required/><br>
					
					
					<!-- <label class="label0"id="addmargin" for="add">Bank Branch </label>
					 <textarea id="add" placeholder="Address" name="add" class="materialize-textarea input0"  required></textarea><br>
					 -->
					
					<label class="label0" for="bank">Bank Branch : </label>
					<input class="input0" type="text" id="bank" name="bank" placeholder="Enter your bank branch" value="<%=s.getBank() %>" required/><br>
					
	
					
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
		alert("Payment Options Update Successfully!!");
	}
	
	</script>

</body>
</html>