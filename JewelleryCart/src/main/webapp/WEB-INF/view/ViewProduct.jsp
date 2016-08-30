<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
</head>

<body ng-app="proapp" ng-controller="ProductController">
<div align ="center"><label>search:<input type="text"  ng-model="searchbox"></label></div>
<table class="table table-striped">
<thead>
<tr>
<th>ID</th>
<th>Name</th>
<th>Description</th>
<th>price</th>
<th>Edit</th>
<th>Delete</th>
</tr>
</thead>
<tbody>
<tr ng-repeat="p in product | filter : searchbox">
<td>{{p.id}}</td>
<td>{{p.name}}</td>
<td>{{p.description}}</td>
<td>{{p.price}}</td>
<td><a href="<c:url value="/editpro{{p.id}}" />" ng-click="enabledEditor()">
Edit</a></td>
<td><a href="<c:url value="/removepro{{p.id}}" />" ng-click="remove()">
Delete</a></td>

</tr>
</tbody>
</table>
<script type="text/javascript">
var products=${prolis};
var proapp=angular.module("proapp",[]);
proapp.controller("ProductController",function($scope){
	$scope.product=products;
});


</script>

</body>

</html>