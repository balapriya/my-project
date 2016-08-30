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

<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">JewelleryCart</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="Home">Home</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="Category">Category
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="AddCategory">AddCategory</a></li>
          <li><a href="ViewCategory">ViewCategory</a></li>
          <li class="dropdown">
         </li>
         </ul>
         <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="Supplier">Supplier
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="AddSupplier">AddSupplier</a></li>
          <li><a href="ViewSupplier">ViewSupplier</a></li>
          <li class="dropdown">
          </li>
          </ul>
          <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="Product">Product
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="AddProduct">AddProduct</a></li>
          <li><a href="ViewProduct">ViewProduct</a></li>
           <li class="dropdown">
        </ul>
      </li>
       
    </ul>
  </div>
</nav>
<br>
<br>
	<center>
	<div class="container">
	<form:form action="add" method="POST" commandName="supplier" class="form-horizontal" role="form" >
		
		<div class="form-group">
			<label class=" col-sm-4 control-label">SupplierId:</label>
			<div class="col-sm-6">
				<form:input path="id"  placeholder="Enter the id" class="form-control" required="TRUE" title="should not be empty" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label">SupplierName:</label>
			<div class="col-sm-6">
				<form:input path="name" placeholder="Enter supplier name" class="form-control" required="TRUE" title="should not be empty" />
			</div>
		</div>
	<div class="form-group">
			<label class="col-sm-4 control-label">Description:</label>
			<div class="col-sm-6">
				<form:input path="description" placeholder="Enter description" class="form-control" required="TRUE" title="should not be empty" />
			</div>
		</div>
		<br>
		<br>
			<button type="add" class="btn btn-info .btn-sm">Add<a href=http://yoursmiles.org/t-dogs.php?page=4><img src=http://yoursmiles.org/tsmile/dogs/t0482.gif></a></button>
			 
			</form:form>
		</div>
	</center>
	


</body>
</html>