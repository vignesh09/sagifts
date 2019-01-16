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
  <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
    $(function () {    
    	  $('.carousel' )
    	  	.carousel({
    	  	  interval: 2500
    	 		})
    	  	.carousel('cycle');
    	});</script>
  
	<style>
	.carousel .item {
  max-height: 650px;
}

.item img {
    position: relative; 
    top: 0;
    left: 0;
}
a {
 color:black;
}
	</style>
</head>

<body>

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
	<form:form action="addImages" method="GET" modelAttribute="imag">
		<div class="container">
	<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="2500">
	<div class="carousel-inner">
		<div class="item active">
			
				<img src="${imag.one}.jpg" style="width:100%">
				
			
		</div>

		<div class="item">
			<img src="${imag.two}.jpg" style="width:100%">
			
		</div>

		<div class="item">
			<img src="${imag.three}.jpg" style="width:100%">
			
		</div>

		
	</div>
	
</div><br /></div>	
	<br />
	<form:hidden path="one" value="${imag.one}" />
	<form:hidden path="two" value="${imag.two}" />
	<form:hidden path="three" value="${imag.three}" />
	<div class="container" style="text-align:center;">
		<input type="submit" style="float:center;" class="btn btn-lg btn-success" value="Add Images" />
	</div>
	</form:form>
</body>
</html>