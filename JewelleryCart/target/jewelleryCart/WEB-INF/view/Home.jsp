<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 40%;
	margin: auto;
}

</style>
<title>JewelleryCart</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
body {
	background-color: #D3D3D3;
}
</style>

<title>JewelleryCart</title>

</head>
<body>
	<div>
		<h1>
			<center>Jewellery Cart</center>
		</h1>
	</div>
	<br>
	<br>
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
					data-toggle="dropdown" href="#"> Category <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="ViewCategory">Gold</a></li>
						<li><a href="ViewCategory">Diamond</a></li>
						<li><a href="ViewCategory">Silver</a></li>


					</ul></li>
					</ul>
				<ul class="nav navbar-nav">
					<li><a href="Admin"><span
							class="glyphicon glyphicon-pencil"></span>Admin</a> </li>
							</u1>




			<ul class="nav navbar-nav navbar-corner">		


						<li><a href="Registration"><span
								class="glyphicon glyphicon-user"></span> Sign Up</a></li>
						<li><a href="Login"><span
								class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</ul>	
		</div>
		
	</nav>
		
		<br>
		

	<h1>
		<center>Exclusive For Your Expensive Love</center>
	</h1>
	<br>
	<br>

	<div class="container"></div>
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="fine-jewellery"
				class="active"></li>
			<li data-target="#myCarousel" data-slide-to="pendent-chain"></li>
			<li data-target="#myCarousel" data-slide-to="bracelet"></li>
			<li data-target="#myCarousel" data-slide-to="diamond-ring"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src=<c:url value="resources/images/fine-jewellery.jpg"/>
					alt="fine-jewellery">
			</div>

			<div class="item">
				<img src=<c:url value="resources/images/pendent-chain.jpg"/>
					alt="pendent-chain">
			</div>

			<div class="item">
				<img src=<c:url value="resources/images/bracelet.jpg"/>
					alt="bracelet">
			</div>

			<div class="item">
				<img src=<c:url value="resources/images/diamond-ring.jpg"/>
					alt="diamond-ring">
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
</body>
</html>