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

<body ng-app="supapp" ng-controller="SupplierController">
<div align ="center"><label>search:<input type="text"  ng-model="searchbox"></label></div>
<table class="table table-striped">
<thead>
<tr>
<th>ID</th>
<th>Name</th>
<th>Description</th>
<th>Edit</th>
<th>Delete</th>
</tr>
</thead>
<tbody>
<tr ng-repeat="s in supplier | filter : searchbox">
<td>{{s.id}}</td>
<td>{{s.name}}</td>
<td>{{s.description}}</td>
<td><a href="<c:url value="/editsup{{s.id}}" />" ng-click="enabledEditor()">
Edit</a></td>
<td><a href="<c:url value="/removesup{{s.id}}" />" ng-click="remove()">
Delete</a></td>
</tr>
</tbody>
</table>
<script type="text/javascript">
var suppliers=${suplis};
var supapp=angular.module("supapp",[]);
supapp.controller("SupplierController",function($scope){
	$scope.supplier=suppliers;
});


</script>

</body>

</html>