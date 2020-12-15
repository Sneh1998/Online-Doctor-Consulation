<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Section</title>
<script src="${propSiteUrl}js/fontAwesome_kit.js"></script>
<script src="${propSiteUrl}js/jquery.min.js"></script>
<script src="${propSiteUrl}js/bootstrap.min.js"></script>

<!-- //Meta tag Keywords -->
<!-- Custom-Files -->
<link rel="stylesheet" href="${propSiteUrl}css/bootstrap.css">

<!-- Bootstrap-Core-CSS -->
<link rel="stylesheet" href="${propSiteUrl}css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="${propSiteUrl}css/slider.css" type="text/css" media="all" />

<!-- Style-CSS -->
<!-- font-awesome-icons -->
<link href="${propSiteUrl}css/font-awesome.css" rel="stylesheet">

<!-- //font-awesome-icons -->

<!-- /Fonts -->
<link
	href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700"
	rel="stylesheet">
<link
	href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700"
	rel="stylesheet">
<!-- //Fonts -->

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

	<section class="container">
		<!-- 		<a href="/showAppointments">Booked Appoinments</a> -->
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Id</th>
					<th>Modules</th>
					<th>Click to Open</th>
					<th>Edit Module</th>
				</tr>
				<tr>
					<th>1.</th>
					<th>Registered Users</th>
					<th><a href="/admin/registeredUsers">
							<button class="btn btn-success">CLick Here to Open </button>
						</a>
					</th>
					<th><a href="#" style="color: black"><span
							class="fas fa-edit"></span> Edit </a></th>
				</tr>
				<tr>
					<th>2.</th>
					<th>Booked Appointments</th>
					<th><a href="/showAppointments" style="color: black">
							<button class="btn btn-success">CLick Here to Open</button>
					</a></th>
					<th><a href="#" style="color: black"><span
							class="fas fa-edit"></span> Edit </a></th>
				</tr>
				<tr>
					<th>3.</th>
					<th>Medicine Module</th>
					<th><a href="/medicineModule">
							<button class="btn btn-success" type="submit">CLick Here
								to Open</button>
					</a></th>
					<th><a href="#" style="color: black"><span
							class="fas fa-edit"></span> Edit </a></th>
				</tr>
				<tr>
					<th>4.</th>
					<th>Chat Module</th>
					<th><button class="btn btn-success">CLick Here to
							Open</button></th>
					<th><a href="#" style="color: black"><span
							class="fas fa-edit"></span> Edit </a></th>
				</tr>

			</thead>
			<tbody>

			</tbody>
		</table>
	</section>
	<c:choose>
		<c:when test="${mode=='ALL_USERS'}">
			<div class="container text-center">
				<h2>All Booked Appointments</h2>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>Id</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Gender</th>
								<th>Height</th>
								<th>Weight</th>
								<th>Marital Status</th>
								<th>Zipcode</th>
								<th>Place</th>
								<th>Country</th>
								<th>Code</th>
								<th>Phone</th>
								<th>Email</th>
								<th>Password</th>
								<th>Delete User</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="appoUser" items="${showUsers}">
								<tr>
									<td>${appoUser.id}</td>
									<td>${appoUser.firstName}</td>
									<td>${appoUser.lastName}</td>
									<td>${appoUser.gender}</td>
									<td>${appoUser.height}</td>
									<td>${appoUser.weight}</td>
									<td>${appoUser.maritalStatus}</td>
									<td>${appoUser.zipcode}</td>
									<td>${appoUser.place}</td>
									<td>${appoUser.country}</td>
									<td>${appoUser.code}</td>
									<td>${appoUser.phone}</td>
									<td>${appoUser.email}</td>
									<td>${appoUser.password}</td>
									<td><a href="/deleteAppointment?id=${appoUser.id}">Delete</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>
		<c:when test="${mode=='ALL_APPOINTMENTS'}">
			<div class="container text-center">
				<h2>All Booked Appointments</h2>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>Id</th>
								<th>Discuss About</th>
								<th>User'Name</th>
								<th>User'Phone</th>
								<th>Doctor'Name</th>
								<th>User's Email</th>
								<th>Field Name</th>
								<th>Delete Appoinments</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="appoUser" items="${showAppointments}">
								<tr>
									<td>${appoUser.b_id}</td>
									<td>${appoUser.discussChoice}</td>
									<td>${appoUser.userName}</td>
									<td>${appoUser.userPhone}</td>
									<td>${appoUser.doctorName}</td>
									<td>${appoUser.userEmail}</td>
									<td>${appoUser.moduleName}</td>
									<td><a href="/deleteAppointment?id=${appoUser.b_id}">Delete</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>
	</c:choose>
	<!--  ${Book.userName} here

	<p>admin= ${admin.adminName} , email= ${admin.adminEmail}</p>-->
</body>
</html>