<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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
	.mySlides {display:none;}
	.w3-left, .w3-right, .w3-badge {cursor:pointer}
	.w3-badge {height:13px;width:13px;padding:0}
	</style>
<style>
/* Paste this css to your style sheet file or under head tag */
/* This only works with JavaScript, 
if it's not present, don't show loader */
.no-js #loader { display: none;  }
.js #loader { display: block; position: absolute; left: 100px; top: 0; }
.se-pre-con {
	position: fixed;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	z-index: 9999;
	background: url(resources/images/Preloader_3.gif) center no-repeat #fff;
}
</style>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.js"></script>
<script>
	//paste this code under head tag or in a seperate js file.
	// Wait for window load
	$(window).load(function() {
		// Animate loader off screen
		$(".se-pre-con").fadeOut("slow");;
	});
</script>

</head>

<body>

	<div class="se-pre-con"></div>


	<br />
	
	<div class="container">
		<nav class="navbar" style="width:100%;">
		<div class="row" >
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
		      <ul class="nav navbar-nav">
		        <li class="active"><a href="index"><span class="glyphicon glyphicon-home"></span></a></li>
		        <li><a href="about">ABOUT US</a></li>
		        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">PRODUCTS<span class="caret"></span></a>
			        <ul class="dropdown-menu" style="background-color:black;color:white;text-align:center;">
			        <c:forEach items="${categories}" var="list"> 
			          <li>
			          	<form:form action="interior" method="GET">
			          	<input type="hidden" name="cat" value="${list}" />
			          	<button type="submit" style="border:0;font: inherit;line-height: normal;background-color:black;">
			          	${list}
			          	</button>
			          	</form:form>
			          </li>
			        </c:forEach>
			        </ul>
		        </li> 
		        <li><a href="#contact">CONNECT US</a></li> 
		      </ul>		
		    </div>
		  </div>
	</nav>

	<div class="container-fluid" style="background-color:#1853ba;color:white;">
		<div class="container">
			<h2>${shop.category.toUpperCase()}</h2>
		</div>
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
				<c:choose>
	       		<c:when test="${!(shop.youtube).equals(\"\")}">
				<div class="embed-responsive embed-responsive-16by9">
  					<iframe class="embed-responsive-item" src="${shop.youtube}" allowfullscreen></iframe>
				</div>	
				</c:when>
				</c:choose>		
    			</div>	
				
				<div class="col-md-7" style="padding:5%;">
				
					<br />
					
					Home / ${shop.category.toUpperCase()}
					
					<br />
					
					<h1 style="color:#1853ba;font-weight:bold;">${shop.name.toUpperCase()}</h1>
					<h3>Rs. <label style="color:red;">${shop.price}</label>/-</h3>
					
					<form:form action="checkout" method="GET" modelAttribute="shop">
						<form:hidden path="name" value="${shop.name}" />
						<form:hidden path="price" value="${shop.price}" />
						<form:hidden path="category" value="${shop.category}" />
						<form:hidden path="mainurl" value="${shop.mainurl}" />
						<form:hidden path="nexturl" value="${shop.nexturl}" />
						<form:hidden path="youtube" value="${shop.youtube}" />
						<form:hidden path="des" value="${shop.des}" />
						<button class="btn btn-lg btn-success" type="submit">Place Order</button>
					</form:form>
					
					<br />
					
					<h3 style="font-weight:bold;text-align:justify;">Description</h3>
					<h4>${shop.des}</h4>
				</div>
			</div>
	</div>
	
	<br />
		
		<div class="container">
		
		<hr style="height:1px;border:none;color:grey;background-color:grey;" />
		
		<% int count=0; %>
		
		<div class="row" style="text-align:center;">
		
		
		<c:forEach items="${sample}" var="ele">	
			
			
	       		<%  if(count<4){ %>
	               <div class="col-xs-3" style="padding:2%;text-align:center;">
	     					<form:form action="choose" method="GET" modelAttribute="shop">
	     					<form:hidden path="name" value="${ ele.name }" />
							<form:hidden path="price" value="${ ele.price }" />
							<form:hidden path="category" value="${ ele.category }" />
							<form:hidden path="des" value="${ ele.des }" />
							<form:hidden path="mainurl" value="${ ele.mainurl }" />
							<form:hidden path="nexturl" value="${ ele.nexturl }" />
							<form:hidden path="youtube" value="${ ele.youtube }" />
					     	<button type="submit" style="margin: auto;padding: 0;border: none;font: inherit;line-height: normal;background-color:white;">
					        	
					        	<img src="${ele.mainurl}.jpg" style="width:100%;">
					       <br /><br />
					       <label style="color:blue;">Rs. ${ele.price}</label><br />
							   <label style="font-weight:bold;">${ele.name}</label><br/>
					        	
					      		
							 </button>
							 </form:form>
					</div>   
			<% count=count+1; } %>
	       		
	  		   
	  		   
		</c:forEach>
			
		</div>
	
	</div>
	<div id="contact" class="containe-fluid">
		<div class="row" style="text-align:center;color:white;background-color:grey;"><br />
			<div class="col-md-4">
				<h4 style="font-weight:bold;">Customer Care</h4>
				9444868542<br />
				Mon to Sat<br />
				9:30am - 6:00pm<br /><br />
			</div>
			<div class="col-md-4">
				<h4 style="font-weight:bold;">Help</h4>
				Refund Policy<br />
				Delivery and Shipping<br /><br />
			</div>
			<div class="col-md-4">
				<h4 style="font-weight:bold;">Stay Connected</h4>
				<a href="#" style="color:white"><span class="glyphicon glyphicon-thumbs-up"></span>  Facebook</a><br />
				<a href="mailto:sagiftsindia@gmail.com" style="color:white"><span class="glyphicon glyphicon-send"></span>  Gmail</a><br />
				<a href="#" style="color:white"><span class="glyphicon glyphicon-camera"></span>  Instagram</a><br /><br />
			</div>
		</div>
	</div>
	 
	 <footer class="container-fluid text-center" style="background-color:#555556;color:white;width:100%;">
	  <h4 style="color:silver;">Developer: <a href="https://kamalez.github.io/" style="color:white;"> Kamalesh R</a></h4>
	</footer>
 
</body>
</html>
