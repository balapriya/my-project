<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body ng-app="proapp" ng-controller="proCtrl">
<table class="table table-striped">
<thead>
<tr>
<th>ID</tr>
<th>Name</th>
<th>Description</th>
<th>Edit</th>
<th>Delete</th>
<th>Productcategory</th>
<th>Productsupplier</th>
</tr>
</thead>
<tbody>
<tr ng-repeat="pro in product">
<td>{{cat.id}}</td>
<td>{{cat.name}}</td>
<td>{{cat.description}}</td>
<td><a href="editpro">Edit</a></td>
<td><a href="removepro">Delete</a></td>
</tr>
</tbody>
</table>
<script type="text/javascript">
var product=${prolis};
var catapp=angular.module("proapp",[]);
catapp.controller("proCtrl",function($scope,$http){
	$scope.product=products;
});


</script>
<div id="product_list">
    <label ng-repeat="product in products">
        <input type="checkbox" name="Product" ng-model="filterProducts[product.id]"> {{ product.name }}
    </label>
</div>
</body>
</body>
</html>