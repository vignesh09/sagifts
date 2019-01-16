<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>SA Gifts</title>
   <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/resources/templates/favicon.png" />
  <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <style>
		.mySlides {display:none}
		.w3-left, .w3-right, .w3-badge {cursor:pointer}
		.w3-badge {height:13px;width:13px;padding:0}
  </style>
</head>

<body>

	<br />
	
	<div class="container">
		<nav class="navbar" style="width:100%;">
		<div class="row">
		<div class="col-xs-3">
			<a class="navbar-brand" href="index" style="padding:0px;">
			  	<img src="${pageContext.request.contextPath}/resources/templates/Logo 1.jpg" style="margin-top:-13px;height:150%;">
			</a>	
			</div>
			<div class="col-xs-2">
			<a class="navbar-brand" href="index" style="padding:0px;">
			  	<img src="${pageContext.request.contextPath}/resources/templates/handmade.jpg" style="margin-top:-13px;height:150%;">
			</a>
			</div>
			<div class="col-xs-2"></div>
			<div class="col-xs-5">
			<ul class="nav navbar-nav navbar-right" style="text-align:right;">
			
		      <li><a href="tel:9444868542"><span class="glyphicon glyphicon-earphone"></span> 9444868542 </a></li>
		      <li><a href="track"><span class="glyphicon glyphicon-map-marker"></span> Track Orders</a></li>
		    </ul>
		    </div>
		    </div>
		</nav>
	</div>
		
	<nav class="navbar navbar-inverse">
		  <div class="container" style="font-weight:bold;">
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		         <span class="icon-bar"></span>
		      </button>      
		    </div>
		    <div class="collapse navbar-collapse" id="myNavbar">
		      <ul class="nav navbar-nav" style="width:100%;">
		        <li class="active">
		        	<form action="insert" method="GET">
		        		<button type="submit" class="btn btn-lg" style="background-color:transparent;color:white;">INSERT</button>
		        	</form>
		        </li>
		        <li>
		        	<form action="view" method="GET">
		        		<button type="submit" class="btn btn-lg" style="background-color:transparent;color:white;">VIEW</button>
		        	</form>
		        </li>
		        <li>
		        	<form action="edit" method="GET">
		        		<button type="submit" class="btn btn-lg" style="background-color:transparent;color:white;">EDIT</button>
		        	</form>
		        </li>
		        <li>
		        	<form action="orders" method="GET">
		        		<button type="submit" class="btn btn-lg" style="background-color:transparent;color:white;">ORDERS</button>
		        	</form>
		        </li>
		        </li>
		        <li style="float:right;">
		        <form action="logout" method="GET">
		        		<button type="submit" class="btn btn-lg" style="background-color:transparent;color:white;">LOGOUT</button>
		        </form>
		        </li>
		      </ul>	
		    </div>
		  </div>
	</nav>	
		
	<div class="container">
		<h2 style="color:#1853ba;font-weight:bold;">Detials</h2>
	</div>
		
	<br />
	
	<div class="container">
			<div class="row">
				
				<div class="col-md-5" style="padding:5%;">
					<div class="w3-content w3-display-container" style="max-width:800px">
						  <img class="mySlides" src="${shop.mainurl}.jpg" style="width:100%">
						  <img class="mySlides" src="${shop.nexturl}.jpg" style="width:100%">		
						  <div class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle" style="width:100%">
						      <div class="w3-left w3-hover-text-khaki" style="color:black;" onclick="plusDivs(-1)">&#10094;</div>
						      <div class="w3-right w3-hover-text-khaki"  style="color:black;" onclick="plusDivs(1)">&#10095;</div>
						      <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
						      <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
					      </div>				  
					</div>
					<div class="w3-center">
						<div class="w3-section">
							  <button class="w3-button" onclick="plusDivs(-1)">&#10094; Prev</button>
							  <button class="w3-button" onclick="plusDivs(1)">Next &#10095;</button>
					    </div>
					</div>
					<script>
						var slideIndex = 1;
						showDivs(slideIndex);
	
						function plusDivs(n) {
						  showDivs(slideIndex += n);
						}
	
						function currentDiv(n) {
						  showDivs(slideIndex = n);
						}
	
						function showDivs(n) {
						  var i;
						  var x = document.getElementsByClassName("mySlides");
						  var dots = document.getElementsByClassName("demo");
						  if (n > x.length) {slideIndex = 1}
						  if (n < 1) {slideIndex = x.length}
						  for (i = 0; i < x.length; i++) {
						    x[i].style.display = "none";  
						  }
						  for (i = 0; i < dots.length; i++) {
						    dots[i].className = dots[i].className.replace(" w3-white", "");
						  }
						  x[slideIndex-1].style.display = "block";  
						  dots[slideIndex-1].className += " w3-white";
							}
					</script>
										
    			</div>
				
				<div class="col-md-7" style="padding:5%;">
					
					<br />
					
					Home / ${shop.category.toUpperCase()}<br />
					<h1 style="color:#1853ba;font-weight:bold;">${shop.name.toUpperCase()}</h1>
					<h3>Rs. <label style="color:red;">${shop.price}</label>/-</h3>
					<button class="btn btn-lg btn-success">Place Order</button>
					
					<br />
					
					<h3 style="font-weight:bold;text-align:justify;">Description</h3>
					<h4>${shop.des}</h4>
				
				</div>
			</div>
	</div>

	<hr />          
	        
	<div class="container">
	
		<div class="row">
			
			<h2 style="color:#1853ba;font-weight:bold;">Outline</h2>
			
			<div class="col-md-4" style="padding:5%;text-align:center;">     	
	         	<img src="${shop.mainurl}.jpg" style="width:100%;"><br />
	         	<h3>${(shop.name).toUpperCase()}</h3>
	         	<h4 style="font-weight:bold;">Rs. ${shop.price}</h4><br />
	        </div>
	        
	        <div class="col-md-3">
	     	</div>
	     	
	     	<div class="col-md-1">
	     		
	     		<form:form action="updateSure" method="GET" modelAttribute="shop">
	     			<form:hidden path="id" value="${shop.id}" />
					<form:hidden path="name" value="${shop.name}" />
					<form:hidden path="price" value="${shop.price}" />
					<form:hidden path="category" value="${shop.category}" />
					<form:hidden path="mainurl" value="${shop.mainurl}" />
					<form:hidden path="nexturl" value="${shop.nexturl}" />
					<form:hidden path="des" value="${shop.des}" />
					<form:hidden path="youtube" value="${shop.youtube}" />
					<button class="btn btn-lg btn-primary" type="submit">Add</button>
				</form:form>
			
			</div>
			
			<div class="col-md-1">
				
				<form action="insert" method="GET">
					<button class="btn btn-lg btn-danger" >Cancel</button>
				</form>
				
			</div>
			
			<div class="col-md-3">
	     	</div>
	     		
	     </div>
	</div>
	
	<hr />  
	       
</body>
</html>