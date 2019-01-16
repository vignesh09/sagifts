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
	
	<div class="container">
	  	<div class="row">
	 
	  		<h2 style="color:#1853ba;font-weight:bold;">Edit the Item</h2><br />
			
			<div class="col-md-2">
			</div>
			
			<div class="col-md-8">
			<form:form action="update" method="GET" modelAttribute="item">
					<form:hidden path="id" value="${item.id}" />
					<div class="form-group" >
	  					<label for="name">Name *</label>
	  					<form:input path="name" value="${item.name}" class="form-control" id="name" style="width:80%;" required="required"/>
					</div>
					<div class="form-group" >
	  					<label for="price">Price *</label>
	  					<form:input path="price" value="${item.price}" class="form-control" id="price" style="width:80%;" required="required"/>
					</div>
					<div class="form-group" >
	  					<label for="Category">Category *</label>
	  					<form:input path="category" value="${item.category}" class="form-control" id="category" style="width:80%;" required="required"/>
					</div>
					<div class="form-group" >
	  					<label for="des">Description *</label>
	  					<form:input path="des" value="${item.des}" class="form-control" id="des" style="width:80%;" required="required"/>
					</div>
					<div class="form-group" >
	  					<label for="mainurl">Image Main Url *</label>
	  					<form:input path="mainurl" value="${item.mainurl}" class="form-control" id="mainurl" style="width:80%;" required="required"/>
					</div>
					<div class="form-group" >
	  					<label for="nexturl">Image Next Url *</label>
	  					<form:input path="nexturl" value="${item.nexturl}" class="form-control" id="nexturl" style="width:80%;" required="required"/>
					</div>
					<div class="form-group" >
	  					<label for="youtube">Youtube Embeded Url *</label>
	  					<form:input path="youtube" value="${item.youtube}" class="form-control" id="youtube" style="width:80%;" />
					</div>
	
					<input class="btn btn-lg btn-success" type="submit" value="Submit" />
					</form:form><br />
					<form method="GET" action="delete">
					<input type="hidden" name="productName" value="${item.name}" />
					<input class="btn btn-lg btn-danger" type="submit" value="Delete" />
			</form>					
			</div>
			
			<div class="col-md-2">
			</div>
			
		</div>
			
		<br />
			
	</div>
	
	<br /><br />
	
</body>
</html>