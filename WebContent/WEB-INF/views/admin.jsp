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
</head>
<style>
a{
color:black;
}
</style>
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
	
	
	<div class="container">
	  	<div class="row">
	  		<h2 style="color:#1853ba;font-weight:bold;">Login Admin</h2>
	  		
	  		<br /><br />
	  		
			<form:form action="insert" method="GET" modelAttribute="admin">
				<div class="col-md-2">
				</div>
				<div class="col-md-8">
					<div class="form-group" >
	  					<label for="name">Name *</label>
	  					<form:input path="name" class="form-control" id="name" style="width:60%;" required="required"/>
					</div>
					<div class="form-group" >
	  					<label for="pass">Password *</label>
	  					<form:input path="pass" class="form-control" id="pass" style="width:60%;" required="required"/>
					</div>
					<button type="submit" class="btn btn-lg btn-success">Submit</button>
				</div>
			</form:form>
		</div>
	</div>	
		
</body>
</html>