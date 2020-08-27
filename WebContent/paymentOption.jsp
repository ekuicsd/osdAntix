<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
 <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="buyerprofilecss.css" type="text/css">



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<style>
.container-fluid {
	margin: 0;
	padding: 10px;
}

.bg {
	background-image: linear-gradient(to bottom right, white, grey);
	min-height: 100vh;
	display: flex;
	/* text-align: center; */
	align-items: center;
	justify-content: center;
}

.pay {
	width: 350px;
	height: 350px;
	background-color: white;
	padding: 50px;
	padding-left: 60px; 
	border-radius: 20px;
	
	
}

form {
	margin-top: 15px;
}

label {
	color: black;
	font-weight: bold;
	font-size: 30px;
	/* text-align: left; */
	margin-bottom: 0;
}

 [type="radio"]:not(:checked)+label, [type="radio"]:checked+label {
    /* position: relative;
    padding-left: 35px;
    cursor: pointer;
    display: inline-block;
    height: 25px;
    line-height: 25px;
    
    -webkit-transition: .28s ease;
    transition: .28s ease;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    margin-left: 100px;
    margin-top: 20px;
    margin-bottom: 20px; */
    color: black;
    font-weight: bold;
    font-size: 21px;
    margin: 10px;
    
} 

[type="radio"]:checked+label:after, [type="radio"].with-gap:checked+label:after {
    background-color: crimson;
    border: 2px solid crimson;
}

[type="radio"]:not(:checked)+label:before, [type="radio"]:not(:checked)+label:after {
    border: 2px solid black;
}


[type="radio"]:checked+label:after, [type="radio"].with-gap:checked+label:before, [type="radio"].with-gap:checked+label:after {
    border: 2px solid crimson;
}


[type="radio"]:not(:checked)+label:before, [type="radio"]:not(:checked)+label:after, [type="radio"]:checked+label:before, [type="radio"]:checked+label:after, [type="radio"].with-gap:checked+label:before, [type="radio"].with-gap:checked+label:after {
    border-radius: 0;
}


.buttons  {
	text-decoration: none;
	background-color: transparent;
	vertical-align: middle;
} 

.buttons {
	text-decoration: none;
	margin-bottom: 25px;
	margin-top: 40px;
	
} 



.btn1 button {
	font-size: 22px;
	font-weight: bold;
	border:4px solid crimson;
	border-radius: 5px ;
	padding: 0 50px 5px 50px;
	background-color: transparent;
	color: crimson;
	
}

.btn1 button:hover {
	background-color: crimson;
	border:4px solid crimson;
	color: black;
}



</style>
</head>
<body>

<div class="container-fluid bg">
		
		
        
        <div class="pay">
		
			<form action="paymentOptionAuth" method="post">
				<input class="with-gap" name="group1" type="radio" id="cc" value="credit card"/>
                 <label for="cc">Credit Card</label><br>
                 
                 <input class="with-gap" name="group1" type="radio" id="dc" value="debit card" />
                 <label for="dc">Debit Card</label><br>
                 
                 <input class="with-gap" name="group1" type="radio" id="cod" value="cash"/>
                 <label for="cod">Cash On Delivery</label><br>
                 
                 
                 <div class="buttons text-center">
					<span class="btn1">
					 	<button type="submit">Proceed </button>
					</span>
					</div>	
			
			</form>
		
		</div>
	
	
	</div>
	


</body>
</html>