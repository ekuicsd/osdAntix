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

	.row {
margin-bottom: 0px;
margin-top: 10px;}
	
input[type=text]:not(.browser-default) {
height: auto;
margin-bottom: 20px;
font-size: 15px;}

label {
margin: 0 0 5px 0;}

.btn {
height:30px;
font-size: 14px;
letter-spacing:.2px;
text-transform: none;
padding-top: 3px;}
</style>

</head>
<body>

	<div class="row teal lighten-1" style="width: 100%; height : 10vh; padding: 0; margin: 0;"></div>
	<div class="container">
		<div class="row">
			<div class="col-xl-6 col-md-12 col-sm-12 heading">
				<h2>Please Update the delivery Address</h2>
				<p>When finished, click the "Ship to this address" button to proceed with your order.
					 Or you may return to your Address Book.Required fields.</p>
				
			</div>
		</div>
		<hr>
		
		<form action="#" method="post">
		<div class="row">
			<div class="col-xl-5 col-md-8 col-sm-12 heading">
				
					<label>Full Name:</label>
					<input class="form-control" type="text" name="name" id="name">
					<label>Mobile no:</label>
					<input type="text" class="form-control" name="no" id="no">
					<label>Pin Code:</label>
					<input type="text" class="form-control" name="pin" id="pin">
					<label>House no, Flat, Building, comapny:</label>
					<input type="text" class="form-control" name="house" id="house">
					<label>Area, Colony, Street, Sector, Village:</label>
					<input type="text" class="form-control" name="area" id="area">
					<label>Landmark:</label>
					<input type="text" class="form-control" name="land" id="land">
					<label>Town/City:</label>
					<input type="text" class="form-control" name="city" id="city">
					<label>State:</label>
					<input type="text" class="form-control" name="state" id="state">
			</div>
		</div>
		<div class="row">
			<div class="col-xl-5 col-md-5 col-sm-5 text-right">
				<button type="button" class="btn">Deliver to this address</button>
			</div>
		
		</div>
		</form>
		<br>
		<hr>
		<br>
		<div class="row">
		copy rights
		</div>
		
	
	</div>


</body>
</html>