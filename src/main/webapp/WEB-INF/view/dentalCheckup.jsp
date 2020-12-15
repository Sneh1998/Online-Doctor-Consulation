<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dental CheckUp</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8" />
<meta name="keywords"
	content="MedOnline Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

<script src="/js/fontAwesome_kit.js"></script>
<script src="/js/jquery.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/formValidateJquery.js"></script>

<!-- //Meta tag Keywords -->
<!-- Custom-Files -->
<link rel="stylesheet" href="css/bootstrap.css">

<!-- Bootstrap-Core-CSS -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/slider.css" type="text/css" media="all" />


<!-- Style-CSS -->
<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet">

<!-- //font-awesome-icons -->
<!-- /Fonts -->
<link
	href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700"
	rel="stylesheet">
<link
	href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700"
	rel="stylesheet">
<!-- //Fonts -->

<!-- Appointment CSS -->
<!-- <link rel="stylesheet" href="/css/appointmnt.css"> -->
<link rel="stylesheet" href="/css/generalCheckup.css">
<style>
#home {
	background-color: grey;
}

.fieldError{
	color:red;
}
.checkbox {
	color: #CD4E54;
	background-color: #F3dCED;
}

body {
	background-image: url("/img/doc13.jpg");
}

.inner-check {
	font-size: 3em;
	margin-bottom: 0.7em;
}

.doctors {
	font-size: 6em;
	margin: 0px !important;
	color: #C0228E !important;
}

.inner-div {
	background-color: #eee;
}

.mb-2 {
	padding-left: 35px;
	padding-right: 35px;
	font-size: 20px;
}

.col-lg-4 {
	margin-bottom: 15px;
}

.labelClass {
	font-size: 25px;
}

#registerBox {
	background-color: #12a681;
}

.info {
	background-color: #eee;
}
</style>
</head>
<body>
	<div class="main-w-header-sec inner" id="home">
		<div class="overlay inner">
			<!-- header -->
			<header>
				<div class="container">
					<div
						class="header d-lg-flex justify-content-between align-items-center">
						<div class="header-section">
							<h1>
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
									<li><a href="/">Home</a></li>
									<li class="active"><a href="/aboutUs">About </a></li>
									<li>
										<!-- First Tier Drop Down --> <label for="drop-2"
										class="toggle">Dropdown <span class="fa fa-angle-down"
											aria-hidden="true"></span>
									</label> <a href="#">Dropdown <span class="fa fa-angle-down"
											aria-hidden="true"></span></a> <input type="checkbox" id="drop-2" />
										<ul class="inner-dropdown">
											<li><a href="#stats">Stats</a></li>
											<li><a href="#lab">Laboratory</a></li>
											<li><a href="#test">Reviews</a></li>
										</ul>
									</li>
									<li><a href="gallery.html">Departments</a></li>
									<li><a href="contact.html">Contact Us</a></li>
									<li><a href="/logout-success">Log Out</a></li>
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
	<section>
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="index.html">Home</a></li>
			<li class="breadcrumb-item active">Dental CheckUp</li>
		</ol>
	</section>
	<!-- <h3 class="mb-2 text-center" style="font-size:35px">Head Section</h3>
	<section style="background-color: black">
		<form method="get" action="#" class="text-center">
			<div class="checkbox">
				<div class="inner-check">
					<input type="checkbox"><span class="fas fa-head-side-mask "></span>
				</div>
				<div class="inner-check">
					<input type="checkbox"> <span
						class="fas fa-head-side-virus"></span>
				</div>
				<div class="inner-check">
					<input type="checkbox"> <span class="fas fa-eye"></span>
				</div>
				<div class="inner-check">
					<input type="checkbox"> <span
						class="fas fa-head-side-cough"></span>
				</div>
				<div class="inner-check">
					<input type="checkbox"> <span class="fas fa-brain"></span>
				</div>
				<button class="btn btn-primary" type="submit">Submit</button><br><br>
			</div>
		</form>
	</section> -->
	<section>
		<div>

			<h3 class="mb-2 text-center" style="font-size: 45px;color:white">
				<span class="fas fa-tooth  text-center"></span> Our Dentists and
				Dental Specialists
			</h3>
		</div>
		<div class="container-fluid inner-sec-w3ls">
			<div class="feature-grids row text-center">
				<div class="col-lg-4 gd-bottom one">
					<a href="#bookingModule">
						<div class="bottom-gd inner-div">
							<div class="doctors">
								<span class="doctors fas fa-user-nurse" aria-hidden="true"></span>
							</div>
							<label class="mb-2 labelClass">Amrita Gogia</label>

							<p>Dentist 4-years experience</p>
							<button class="btn btn-primary mb-2">Book Appointment</button>
						</div>
					</a>
				</div>
				<div class="col-lg-4 gd-bottom one">
					<a href="#bookingModule">
						<div class="bottom-gd inner-div">
							<div class="doctors">
								<span class="doctors fa fa-user-md" aria-hidden="true"></span>
							</div>
							<label class="mb-2 labelClass">Rajiv Arora</label>
							<p>Dental Consultant 2-years experience</p>
							<button class="btn btn-primary mb-2">Book Appointment</button>
						</div>
					</a>
				</div>
				<div class="col-lg-4 gd-bottom one">
					<a href="#bookingModule">
						<div class="bottom-gd inner-div">
							<div class="doctors">
								<span class="doctors fas fa-user-nurse" aria-hidden="true"></span>
							</div>
							<label class="mb-2 labelClass">Leena Sharma</label>

							<p>Dental Specialist 7-years experience</p>
							<button class="btn btn-primary mb-2">Book Appointment</button>
						</div>
					</a>
				</div>
				<div class="col-lg-4 gd-bottom one">
					<a href="#bookingModule">
						<div class="bottom-gd inner-div">
							<div class="doctors">
								<span class="doctors fa fa-user-md" aria-hidden="true"></span>
							</div>
							<label class="mb-2 labelClass">Sushil Chawla</label>
							<p>General Dentist 3.5-years experience</p>
							<button class="btn btn-primary mb-2">Book Appointment</button>
						</div>
					</a>
				</div>
				<div class="col-lg-4 gd-bottom one">
					<a href="#bookingModule">
						<div class="bottom-gd inner-div">
							<div class="doctors">
								<span class="doctors fas fa-user-nurse" aria-hidden="true"></span>
							</div>
							<label class="mb-2 labelClass">Payal Nayar</label>

							<p>Dental Specialist 4-years experience</p>
							<button class="btn btn-primary mb-2">Book Appointment</button>
						</div>
					</a>
				</div>
				<div class="col-lg-4 gd-bottom one">
					<a href="#bookingModule">
						<div class="bottom-gd inner-div">
							<div class="doctors">
								<span class="doctors fa fa-user-md" aria-hidden="true"></span>
							</div>
							<label class="mb-2 labelClass">Ashish Gupta</label>
							<p>General Dentist 8-years experience</p>
							<button class="btn btn-primary mb-2">Book Appointment</button>
						</div>
					</a>
				</div>
			</div>
		</div>
	</section>
	<section>
		<!-- <div class="container-fluid"
			style='background-image: url("/img/banner5.jpg")'>
			<h3 class="mb-3">
				<form enctype="application/json" method="get" action="/onlineChat">
					Want live consulting?
					<button type="submit" class="btn btn-info btn-lg"
						data-toggle="modal" data-target="#myModal">Open Chat</button>
			</h3>

			<div class="modal fade" id="myModal" role="dialog">
				<div class="modal-dialog">

					 //modal content
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">Doctor Online ChatBox</h4>
							<button type="button" class="close" data-dismiss="modal">&times;</button>

						</div>
						<div class="modal-body">
							<p>Some text in the modal.</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
						</div>
					</div>

				</div>
			</div>

		</div>-->
		</div>
	</section>
	<section id="registerBox">
		<div class="container" id="bookingModule">
			<div id="appointment">
				<h3 class="title-w3pvt mb-3 text-center">
					Book Appointment<i class="fa fa-user"></i>
				</h3>

				<form enctype="application/json" method="get" action="/bookAppointment" onsubmit="return validate();">
					<div class="container" id="registerBox" >
						<div class="row">
							<div class="col-lg-5 col-2">
								<div class="row no-gutter">
									<h3 class="appoint">Get An Appointment?	</h3>
								</div>
								<br>
								<div class="row no-gutter">
									<div>
									<input type="hidden" name="moduleName" value="Dental Problem">
										<label class="appointDiscuss">How Can We Help You?</label> 
										<select id="discuss" class="appointDiscuss fieldValidate"  name="discussChoice"  error-id="discussChoiceError" />
											<p id="discussChoiceError" class="fieldError">
											<option value="discuss">I would like to discuss</option>
											<option value="tooth decay">About Toothdecay</option>
											<option value="tooth sensitiviy">About Tooth Sensitivity</option>
											<option value="toothaches">About Tooth Ache</option>
											<option value="gum disease">About Gum Problems</option>
											<option value="tooth infection">About Tooth Infection</option>
											<option value="oral checkup">About Oral Checkup</option>
										</select>
										
									</div>
									<div class="col-md-6">
										<label>Your Name</label><br>
										<input type="text" placeholder="name" name="userName" id="name"class="fieldValidate" error-id="userNameError" />
										<p id="userNameError" class="fieldError">
									</div>
									<div class="col-md-6">
										<label>Your Phone Number?</label><br>
										<input type="text" placeholder="phone" name="userPhone" id="phone" class="fieldValidate" error-id="phoneError" />
										<p id="phoneError" class="fieldError">
									</div>
									<div class="col-md-6">
										<label>Doctor's Name</label><br>
										<input type="text" placeholder="Doctor's Name" name="doctorName" id="age" class="fieldValidate" error-id="doctorNameError" />
										<p id="doctorNameError" class="fieldError">
									</div>
									<div class="col-md-6">
										<label>Your Email</label><br>
										<input type="email" placeholder="email" name="userEmail" id="email" class="fieldValidate" error-id="emailError" />
										<p id="emailError" class="fieldError">
									</div>
									<div class="col-md-12">
										<button type="submit" class="btn-warning" name="submit" id="btn1">Click to Book Appointment</button>
									</div>
								</div>
							</div>
							<div class="col-lg-7  col-1" >
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<br>
	</section>
	<section class="info">
		<div class="container">
			<div class="row mt-lg-4 bottom-w-sec-nav mx-0">
				<div class="col-md-4 footer-grid_section_w">
					<h3 class="footer-title mb-lg-4 mb-3">Information</h3>
					<ul class="list-unstyled w-icons">
						<li><a href="index.html">Home</a></li>
						<li class="mt-3"><a href="/aboutUs">About Us</a></li>
						<li class="mt-3"><a href="gallery.html">Departments</a></li>
						<li class="mt-3"><a href="services.html">Services</a></li>
						<li class="mt-3"><a href="contact.html">Contact Us</a></li>
					</ul>
				</div>
				<div class="col-md-4 footer-grid_section_w">
					<!-- social icons -->
					<div class="agileinfo_social_icons">
						<h3 class="footer-title mb-lg-4 mb-3">Customer Service</h3>
						<ul class="list-unstyled w-icons">

							<li><a href="about.html">About Us</a></li>
							<li class="mt-3"><a href="#">Delivery & Returns</a></li>
							<li class="mt-3"><a href="#">Waranty</a></li>
							<li class="mt-3"><a href="#">Terms & Condition</a></li>
							<li class="mt-3"><a href="#">Privacy Policy</a></li>
						</ul>
					</div>
					<!-- social icons -->
				</div>
				<div class="col-md-4 footer-grid_section_w my-md-0 my-5">
					<h3 class="footer-title mb-lg-4 mb-3">Contact Info</h3>
					<div class="contact-info">
						<div class="footer-address-inf">
							<h4 class="ad-info mb-2">Phone</h4>
							<p>+121 098 8907 9987</p>
						</div>
						<div class="footer-address-inf my-4">
							<h4 class="ad-info mb-2">Email</h4>
							<p>
								<a href="mailto:info@example.com">info@example.com</a>
							</p>
						</div>
						<div class="footer-address-inf">
							<h4 class="ad-info mb-2">Location</h4>
							<p>Honey Avenue, New York City</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>