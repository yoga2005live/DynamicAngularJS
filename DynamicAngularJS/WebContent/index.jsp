<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="demoApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="libs/angular.js"></script>
<script src="libs/angularDemo.js"></script>
<script src="libs/jquery-3.1.1.js"></script>
<link href="libs/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<script src="libs/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<center ng-controller="demoCtrl">
		<div>
			<h2>
			<button class="btn-success" ng-click="getDataFromServer();progress-bar">Fetch
				data from server</button>
			<p><span class="label label-default">First Name : {{person.data.firstName}}</span></p>
			<p><span class="label label-info">Last Name : {{person.data.lastName}}</span></p>
			<p><span class="label label-warning">Counter : {{person.data.counter}}</span></p>
			</h2>
		</div>

	</center>
	<div class="progress" ng-controller="MainCtrl"">
		<div class="progress-bar progress-bar-striped active"
			role="progressbar" aria-valuenow="{{data.progress}}" aria-valuemin="0"
			aria-valuemax="100" style="width: {{data.progress}}%">
			<span class="sr-only">{{data.progress}}% Complete</span>
		</div>
	</div>
</body>
</html>