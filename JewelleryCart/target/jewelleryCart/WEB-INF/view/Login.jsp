<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
						
								<li><a href="logout"><span class="glyphicon glyphicon-user"></span>Logout</a></li>
		
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
	<c:url var="login" value="/login"></c:url>
	<c:out value="${loginmsg }"></c:out>
	<form:form class="form-horizontal" role="form" action="${login}">
		<div class="form-group">
			<label class="control-label col-sm-4" for="Username">Username:</label>
			<div class="col-sm-6">
				<input type="email" class="form-control" id="Username"
					placeholder="Enter Username">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-4" for="pwd">Password:</label>
			<div class="col-sm-6">
				<input type="password" class="form-control" id="pwd"
					placeholder="Enter password">
			</div>
		</div>
		
		</div>
		<div class="form-group">
			<div class="col-sm-offset-6 col-sm-10">
				<button type="submit" class="btn btn-info">Submit</button>
			</div>
		</div>
		<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
	</form:form>

</body>
</html>
