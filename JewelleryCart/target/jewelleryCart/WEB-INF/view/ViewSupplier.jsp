<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
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
<body ng-app="supapp" ng-controller="supCtrl">
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
<tr ng-repeat="sup in supplier">
<td>{{sup.id}}</td>
<td>{{sup.name}}</td>
<td>{{sup.description}}</td>
<td><a href="editsup">Edit</a></td>
<td><a href="removesup">Delete</a></td>
</tr>
</tbody>
</table>
<script type="text/javascript">
var suppliers=${suplis};
var supapp=angular.module("supapp",[]);
supapp.controller("supCtrl",function($scope,$http){
	$scope.supplier=suppliers;
});


</script>



</body>
</html>