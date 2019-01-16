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
		      <ul class="nav navbar-nav" style="width:100%;">
		        <li class="active">
		        	<form action="insert" method="GET">
		        		<button type="submit" class="btn btn-lg" style="background-color:transparent;color:white;">INSERT</button>
		        	</form>
		        </li>
		        <li>
		        <form action="view" method="GET" >
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
	  	<div class="row">
	  		
	  		<h2 style="color:#1853ba;font-weight:bold;">Insert a New Gift item</h2>
	  		
	  		<br />
	  		
			<form:form action="preview" method="GET" modelAttribute="shop">
				
				<div class="col-md-2">
				</div>
				
				<div class="col-md-8">
					<div class="form-group" >
	  					<label for="name">Name *</label>
	  					<form:input path="name" class="form-control" id="name" style="width:80%;" required="required"/>
					</div>
					<div class="form-group" >
	  					<label for="price">Price *</label>
	  					<form:input path="price" class="form-control" id="price" style="width:80%;" required="required"/>
					</div>
					<div class="form-group" >
	  					<label for="Category">Company *</label>
	  					<form:select path="category" class="form-control" id="category" style="width:80%;" required="required" >
	  					<c:forEach items="${companies}" var="each">	
	  						<form:option value="${each}" />
	  					</c:forEach>
	  					</form:select>
					</div>
					<div class="form-group" >
	  					<label for="des">Description *</label>
	  					<form:input path="des" class="form-control" id="des" style="width:80%;" required="required"/>
					</div>
					<div class="form-group" >
	  					<label for="mainurl">Image Main Url *</label>
	  					<form:input path="mainurl" class="form-control" id="mainurl" style="width:80%;" required="required"/>
					</div>
					<div class="form-group" >
	  					<label for="nexturl">Image Next Url *</label>
	  					<form:input path="nexturl" class="form-control" id="nexturl" style="width:80%;" required="required"/>
					</div>
					<div class="form-group" >
	  					<label for="youtube">Youtube Embeded Url *</label>
	  					<form:input path="youtube" class="form-control" id="youtube" style="width:80%;" />
					</div>
					<input class="btn btn-lg btn-success" type="submit" value="Submit" />
					
				</div>
				
			</form:form>
		</div>
	</div>
	
	<br />
	
	<div class="container">
	  	<div class="row">
	  	
	  		<h2 style="color:#1853ba;font-weight:bold;">Add the Auto Changing Images:</h2>
	  		
	  		<br />
	  		
			<form:form action="insertAutoImage" method="GET" modelAttribute="imag">
				<div class="col-md-2">
				</div>
				
				<div class="col-md-8">
					<div class="form-group" >
	  					<label for="one">Image 1 *</label>
	  					<form:input path="one" class="form-control" id="one" style="width:80%;" required="required"/>
					</div>
					<div class="form-group" >
	  					<label for="two">Image 2 *</label>
	  					<form:input path="two" class="form-control" id="two" style="width:80%;" required="required"/>
					</div>
					<div class="form-group" >
	  					<label for="three">Image 3 *</label>
	  					<form:input path="three" class="form-control" id="three" style="width:80%;" required="required"/>
					</div>
					
					<input class="btn btn-lg btn-success" type="submit" value="Add Images" /><br /><br />
					<a href="company" class="btn btn-primary btn-lg">Click here for Company</a>
				</div>
			</form:form>
		</div>
	</div>
	<br />
	<br />
	 
</body>
</html>