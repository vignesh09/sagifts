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
	  <h2>Detials</h2>    
	 		<div class="row">
		
		<hr />
		
		<form:form action="changeorders" method="GET" modelAttribute="list">
			<div class="col-md-7">
					<div class="form-group" >
	  					<label for="name">Name *</label>
	  					<form:input path="name" class="form-control" id="name" style="width:80%;"  required="required"/>
	  					<form:hidden path="id" class="form-control"/>
					</div>
					<div class="form-group" >
	  					<label for="prodname">Product Name *</label>
	  					<form:input path="prodname" class="form-control" id="prodname" style="width:80%;" readonly="true" required="required"/>
					</div>
					<div class="form-group" >
	  					<label for="mail">Mail Id *</label>
	  					<form:input path="mail" class="form-control" id="mail" style="width:80%;" required="required" />
					</div>
					<div class="form-group" >
	  					<label for="street1">Street Address *</label>
	  					<form:input path="street1" class="form-control" id="street1" style="width:80%;" placeholder="House Number and Street Name" required="required"  /><br /> 
	  					<form:input path="street2" class="form-control" style="width:80%;" placeholder="Apartment, suite, unit, etc.., (Optional)" />
					</div>
					<div class="form-group" >
	  					<label for="city">City *</label>
	  					<form:input path="city" class="form-control" id="city" style="width:80%;" required="required" />
					</div>
				
					<div class="form-group" >
	  					<label for="state">State *</label>
	  					<form:input path="state" class="form-control" id="state" style="width:80%;" required="required" />
					</div>
			   </div>
			   <div class="col-md-5">
			
					<div class="form-group" >
	  					<label for="country">Country *</label>
	  					<form:input path="country" class="form-control" id="country" style="width:80%;" required="required" />
					</div>
			
					<div class="form-group" >
	  					<label for="pincode">Pincode *</label>
	  					<form:input path="pincode" class="form-control" id="pincode" style="width:80%;" required="required" />
					</div>

					<div class="form-group" >
	  					<label for="phone">Phone Number *</label>
	  					<form:input path="phone" class="form-control" id="phone" style="width:80%;" required="required" />
					</div>
					<div class="form-group" >
	  					<label for="altphone">Alternate Number *</label>
	  					<form:input path="altphone" class="form-control" id="altphone" style="width:80%;" required="required" />
					</div>
					<div class="form-group" >
	  					<label for="paid">Payment *</label>
	  					<form:input path="paid" class="form-control" id="paid" style="width:80%;" required="required" />
					</div>
					<div class="form-group" >
	  					<label for="trackid">Tracking Id *</label>
	  					<form:input path="trackid" class="form-control" id="trackid" style="width:80%;" required="required" />
					</div>
					<div class="form-group" >
	  					<label for="delivery">Delivery *</label>
	  					<form:input path="delivery" class="form-control" id="delivery" style="width:80%;" required="required" />
					</div>
			</div>
			<button type="submit" class="btn btn-success">Save</button>
			</form:form>
			<br />
			<form:form action="deleteorders" method="GET" modelAttribute="user">
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
					        <button class="btn btn-warning">Delete this Order</button>
					        </form:form>
			<br />
				<form action="orders" method="GET">
		        		<button type="submit" class="btn btn-danger" >Cancel</button>
		        </form>	
		    <br />	
	</div>
	

</body>
</html>