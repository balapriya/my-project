<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@page isELIgnored="false"%>
<html>
<head>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous"></script>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">
<script type="text/javascript"
	src="/resources/bootstrap-3.3.6-dist/js/bootstrap-3.3.6-dist.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <style>
  body{
  background-color:#D3D3D3;
  }
  </style>

</head>

<title>Jewellery Cart</title>

<body>
	<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="60">
	

	<nav class="navbar navbar-inverse">

		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand"> <span
					class="glyphicon glyphicon-jewellery"></span>JewelleryCart
				</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="Home"><span
						class="glyphicon glyphicon-home"></span>Home</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> Catagory <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="product">Gold</a></li>
						<li><a href="product">Diamond</a></li>
						<li><a href="product">Silver</a></li>


					</ul></li>
				<ul class="nav navbar-nav">
					<li><a href="Admin"><span
							class="glyphicon glyphicon-pencil"></span>Admin</a> </u1></li>




					<ul class="nav navbar-nav navbar-right">


						<li><a href="Registration"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
						
								<li><a href="Logout"><span class="glyphicon glyphicon-user"></span>Logout</a></li>
		
					</ul>
		</div>
	</nav>
	<br>
	<br>
	<h1>
		<center>Exclusive For your Expensive Love</center>
	</h1>
	<br>
	<br>
	
	<form action="login" method="post" class="form-horizontal"
				role="form">
 <div class="container">
		<h1 class="well">Login Here</h1>
		<div class="col-sm-12 well">
			<div class="row">
			

       <div class="col-sm-6 form-group">
								<label>UserName</label> <input type="text" name="username" 
									placeholder="Enter UserName Here.."  rows="2"class="form-control" required="TRUE" />
							</div>
							
							
							<div class="col-sm-6 form-group">
								<label>Password</label> <input type="password" name="password"
									placeholder="Enter Password Here.." rows="2" class="form-control" required="TRUE" />
							</div>


<center>  <button type="submit" class="btn btn-success">Submit</button>
</div>


<input type="hidden"
					name="${_csrf.parameterName }" value="${_csrf.token}" />
</form>

</body>
</html>
