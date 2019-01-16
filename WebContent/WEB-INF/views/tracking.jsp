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
	
	<div class="container">
	  	<div class="row">
	  		<h2 style="color:#1853ba;font-weight:bold;">Details</h2>
	  		
	  		<br /><br />
	  			<div class="table">
	  		<c:forEach items="${list}" var="user">
	  		<h3>Order : <label style="font-weight:bold;"> ${user.prodname}</label></h3>
			<table  class="table table-dark table-hover" style="text-align:center;">
			<tr>
				<td>Name</td>
				<td>${user.name}</td>
			</tr>
			<tr>	
				<td>Email</td>
				<td>${user.mail}</td>
			</tr>
			<tr>
				<td>Phone</td>
				<td>${user.phone}</td>
			</tr>
			<tr>
				<td>Alternate Phone</td>
				<td>${user.altphone}</td>
			</tr>
			<tr>
				<td>Payment Status</td>
				<td>${user.paid}</td>
			</tr>
			<tr>
				<td>Tracking Id</td>
				<td>${user.trackid}</td>
			</tr>
			
			</table>
			</c:forEach>
			</div>
		</div>
	</div>	
	
	
	<br />
	
		
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