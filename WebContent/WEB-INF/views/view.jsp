<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page  import="org.springframework.web.servlet.view.RedirectView" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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
  <style>
  a{
  color:black;
  }
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
	
	<div class="container" >
		 
		 <c:forEach items="${data}" var="list"> 
	               <div class="col-xs-4" style="padding:5%;text-align:center;">   	
				        
				         <img src="${list.mainurl}.jpg" style="width:100%;">
				         
				         <br />
				         
				         <h3>${(list.name)}</h3>
				         <h4>${(list.category)}</h4>
				         <h5 style="font-weight:bold;">Rs. ${list.price}</h5>
				         
				         <br />        
	     			</div>    
		</c:forEach>
	</div>
	
</body>
</html>