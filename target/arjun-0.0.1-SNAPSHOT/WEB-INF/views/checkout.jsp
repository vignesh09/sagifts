<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    <%@ page import = "java.util.*" %>
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
	
	
	
	<div class="container">
		<h4>
			<label style="color:grey;">Shopping Cart >
				<label style="color:#1853ba;"> Checkout Details > </label> 
				Order Complete >
			</label>
		</h4>
		
		<h4 style="color:green;">"${shop.name}" has been added to your cart successfully.</h4>
		
		<a href="index"><h4 style="color:red;">Back to home page.</h4></a>
		
		<div class="row">
		
		<hr />
		
		<form:form action="checkplaceorder" method="POST" modelAttribute="user">
			<div class="col-md-7">
					<div class="form-group" >
	  					<label for="name">Name *</label>
	  					<form:input path="name" class="form-control" id="name" style="width:80%;" required="required"/>
					</div>
					<div class="form-group" >
	  					<label for="mail">Mail Id *</label>
	  					<form:input path="mail" class="form-control" id="mail" style="width:80%;" required="required"/>
					</div>
					<div class="form-group" >
	  					<label for="street1">Street Address *</label>
	  					<form:input path="street1" class="form-control" id="street1" style="width:80%;" placeholder="House Number and Street Name" required="required"/><br /> 
	  					<form:input path="street2" class="form-control" style="width:80%;" placeholder="Apartment, suite, unit, etc.., (Optional)"/>
					</div>
					<div class="form-group" >
	  					<label for="city">City *</label>
	  					<form:input path="city" class="form-control" id="city" style="width:80%;" required="required"/>
					</div>
					<div class="form-group" >
	  					<label for="state">State *</label>
	  					<form:input path="state" class="form-control" id="state" style="width:80%;" required="required"/>
					</div>
					<div class="form-group" >
	  					<label for="country">Country *</label>
	  					<form:input path="country" class="form-control" id="country" style="width:80%;" required="required"/>
					</div>
					<div class="form-group" >
	  					<label for="pincode">Pincode *</label>
	  					<form:input path="pincode" class="form-control" id="pincode" style="width:80%;" required="required"/>
					</div>
					<div class="form-group" >
	  					<label for="phone">Phone Number *</label>
	  					<form:input path="phone" class="form-control" id="phone" style="width:80%;" required="required"/>
					</div>
					<div class="form-group" >
	  					<label for="altphone">Alternate Number *</label>
	  					<form:input path="altphone" class="form-control" id="altphone" style="width:80%;" required="required"/>
					</div>
					<form:hidden path="paid" value="No" />
					<form:hidden path="trackid" value="soon" />
					<form:hidden path="delivery" value="No" />
			</div>
			<div class="col-md-5">
				<div class="form-group" >
	  					<label for="cphone">Confirm Phone Number *</label>
	  					<form:input path="cphone" class="form-control" id="cphone" style="width:80%;" required="required"/>
				</div>
				<div class="form-group" >
	  					<label for="cmail">Confirm Mail Id *</label>
	  					<form:input path="cmail" class="form-control" id="cmail" style="width:80%;" required="required"/>
				</div>
				<form:hidden path="prodname"  value="${shop.name}"/><br />
				<h4 style="color:#1853ba;font-weight:bold;">YOUR ORDER</h4>
				<h4>
				<table class="table" width=100%;>
			    <thead>
			      <tr>
			        <th>PRODUCT</th>
			        <th style="text-align:right;">TOTAL</th>
			      </tr>
			    </thead>
			    <tbody>
			      <tr>
			        <td>${shop.name}</td>
			        <td style="text-align:right;">Rs. ${shop.price}</td>
			      </tr>
			      <tr>
			        <td>Subtotal</td>
			        <td style="text-align:right;">Rs. ${shop.price}</td>
			      </tr>
			      <tr>
			        <td>Shipping</td>
			        <td style="text-align:right;color:red;">Free</td>
			      </tr>
			      <tr>
			        <td>Total</td>
			        <td style="text-align:right;">Rs. ${shop.price}</td>
			      </tr>
			    </tbody>
			  </table></h4>
			  <h4 style="color:red;">
			  Note: <br />
			  1. For any querys contact the bellow phone number.<br />
			  2. Please do not refresh the page once the "Submit" is clicked.
			  </h4>
			  
			  <input type="hidden" name="shop_name" value="${shop.name}" />
			  <br />
			  <button type="submit" class="btn btn-lg btn-success">Submit</button>
			</div>
			</form:form>
		</div>
	</div>
	
	<hr />
	
	
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
