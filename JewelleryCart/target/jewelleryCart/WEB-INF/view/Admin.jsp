<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>JewelleryCart</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body{
  background-color:#D3D3D3;
  }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand">JewelleryCart</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="Home">Home</a></li>
			
		</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="Logout"><span class="glyphicon glyphicon-user"></span>Logout</a></li>
			</ul>
	</div>
	</nav>

	<center><h1>Welcome to admin page</h1>

	<a href="Category" class="btn btn-link" role="button"><h3>manageCategories</h3></a>
	<a href="Supplier" class="btn btn-link" role="button"><h3>manageSuppliers</h3></a>
	<a href="Product" class="btn btn-link" role="button"><h3>manageProducts</h3></a>
	</center>
</body>
</html>
