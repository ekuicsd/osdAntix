<%@ page import="service.DBHandler" %>
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
<link type ="text/css" rel="stylesheet" href="AllCss/editProfileCss.css">

<script src="jquery3-4-1.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script> -->
<script type="text/javascript" src="materialize-v1.0.0/materialize/js/materialize.min.js"></script>
<script type="text/javascript" src="bootstrap-4.0.0-dist/js/bootstrap.min.js"></script>

<style>
#uname {
margin-left: 42px;}
</style>

</head>
<body>
<%DBHandler obj= new DBHandler(); 
String phone=request.getParameter("nm");
System.out.println(phone);
Verifier v=obj.getVerifierByPhone(phone); 

%>

<nav class="navbar navbar-expand-sm teal lighten-1 justify-content-end fixed-top">
  <span class="logo">
		  <a href="verifierMainProfile.jsp?nm=<%=phone%>"><img src="assets/antixbicycle.jpg"></a>
		
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
        <a class="dropdown-item" href="verifierMainProfile.jsp?nm=<%=phone%>">Your Profile</a>
        <a class="dropdown-item" href="#">Log Out</a>
        <a class="dropdown-item" href="#">Delete Account</a>
      </div>
    </li>
  </ul>
</nav>

<div class="container-fluid bg">
	<div class="row black" style="width: 100%; height:11vh; padding:0; margin: 0; "></div>
	
	<div class="row signup-form" style="margin-top: 20px;">
			
			
				<div class="signup-form-title-pic" style= "background-image: url('assets/antixbicycle.jpg');">
					<span class="signup-form-title">
						Edit Profile
					</span>
				</div>
				<div class="signup-container">
				
				
					<form action="verifierEditProfile?nm=<%=phone %>" method="post" onsubmit="updateProfile()">
					
					
					<label class="label0" for="name">Name : </label>
					<input class="input0" type="text" id="name" name="name" placeholder="Enter Name" value="<%=v.getName() %>" required/><br>
					
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
					<input class="input0" type="text" id="city" name="city" placeholder="Enter your city" value="<%=v.getCity() %>" required/><br>
					
					
					<label class="label0"id="addmargin" for="add">Address : </label>
					 <textarea id="add" placeholder="Address" name="add" class="materialize-textarea input0"  required><%=v.getAdd() %></textarea><br>
					
					
					<label class="label0" for="uname">User Name : </label>
					<input class="input0" type="text" id="uname" name="uname" placeholder="Enter Username" value="<%=v.getUsername() %>" required/><br>
					
	
					
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
	function updateProfile()
	{
		alert("Profile updated Successfully!!");
	}
	</script>


</body>
</html>