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
	<div class="container"><br />
	<h2>About us</h2><br />
	<h4 style="text-align:justify;">
Hey! Thanks for visiting SA GIFTS! I'm Arjun Arangil from Kerala. I am basically an electronics engineer. 
Right now I live in Coimbatore, Tamilnadu. You could check out my electronics based projects on
 my YouTube channel- ARANGIL INNOVATION. I Love electronics and hence I keep doing something related to them.
  That's how I started with indoor fountains! And I thought "why not sell them as gifts to steal hearts?" And here I am.
   I make some attractive handmade gifts such indoor fountains as well as get other handmade items from
my friends and sell for cheap! Buy them and gift your loved ones to strengthen your bond! Keep in touch!</h4><br /><br /><br />
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
