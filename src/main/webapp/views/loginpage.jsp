<%@page import="com.user.appconstant.AppConstant"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%
String URL = AppConstant.API_URL;
%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon" href="/img/ak.jpg" type="image/x-icon">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<link href="/css/mycss.css" rel="stylesheet">

<title>My login</title>
</head>
<body ng-app="myApp" ng-controller="validateCtrl">

	<!-- Navbar coding starts here.. -->

	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<div class="container">
			<a class="navbar-brand" href="#"><i class="fa fa-sign-in mx-2"></i>Login</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#"><i class="fa fa-home mx-2"></i>Home</a></li>
					<li class="nav-item"><a class="nav-link active" href="#"><i
							class="fa fa-address-book mx-2 "></i>About</a></li>

					<li class="nav-item"><a class="nav-link" href="#"
						tabindex="-1"><i class="fa fa-user-circle fa-spin mx-2"></i>Contact
							Us</a></li>
				</ul>

			</div>
		</div>
	</nav>


	<!-- navbar coding ends here.. -->

	<!-- main part coding starts here -->

	<div class="container ">
		<div class="row my-5">
			<div class="col-md-6 offset-md-3 col-sm-12 col-xs-12" id="cards">

				<h1 class="title text-center">
					<i class="fa fa-user-plus ms-2"></i>Login Here
				</h1>

				<form name="myForm" novalidate ng-submit="submit()">

					<!-- for username address.. -->
					<div class="form-group">
						<label for="exampleInputEmail1">Username</label> <input
							type="email" class="form-control" name="email"
							ng-model="username" required
							placeholder="Enter the username here." name="myAddress"
							ng-model="text"> <span style="color: red"
							ng-show="myForm.email.$invalid"> <span
							ng-show="myForm.email.$error.required">Email is required.</span><br>
							<span ng-show="myForm.email.$error.email">Invalid email
								address.</span>
						</span>
					</div>


					<!-- for password -->

					<div class="form-group mb-2">
						<label for="exampleInputEmail1">Password</label> <input
							type="password" class="form-control" name="password"
							ng-model="password" required
							placeholder="Enter the password here."> <span
							style="color: red" ng-show="myForm.password.$invalid"> <span
							ng-show="myForm.password.$error.required">password is
								required.</span><br>
						</span>
					</div>





					<div class="form-group mb-2">
						<input type="checkbox" name="terms" ng-model="terms" required
							placeholder="Enter the password here." name="terms"> <label
							for="exampleInputEmail1">terms and conditions</label> <span
							style="color: red" ng-show="myForm.terms.$invalid"> <span
							ng-show="myForm.terms.$error.required"> required.</span><br>
						</span>
					</div>



					<button ng-disabled="myForm.terms.$invalid" type="submit"
						class="text-center btn btn-primary">Submit</button>
				</form>
				<p class="my-3 text-center">
					Dont have Account ? <a data-bs-toggle="modal"
						data-bs-target="#exampleModal" style="text-decoration: none;"
						href=#>Create</a>
				</p>
			</div>
		</div>
	</div>

	<!-- modal starts here.. -->


	<!-- Modal -->
		<form name="myForms" novalidate ng-submit="submitNewUser()">
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header bg-primary">
					<h5 class="modal-title text-white" id="exampleModalLabel">Create
						account</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">

				

						<!-- for username address.. -->
						<div class="form-group">
							<label for="exampleInputEmail1">Username</label> <input
								type="email" class="form-control" name="email"
								ng-model="username" required
								placeholder="Enter the username here." name="myAddress"
								ng-model="text"> <span style="color: red"
								ng-show="myForms.email.$invalid"> <span
								ng-show="myForms.email.$error.required">Email is required.</span><br>
								<span ng-show="myForms.email.$error.email">Invalid email
									address.</span>
							</span>
						</div>


						<!-- for password -->

						<div class="form-group mb-2">
							<label for="exampleInputEmail1">Password</label> <input
								type="password" class="form-control" name="password"
								ng-model="password" required
								placeholder="Enter the password here."> <span
								style="color: red" ng-show="myForm.password.$invalid"> <span
								ng-show="myForms.password.$error.required">password is
									required.</span><br>
							</span>
						</div>





						<div class="form-group mb-2">
							<input type="checkbox" name="terms" ng-model="terms" required
								placeholder="Enter the password here." name="terms"> <label
								for="exampleInputEmail1">terms and conditions</label> <span
								style="color: red" ng-show="myForm.terms.$invalid"> <span
								ng-show="myForms.terms.$error.required"> required.</span><br>
							</span>
						</div>



					
					


				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
						<button ng-disabled="myForms.terms.$invalid" type="submit"
							class="text-center btn btn-primary">Submit</button>
				</div>
			</div>
		</div>
	</div>
	</form>

	<!-- modal ends here.. -->


	<!-- main part coding ends here. -->


	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>

	<script src="/js/myjs.js"></script>


	<script type="text/javascript">
		var app = angular.module('myApp', []);
		app.controller('validateCtrl', function($scope, $http, $compile) {

			
			
			
			$scope.submit = function() {
				alert("loggin")
			}

		});
	</script>





	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>
</html>