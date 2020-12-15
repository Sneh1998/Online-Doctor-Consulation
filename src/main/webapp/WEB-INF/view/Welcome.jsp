<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IF=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Cache-Control" content="no-cache">
<title>Welcome to MedOnline</title>

<!-- Styling -->
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/slider.css" type="text/css" media="all" />

<link rel="stylesheet" href="/css/doc3(login).css">
<link rel="stylesheet" href="/css/doc3(register).css">
<link href="css/font-awesome.css" rel="stylesheet">

<link
	href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700"
	rel="stylesheet">
<link
	href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700"
	rel="stylesheet">

<!-- Js files -->
<script src="/js/fontAwesome_kit.js"></script>
<script src="/js/doc3(register).js"></script>
<script src="/js/jquery.min.js"></script>
<script src="/js/popper.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/formValidateJquery.js"></script>
<style>
.fa {
	display: inline-block;
	font: normal normal normal 14px/1 FontAwesome;
	font-size: inherit;
	text-rendering: auto;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}

body {
	background: url('/img/welcome5.jpg') no-repeat !important;
	background-size: cover !important;
}

.anime {
	background: url('/img/patientAnime.jpg') no-repeat !important;
}

#home {
	background-color: grey;
}

.fa-heartbeat, .fa-medkit, .fa-tooth, .fa-diagnoses {
	font-size: 35px;
}

#myModal, .modal-body {
	background: rgba(0, 0, 0, .5) !important;
}

#myModal, .modal-content {
	background-color: black;
}

#email, #password {
	margin-bottom: 0px !important;
}

.logo {
	margin: 0px !important;
}

.col-lg-4 {
	border-radius: 5px;
}

.label1 {
	font-size: 25px;
}

.btn1 {
	padding: 5px 30px;
	margin: 10px 20px 10px 10px;
	border-radius: 10px;
	font-size: 25px;
}

.btn2 {
	padding: 5px 30px;
	margin: 10px 20px 10px 10px;
	border-radius: 10px;
	font-size: 25px;
}

#keyError, #passError {
	color: red;
}

.loginModule {
	color: #137BE5;
	width: 450px;
	height: 500px;
	text-align: center;
	font-family: verdana;
	border-radius: 5px;
	background: rgba(0, 0, 0, .6);
	font-family: verdana;
}

.fieldError {
	color: red;
}
</style>
<script>
	/*$(document).ready(function() {
		$("#myModal").modal('show');
	});*/
	function submitAdminForm() {
		var a = document.getElementById("adminKey").value;
		var b = document.getElementById("adminPassword").value;
		var key = '${admin.adminKey}', pass = '${admin.adminPass}';
		if (a != key && b != pass) {
			//alert("welcome Admin");
			//document.getElementById("passError").innerHTML = "Not valid credentials. Try again!";
		} else {
			alert("welcome Admin");
		}
	}
</script>
</head>
<body class="sb-nav-fixed">
	<!-- <div id="userModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" style="color: white"><p style="color:grey"><span class="fa fa-meetup" ></span>edOnline</p> First register yourself!</h4>
					<button type="button" style="color: white;" class="close"
						data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>

				<div class="loginbox1">
					<div class="modal-body text-center">
						<form enctype="application/json" method="get" action="/validLogin">

							
							<i class="fa fa-user" aria-hidden="true"></i> <input type="email"
								name="email" id="email" placeholder="Enter email here"><br>

							<br> <i class="fa fa-lock" aria-hidden="true"></i> <input
								type="password" id="password" name="password"
								placeholder="Enter password here"><br>
							
							<input class="btn" type="submit" value="Login here">
						</form>
						<br>
						<p>
							Don't have an account? <a href="/register"><b>Signup here</b></a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>-->
	<div id="adminModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" style="color: red">
						<p style="color: grey">
							<span class="fa fa-meetup"></span>edOnline
						</p>
						ADMINITSTRATOR LOGIN >
					</h4>
					<button type="button" style="color: white;" class="close"
						data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>

				<div class="loginbox1">
					<div class="modal-body text-center">
						<form enctype="application/json" method="post" action="/admin"
							onsubmit="return (submitAdminForm());" name="adminForm">

							<i class="fa fa-key" aria-hidden="true"></i> <input
								type="password" id="adminKey" name="adminKey"
								placeholder="Enter admin key here"><br>
							<p id="keyError"></p>
							<br> <i class="fa fa-lock" aria-hidden="true"></i> <input
								type="password" id="adminPassword" name="adminPassword"
								placeholder="Enter password here">
							<p id="passError"></p>
							<br> <input class="btn" type="submit" value="Login here">
						</form>
						<!-- <p>${welcomeObj.adminName} ${welcomeObj.adminPass}</p> -->
						<br>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="main-w-header-sec inner" id="home">
		<div class="overlay inner">
			<!-- header -->
			<header>
				<div class="container">
					<div
						class="header d-lg-flex justify-content-between align-items-center">
						<div class="header-section">
							<h1 class="logo">
								<a class="navbar-brand logo editContent" href="/welcome"> <span
									class="fa fa-meetup"></span>edOnline
								</a>
							</h1>
						</div>
						<div class="nav_section">
							<nav>
								<label for="drop" class="toggle mt-lg-0 mt-1"><span
									class="fa fa-bars" aria-hidden="true"></span></label> <input
									type="checkbox" id="drop" />
								<ul class="menu">
									<li><a href="#loginModule"> <input type="button"
											class="btn2 btn-success" value="Login as User">
									</a></li>

									<li><input type="button" class="btn2 btn-success"
										value="Login as Admin" data-toggle="modal"
										data-target="#adminModal"></li>

									<li class="icons"><a href="#" class="face-bk"><span
											class="fa fa-facebook" aria-hidden="true"></span></a></li>

									<li class="icons"><a href="#" class="twitter"><span
											class="fa fa-twitter" aria-hidden="true"></span></a></li>
									<li class="icons"><a href="#" class="dribble"><span
											class="fa fa-dribbble"></span></a></li>

								</ul>
							</nav>
						</div>

					</div>
				</div>

			</header>
			<!-- //header -->
		</div>
	</div>
	<div>
		<br>
	</div>
	<section>
	<c:if test="${not empty error}">
		<div class="alert alert-danger text-center" style="color:red">
			<h2><c:out value="${error}"></c:out></h2>
		</div>
	</c:if>
		<div class="container">
			<div class="row">
				<div class="col-lg-4" style="background-color: white">
					<h1>Not feeling well?</h1>
					<div>
						<table>
							<tr>
								<td><img src="/img/patientAnime1.jpg" width="150px" height="150px"></td>
								<td><p class="label1">Welcome to our MedOnline. An
										Online service that is made for all your comfort!</p>
									<form>
										<a href="#SignUpModule">
											 <input type="button" class="btn2 btn-success" value="Sign Up">
										</a>
									</form></td>
							</tr>
						</table>
					</div>
				</div>
			</div>

		</div>
	</section>

	<section
		style="margin-top: 5%; background: url('/img/welcome4.jpg') no-repeat !important; background-size: cover !important;">
		<br>
<%-- 		<c:choose> --%>
<%-- 			<c:when test="${mode=='LOGIN_MODE' }"> --%>
				<div class="container" id="loginModule">
					<div class="row">
						<div class="col-lg-6"></div>
	
						<div class="col-lg-6">
							<div class="loginModule">
								<h1>
									<b>Login</b> <i class="fa fa-users" style="color: white" aria-hidden="true"></i>
								</h1>
	
								<h5>Enter your details to continue..</h5>
								<form enctype="application/json" method="POST" action="/user-login">
									<i class="fa fa-user" aria-hidden="true"></i> 
									<input type="email" id="userEmail" name="username" placeholder="Enter email here"><br> <br>
									 <i class="fa fa-lock"></i> 
									 <input type="password" id="userPassword" name="password" placeholder="Enter password here"><br>
									<button class="btn" type="submit">Login Here</button>
								</form>
								<br>
								<p>
									Don't have an account? <a href="#SignUpModule"><b>Signup here</b></a>
								</p>
							</div>
						</div>
					</div>
				</div>
<%-- 			</c:when> --%>
<%-- 		</c:choose> --%>
		<br>
	</section>
	<section style="margin: 10px">
		<div class="container" id="SignUpModule">
			<div class="row">
				<div class="col-lg-12">
					<form enctype="application/json" method="get" action="addEntity" onsubmit="return validate();">
						<div class="container" id="registerBox">
							<div class="row">
								<div class="col-lg-6 col-1">
									<div class="row no-gutter">
										<h3>General Information</h3>
									</div>
									<div>
										<input type="text" placeholder="First Name" id="firstName"
											name="firstName" class="fieldValidate"
											error-id="firstNameError" />
										<p id="firstNameError" class="fieldError"></p>
									</div>
									<div>
										<input type="text" placeholder="Last Name" id="lastName"
											name="lastName" class="fieldValidate"
											error-id="lastNameError" />
										<p id="lastNameError" class="fieldError"></p>
									</div>
									<div>
										<select id="gender" name="gender" class="fieldValidate"
											error-id="genderError" />
										<p id="genderError" class="fieldError"></p>
											<option value="Male">Male</option>
											<option value="Female">Female</option>
											</select>
									</div>
									<div>
										<input type="text" placeholder="Height" id="height" name="height" class="fieldValidate" error-id="heightError" />
										<p id="heightError" class="fieldError" ></p>
									
										<input type="text" placeholder="weight" id="weight" name="weight" class="fieldValidate" error-id="weightError" />
										<p id="weightError" class="fieldError"></p>
									</div>
									<div>
										<select id="maritalStatus" name="maritalStatus"
											class="fieldValidate" error-id="maritalStatusError" />
										<p id="maritalStatusError" class="fieldError"></p>
										<option value="status">Marital status</option>
										<option value="married">Married</option>
										<option value="Single">Single</option>
										<option value="divorced">Divorced</option>
										</select>
									</div>
								</div>
								<div class="col-lg-6 col-2">
									<div class="row no-gutter">
										<h3>Contact Details</h3>
									</div>
									<br>
									<div class="row no-gutter">
										<div class="col-lg-4">
											<input type="text" placeholder="Zip Code" name="zipcode"
												id="zipcode" class="fieldValidate" error-id="zipcodeError" />
											<p id="zipcodeError" class="fieldError">
										</div>
										<div class="col-lg-8">
											<input type="text" placeholder="Place" name="place"
												id="place" class="fieldValidate" error-id="placeError" />
											<p id="placeError" class="fieldError">
										</div>
									</div>
									<input type="text" placeholder="Country" id="country"
										name="country" class="fieldValidate" error-id="countryError" />
									<p id="countryError" class="fieldError">
										<br>
									<div class="row no-gutter">
										<div class="col-lg-4">
											<input type="text" placeholder="Code +" id="code" name="code"
												class="fieldValidate" error-id="codeError" />
											<p id="codeError" class="fieldError">
										</div>
										<div class="col-lg-8">
											<input type="text" placeholder="Phone" id="phone"
												name="phone" class="fieldValidate" error-id="phoneError" />
											<p id="phoneError" class="fieldError">
										</div>
									</div>
									<div class="form-group">
										<input type="text" placeholder="Your Email" id="email"
											name="email" class="fieldValidate" error-id="emailError" />
										<p id="emailError" class="fieldError">
									</div>
									<div class="form-group">
										<input type="text" placeholder="Your Password" id="password"
											name="password" class="fieldValidate"
											error-id="passwordError" />
										<p id="passwordError" class="fieldError">
											<br>
									</div>
									<p>
										<input type="radio" id="rad"> I do not accept the <b><u>Terms and Conditions</u></b> of your site.
									</p>

									<a href="#loginModule"><input class="btn-success" id="btn1" type="submit" value="REGISTER"></a>
									 <input class="btn-success" id="btn2" type="reset" value="RESET"> <a id="btn3" href="/">BACK</a>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
</body>
</html>