<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IF=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<title>Main Page</title>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/doc3(register).css">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<link href="/css/font-awesome.css" rel="stylesheet">
<link
	href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700"
	rel="stylesheet">
<link
	href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700"
	rel="stylesheet">
</head>
<style>
.fieldError {
	color: red;
}
</style>
<body>
	<div class="main-w-header-sec inner" id="home">
		<div class="overlay inner">
			<!-- header -->
			<header>
				<div class="container">
					<div
						class="header d-lg-flex justify-content-between align-items-center">
						<div class="header-section">
							<h1 class="logo">
								<a class="navbar-brand logo editContent" href="/"> <span
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
									<li class="active"><a href="/">Home</a></li>
									<li><a href="/aboutUs">About </a></li>

									<li><a href="/fields">Fields</a></li>
									<li>
										<!-- First Tier Drop Down --> <label for="drop-2"
										class="toggle">Dropdown <span class="fa fa-angle-down"
											aria-hidden="true"></span>
									</label> <a href="#">Registration <span class="fa fa-angle-down"
											aria-hidden="true"></span></a> <input type="checkbox" id="drop-2" />
										<ul class="inner-dropdown">
											<li><a href="/register">Sign Up</a></li>
											<li><a href="/login">Log In</a></li>
										</ul>
									</li>
									<!-- <li><a href="/contactUs">Contact Us</a></li> -->
									<li><a href="/login">Login</a></li>
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
	<form enctype="application/json" method="get"
		action="addEntity" onsubmit="return validate();">
		<div class="container" id="registerBox">
			<div class="row">
				<div class="col-lg-6 col-1">
					<div class="row no-gutter">
						<h3>General Information</h3>
					</div>
					<div>
						<input type="text" placeholder="First Name" id="firstName"
							name="firstName" class="fieldValidate" error-id="firstNameError" />
						<p id="firstNameError" class="fieldError"></p>
					</div>
					<div>
						<input type="text" placeholder="Last Name" id="lastName"
							name="lastName" class="fieldValidate" error-id="lastNameError" />
						<p id="lastNameError" class="fieldError"></p>
					</div>
					<div>
						<select id="gender" name="gender" class="fieldValidate" error-id="genderError" />
							<p id="genderError" class="fieldError"> 
							<option value="Male">Male</option>
							<option value="Female">Female</option>
						</select>
					</div>
					<div>
						<input type="text" placeholder="Height" id="height"	name="height" class="fieldValidate" error-id="heightError" />
						<p id="heightError" class="fieldError">
					
						<input type="text" placeholder="weight" id="weight" name="weight" class="fieldValidate" error-id="weightError" />
					<p id="weightError" class="fieldError">
					</div>
					<div>
						<select id="maritalStatus" name="maritalStatus"
							class="fieldValidate" error-id="maritalStatusError" />
						<p id="maritalStatusError" class="fieldError">
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
							<input type="text" placeholder="Place" name="place" id="place"
								class="fieldValidate" error-id="placeError" />
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
							<input type="text" placeholder="Phone" id="phone" name="phone"
								class="fieldValidate" error-id="phoneError" />
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
							name="password" class="fieldValidate" error-id="passwordError" />
						<p id="passwordError" class="fieldError">
							<br>
					</div>
					<p>
						<input type="radio" id="rad">I do not accept the <b><u>Terms
								and Conditions</u></b> of your site.
					</p>

					<input class="btn-basic" id="btn1" type="submit" value="register"><input
						class="btn-basic" id="btn2" type="reset" value="reset"> <a
						id="btn3" href="/">Back</a>
				</div>
			</div>
		</div>
	</form>
	<!--script src="/js/doc3(register).js"></script-->
	<script src="/js/jquery.min.js"></script>
	<script src="/js/popper.min.js"></script>
	<script src="/js/formValidateJquery.js"></script>
	<script src="/js/bootstrap.min.js"></script>
</body>
</html>