<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
  a {
  color:black;
  }
  th {
  text-align:center;
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
		
	<div class="container">
	  <h2>Orders</h2>          
	  <h4>
	  	<div class="table-responsive">
	  		<table class="table table-hover" style="text-align:center;">
			    <thead>
			      <tr>
			        <th>Name</th>
			        <th>Phone Number</th>
			        <th>Email</th>
			        <th>City</th>
			        <th>Product Name</th>
			        <th>Payment</th>
			        <th>Tracking Id</th>
			        <th>Details</th>
			   		<th>Delivery</th>
			      </tr>
			    </thead>
			    <tbody>
			    
			    	<c:forEach items="${data}" var="list">
			      		<tr>
					        <td>${list.name}</td>
					        <td>${list.phone}</td>
					        <td>${list.mail}</td>
					        <td>${list.city}</td>
					        <td>${list.prodname}</td>
					        <td>${list.paid}</td>
					        <td>${list.trackid}</td>
					       
					        <td>
					        <form:form action="vieworders" method="GET" modelAttribute="user">
					        <form:hidden path="id" value="${list.id}" />
					        <form:hidden path="name" value="${list.name}" />
					        <form:hidden path="phone" value="${list.phone}" />
					        <form:hidden path="altphone" value="${list.altphone}" />
					        <form:hidden path="street1" value="${list.street1}" />
					        <form:hidden path="street2" value="${list.street2}" />
					        <form:hidden path="city" value="${list.city}" />
					        <form:hidden path="state" value="${list.state}" />
					        <form:hidden path="country" value="${list.country}" />
					        <form:hidden path="pincode" value="${list.pincode}" />
					        <form:hidden path="mail" value="${list.mail}" />
					        <form:hidden path="paid" value="${list.paid}" />
					        <form:hidden path="trackid" value="${list.trackid}" />
					        <form:hidden path="prodname" value="${list.prodname}" />
					        <form:hidden path="delivery" value="${list.delivery}" />
					        <button class="btn btn-primary">view</button>
					        
					        </form:form>
					         <td>${list.delivery}</td>
					        </td>
			      		</tr>
			      </c:forEach>
			      
			    </tbody>
	  		</table>
	  	</div>
	  </h4>
	</div>

</body>
</html>