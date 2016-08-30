<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="index.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Registration Page</title>
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
body {
	background-color: #D3D3D3;
}
</style>

</head>
<br>
<br>

<h1>
	<center>
		<h1>Registration Form</h1>
	</center>
</h1>
<br>
<br>

<div class="container">
	<form:form action="Register" method="POST" commandName="user"
		class="form-horizontal" role="form">
		
		<div class="form-group">
			<label class=" col-sm-2 control-label">First Name:</label>
			<div class="col-sm-10">
				<form:input path ="firstname"  placeholder="Enter first name" class="form-control" 
					required="TRUE" title="should not be empty" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Last Name:</label>
			<div class="col-sm-10">
				<form:input path="lastname" placeholder="Enter last name" class="form-control"
					required="TRUE" title="should not be empty" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Username:</label>
			<div class="col-sm-10">
				<form:input path="username" placeholder="Enter last name" class="form-control"
					required="TRUE" title="should not be empty" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Address:</label>
			<div class="col-sm-10">
				<form:input path="address" placeholder="Enter address" class="form-control" required="TRUE" title="should not be empty"/>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">City:</label>
			<div class="col-sm-10">
				<form:input path="city"  placeholder="Enter City " class="form-control" required="TRUE" 

title="should not be empty" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">State:</label>
			<div class="col-sm-10">
				<form:input path="state"  placeholder="Enter State " class="form-control" required="TRUE" 

title="should not be empty" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Zip:</label>
			<div class="col-sm-10">
				<form:input path="zip"  placeholder="Enter " class="form-control" required="TRUE" 

title="should not be empty" />
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label"> Age:</label>
			<div class="col-sm-10">
				<form:input path="age"  placeholder="Enter age" class="form-control"  required="TRUE"  title="should not be empty" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Gender:</label></br>
			<div class="col-sm-10">
		<label class="radio-inline"><form:radiobutton path="gender" value="M"/>Male</label>
		<label class="radio-inline"><form:radiobutton path="gender" value="F"/>Female</label>
		
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Phone Number:</label>
			<div class="col-sm-10">
				<form:input path="phonenumber"  pattern="[789][0-9]{9}"
					 placeholder="Enter Phone Number" class="form-control" required="true"
					title="should be in the form of 10 digit starting with 789!" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">E-Mail Id:</label>
			<div class="col-sm-10">
				<form:input path="email" class="form-control" pattern="[^@\s]+@[^@\s]+\.[^@\s]+"
					placeholder="Enter email" required="TRUE"
					title="should be in the form of abc@example.com" />
			</div>
		</div>





		<div class="form-group">
			<label class="col-sm-2 control-label">Password:</label>
			<div class="col-sm-10">
				<form:input path ="password" class="form-control" type="password" name="password"
					placeholder="Enter password" required="TRUE"
					title="should not be empty" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Confirm Password:</label>
			<div class="col-sm-10">
				<form:input path ="confirmpassword" class="form-control" type="password"
					placeholder="Enter password" required="TRUE"
					title="should not be empty" />
			</div>
		</div>
		<center>
		<button type="submit" class="btn btn-info">Submit</button> 
		<button type="Reset" class="btn btn-info">Reset</button>
	</form:form>
	
		
	</center>
</div>
</body>
</html>
