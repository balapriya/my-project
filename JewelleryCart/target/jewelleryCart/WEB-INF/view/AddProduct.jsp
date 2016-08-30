<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>JewelleryCart</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

 <style>
  body{
  background-color:#D3D3D3;
  }
  </style>
</head>
</head>
<body>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand">JewelleryCart</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="Home">Home</a></li>
			<li><a href="Catagory">Catagory</a></li>
			<li><a href="Supplier">Supplier</a></li>
			<li><a href="Product">Product</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="Logout"><span class="glyphicon glyphicon-user"></span>Logout</a></li>
			</ul>
	</div>
	</nav>
</nav>

	<center>
	<div class="container">
	<form:form action="added" method="POST" commandName="product" class="form-horizontal" role="form" >
		
		<div class="form-group">
			<label class=" col-sm-4 control-label">ProductId:</label>
			<div class="col-sm-6">
				<form:input path="id"  placeholder="Enter the id" class="form-control" required="TRUE" title="should not be empty" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label">ProductName:</label>
			<div class="col-sm-6">
				<form:input path="name" placeholder="Enter product name" class="form-control" required="TRUE" title="should not be empty" />
			</div>
		</div>
	<div class="form-group">
			<label class="col-sm-4 control-label">Description:</label>
			<div class="col-sm-6">
				<form:input path="description" placeholder="Enter description" class="form-control" required="TRUE" title="should not be empty" />
			</div>
		</div>
		
		<div class="form-group">
			<label class="col-sm-4 control-label">Price:</label>
			<div class="col-sm-6">
				<form:input path="price" pattern="[0-9]+(\\.[0-9][0-9]?)?" placeholder="Enter price" class="form-control" required="TRUE" title="should not be empty" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label">ProductCategory:</label>
			<div class="col-sm-6">
				<form:input path="productcategory" placeholder="Enter last name" class="form-control" required="TRUE" title="should not be empty" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label">ProductSupplier:</label>
			<div class="col-sm-6">
				<form:input path="productsupplier" placeholder="Enter last name" class="form-control" required="TRUE" title="should not be empty" />
			</div>
		</div>
		<h2>File Upload</h2>
        <div ng-controller="FileUploadCtrl">
        <div class="control-group">
    <div class="controls">
        <span class="btn btn-success fileinput-button">
            <i class="icon-plus icon-white"></i>
            <input type="file" name="file" data-url="home/upload" 
                   multiple upload><span>Add files...</span>
        </span>
    </div>
</div>
<div>
    <span ng-show="!files.length">No files selected</span>
    <ul>
        <li ng-repeat="file in files">{{file}}</li>
    </ul>
</div>
<div class="form-actions">
<center>
    <button type="submit" class="btn btn-primary pull-center" ng-click="upload()">Upload</button>
    </center>
</div>
</div>
		<br>
		<br>
			<button type="submit" class="btn btn-info .btn-sm">Add</button>
			 
			</form:form>
		</div>
	</center>
	


</body>
</html>