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
<link rel="stylesheet" href="buyerinfocss.css" type="text/css">



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
	padding: 15px 15px 5px 15px;
	background-image: linear-gradient(to bottom right, white, grey);
	margin: 0;
	padding-top: 100px;
}

.signup-container {
	/* border: 2px solid black; */
	min-height: 400px;
	width: 670px;
	padding: 50px 60px 30px 100px;;
	background-color: white;
	margin-top: 30px;
	border-radius: 20px;
}




.label0 {
	color: black;
	font-weight: bold;
	font-size: 18px;
	text-align: left;
	margin-bottom: 0;
}


.btn {   
   -webkit-box-shadow: 0 transparent;
    box-shadow: none;
    text-transform: none;
    padding: 0;
    line-height: 0;
   margin-left: 128px;
   margin-bottom: 50px;
}

.btn:hover {
	background-color: transparent;
	box-shadow: none;
	-webkit-box-shadow: 0 transparent;
}


.input0 {
	max-width: 320px;
}



input[type=text]:not(.browser-default) {
	margin-bottom: 20px;
	margin-left: 40px;
}

input[type=text]:not(.browser-default):focus:not([readonly]) {
     border-bottom: 1px solid crimson;
     box-shadow: 0 1px 0 0 crimson;
     color: black;
   }
   


input[type=password]:not(.browser-default) {
	margin-bottom: 50px;
	margin-left: 60px;
}

input[type=password]:not(.browser-default):focus:not([readonly]) {
     border-bottom: 1px solid crimson;
     box-shadow: 0 1px 0 0 crimson;
     
     
   }
   
   
.loc0, .loc1 {
	background-color: gray;
	color: black;
	border: 1px solid black;
	width: 100px;
/* 	margin-bottom: 30px; */
	display: inline;
	margin-left: 95px;
}

.loc0:focus, .loc1:focus  {
	background-color: lightblue;
	color: black;
	border: 1px solid black;
}


.loc0 option, .loc1 option {
	background-color: lightblue;
	color: black;
	
}

.loc0 {
	margin-left: 52px;
	margin-top: 10px;
}

.loc1 {
	margin-left: 70px;
}

.tag1, .tag2, .tag3 {
	font-size: 15px;
	color: gray;
	margin-bottom: 10px;
}



.tag1 {
	margin-left: 160px;
}


.tag2 {
	margin-left: 130px;
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
	border:4px solid crimson;
	border-radius: 5px ;
	padding: 0 50px 5px 50px;
	background-color: transparent;
	color: crimson;
	margin: 0;
	
}

.btn1 button:hover {
	background-color: crimson;
	border:4px solid crimson;
	color: black;
}


#cvv {
	width: 100px;
	margin-left: 78px;
} 

#nm {
	margin-left: 65px;
}


#otp {
	margin-left: 80px;
	margin-bottom: 5px;
}



</style>


</head>
<body>


	<div class="container-fluid bg">
	<div class="row signup-form">
			
			
				<!-- <div class="signup-form-title-pic" style= "background-image: url('assets/antixbicycle.jpg');">
					<span class="signup-form-title">
						Sign Up
					</span>
				</div>  -->
        
        
        <div class="signup-container">
				
				
					<form method=" " action="post">
					
					<label class="label0" for="no">Card no. :</label>
					<input class="input0" type="text" id="no" name="no" placeholder="Enter card no"/><br>
					
					
					
					<label class="label0" for="name">CVV : </label>
					<input class="input0" type="text" id="cvv" name="cvv" placeholder="Enter CVV no"/><br>
					
					<label class="label0" for="date">Validity : </label>
					<select class="form-control loc0">
				 		<%for(int i=1; i<50; i++)
			            {%>
				    	<option><%=i %></option>
					    <%  }%>
				 	
				 		</select>
				 		
				 		
				 	<select class="form-control loc1">
				 		<%for(int i=1; i<50; i++)
			            {%>
				    	<option><%=i %></option>
					    <%  }%>
				 	
				 		</select>	
			
					<br>
					
					
					<label class="tag1">month</label>
					<label class="tag2">year</label><br>
					

					<label class="label0" for="nm">Name :</label>
					<input class="input0" type="text" id="nm" name="nm" placeholder="Enter Card Holder Name "/><br>

				 	
				 	<label class="label0" for="otp">OTP :</label>
					<input class="input0" type="password" id="otp" name="otp" placeholder="Enter one time password"/><br>
					
					
					<button class="btn" ><label class="tag3">Resend otp</label></button>
				 	
				 	
				 		
				 		
					
					
					
					<div class="buttons text-center">
					<span class="btn1">
					 	<button type="submit" name="variable">Login </button>
					</span>
					</div>	
					
					
				</form>
	
				</div>
	
		</div>
		

</body>
</html>