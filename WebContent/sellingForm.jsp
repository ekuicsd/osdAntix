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
<link type ="text/css" rel="stylesheet" href="AllCss/sellingFormCss.css">

<script src="jquery3-4-1.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script type="text/javascript" src="materialize-v1.0.0/materialize/js/materialize.min.js"></script>
<script type="text/javascript" src="bootstrap-4.0.0-dist/js/bootstrap.min.js"></script>

<style>
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

<script>
	var count=1;
	function getfile(e) {
		var pic=document.getElementById("file");
		var fr=new FileReader();
		//fr.readAsBinaryString(pic.files[0]);
		fr.readAsDataURL(pic.files[0]);
		fr.onloadend=function(e) {
			var string =e.target.result;
			//var liEle= document.getElementById("string");
			//liEle.innerHTML=bin;
			var img= document.getElementById("imgfile");
			img.src=string;
			document.getElementById("imgfile").style.display = "flex";
		}
	}
	
	function getfile2(e) {
		var pic=document.getElementById("file2");
		var fr=new FileReader();
		//fr.readAsBinaryString(pic.files[0]);
		fr.readAsDataURL(pic.files[0]);
		fr.onloadend=function(e) {
			var string =e.target.result;
			//var liEle= document.getElementById("string");
			//liEle.innerHTML=bin;
			var img= document.getElementById("imgfile2");
			img.src=string;
			document.getElementById("imgfile2").style.display = "flex";
		}
	}
	
	function getfile3(e) {
		var pic=document.getElementById("file3");
		var fr=new FileReader();
		//fr.readAsBinaryString(pic.files[0]);
		fr.readAsDataURL(pic.files[0]);
		fr.onloadend=function(e) {
			var string =e.target.result;
			//var liEle= document.getElementById("string");
			//liEle.innerHTML=bin;
			var img= document.getElementById("imgfile3");
			img.src=string;
			document.getElementById("imgfile3").style.display = "flex";
		}
	}

	
	function addcount() {
		count=count+1;
		
		if(count==2) {
			document.getElementById("sub").style.display="flex";
			document.getElementById("form2").style.display="flex";
		}
		if(count==3) {
			document.getElementById("add").style.display="none";
			document.getElementById("form3").style.display="flex";
		}
	}
	
	
	function subcount() {
		count=count-1;
		
		if(count==1) {
			document.getElementById("sub").style.display="none";
			document.getElementById("form2").value=null;
			document.getElementById("form2").style.display="none";
			document.getElementById("imgfile2").style.display = "none";
		}
		if(count==2) {
			document.getElementById("add").style.display="flex";
			document.getElementById("form3").value=null;
			document.getElementById("form3").style.display="none";
			document.getElementById("imgfile3").style.display = "none";
		}
	}
	
	
	function catselect() {
		var cat=document.getElementById("pcat").value;
		if(cat=="electronics" || cat=="vehicles") {
			document.getElementById("pid").style.display="inline";
			document.getElementById("idlabel").style.display="inline";
			document.getElementById("pid").required = true;
		}
		else {
			document.getElementById("pid").style.display="none";
			document.getElementById("idlabel").style.display="none";
			document.getElementById("pid").required = false;
		}
	}
	
	
	
</script>



</head>
<body>
<% DBHandler obj=new DBHandler(); 
String id=obj.getSellRequestId();
System.out.println(id);

String phno=request.getParameter("sphn");
System.out.println("sellingForm.jsp"+phno);
%>
<script>

  $(document).ready(function() {
	 $("#rid").val(<%=id%>);
	 $("#rqid").val(<%=id%>);
  });


</script>

<nav class="navbar navbar-expand-sm teal lighten-1 justify-content-end fixed-top">
  <span class="logo">
		  <a href="sellerProfile.jsp?sphn=<%=phno%>"><img src="assets/antixbicycle.jpg"></a>
		
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
        <a class="dropdown-item" href="sellerProfile.jsp?sphn=<%=phno%>">Your Profile</a>
        <a class="dropdown-item" href="sellerLogin.jsp">Log Out</a>
        <a class="dropdown-item" href="sellerDelete?sphn=<%=phno%>">Delete Account</a>
      </div>
    </li>
  </ul>
</nav>
	

<form action="SellFormAuth?sphn=<%=phno%>" id="fform2" method="post" onsubmit="insertProduct()" enctype="multipart/form-data">
<div class="container-fluid">
	<div class="row black" style="width: 100%; height:11vh;"></div>
	
			
		<div class="row sellform">
			
			<div class="col-xl-5 col-lg-5 col-sm-12 text-center upload ">
			<div id="form1">
			
				<div class=" row file-field input-field">
			      <div class="btn">
			        <a><span>Upload</span></a>
			        <input type="file" name="file1" id="file" onchange="getfile(event)" required>
			      </div>
			      <div class="file-path-wrapper">
			        <input class="file-path validate" type="text" id="picname" >
			      </div>
			    </div>
			  </div>
			  
			    <br>
			    
				<div class=" row text-center uploadimg ">
				<li name="string" id="string" style="display: none;"></li>
		        <img src="" id="imgfile" alt="upload pic" style="display: none;">
				
				</div>
	<!-- ---------------------------------------------------------------------------------------- -->			
				<div id="form2" style="display: none;">
				<div class=" row file-field input-field">
			      <div class="btn">
			        <a><span>Upload</span></a>
			        <input type="file" name="file2" id="file2" onchange="getfile2(event)">
			      </div>
			      <div class="file-path-wrapper">
			        <input class="file-path validate" type="text" id="picname2" >
			      </div>
			    </div>
			  </div>
			  
			    <br>
			    
				<div class=" row text-center uploadimg ">
				<li name="string2" id="string2" style="display: none;"></li>
		        <img src="" id="imgfile2" alt="upload pic" style="display: none;">
				
				</div>
				
		<!-- ---------------------------------------------------------------------------------- -->
				
				<div id="form3" style="display: none;">
				<div class=" row file-field input-field">
			      <div class="btn">
			        <a><span>Upload</span></a>
			        <input type="file" name="file3" id="file3" onchange="getfile3(event)">
			      </div>
			      <div class="file-path-wrapper">
			        <input class="file-path validate" type="text" id="picname3" >
			      </div>
			    </div>
			  </div>
			  
			    <br>
			    
				<div class=" row text-center uploadimg ">
				<li name="string3" id="string3" style="display: none;"></li>
		        <img src="" id="imgfile3" alt="upload pic" style="display: none;">
				
				</div>
				
		<button onclick="addcount()" id="add" type="button" style="margin-right: 80px; margin-top: 20px; " class=" btn circle float-right"><i class="material-icons">add</i></button>
				
		<button onclick="subcount()" id="sub" type="button" style="margin-top: 20px; display: none;" class=" btn circle float-left"><i class="material-icons">remove</i></button>
	
			
			</div>
			  <div class="col-xl-7 col-lg-7 col-sm-12">
			  <div id="form">
			  	
			  	
			  	<label class="label" for="rid">Request ID : </label>
					<input class="input" type="text" id="rid" name="rid"  disabled/><br>
			  	  
			  	  
					<input class="input" type="text" name="rqid" id="rqid"  style="display: none;">
					
					
			  	    <label class="label" for="pcat">Category : </label><span>
					  <select class="browser-default input margincat" name="pcat" id="pcat" required onchange="catselect()">
					    <option value="" disabled selected>Choose Category</option>
					    <option value="antiques">Antiques</option>
					    <option value="furniture">Furniture</option>
					    <option value="vehicles">Vehicles</option>
					    <option value="electronics">Electronics</option>
					    <option value="fashion">Fashion</option>
					    <option value="jewellery">Jewellery</option>
					  </select></span>
				 		<br>
				 		
				 		
			  	  <label class="label" for="pnm">Company : </label>
					<input class="input" type="text" id="pnm" name="pnm" placeholder="Enter product company" required/><br>
			  	  
			  	  <label class="label" for="pid" id="idlabel" style="display: none;">Product ID : </label>
					<input class="input" type="text" id="pid" name="pid" placeholder="Enter product ID" style="display:none;"/><br>
			  	  
			  	  <label class="label" for="price">Price : </label>
					<input class="input" type="text" id="price" name="price" placeholder="Enter product price" required/><br>
			  	  
			  	  <label class="label" id="addtopmargin" for="pdesc">Description : </label>
					 <textarea id="pdesc" name="pdesc" placeholder="enter product description" class="materialize-textarea input" required></textarea><br>
					
					
			  	  <div class="buttons text-center">
					<span class="btn1">
					 	<button type="submit" >Post </button>
					</span>
					</div>	
					
			  	 </div>  
			  </div>	 
			  	  
			 
			  	
			  
			   
			  
		
		</div>
		 		
		

</div>

</form>

<script>
	function insertProduct()
	{
		alert("Inserted Successfully!!");
	}

</script>

</body>
</html>