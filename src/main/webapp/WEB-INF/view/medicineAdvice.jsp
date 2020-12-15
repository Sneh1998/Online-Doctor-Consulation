<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Medicine Advice</title>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<link href="/css/font-awesome.css" rel="stylesheet">
<link
	href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700"
	rel="stylesheet">
<link
	href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700"
	rel="stylesheet">
<style>
#medName {
	margin-bottom: 0px !important;
	margin-top: 0px !important;
}
.col-lg-4{
	background-color:white;
	border-radius:5px;
}
.btn1{
	border-radius:5px;
	padding:5px 25px;
	
}
</style>
</head>
<body class="text-center"
	style="background: url('/img/doc13.jpg') no-repeat; background-size: cover;">
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
											<li><a href="/logout-success">Log Out</a></li>
										</ul>
									</li>
									<li><a href="/contactUs">Contact Us</a></li>
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
	<Section class=" banner-bottom py-5">
		<div class="container-fluid" style="background-color: #221144;">
			<div class="header-w text-center mb-5">
				<h3 class="title-w3pvt mb-5" style="color:white">Best Medicine
					Advice</h3>
			</div>
			<form enctype="application/json" method="get"
				action="/medicineAdvice">
				<p>
					Enter your disease: <input type="text" name="diseaseName" id="inpt1"> 
					<input type="submit" class="btn1 btn-primary">
				</p>
			</form>


			<div class="col-lg-12">
				<div class="row">
					<div class="col-lg-4 gd-bottom" id="medName">
						<div class="bottom-gd">
							<h3>Medicine Name</h3>
							<c:forEach var="dName" items="${medObj}">
								<p>
									${dName.medName}<br>
								</p>
							</c:forEach>
						</div>
					</div>
					<div class="col-lg-4 gd-bottom">
						<div class="bottom-gd">
							<h3>Disease Name</h3>
							<c:forEach var="dName" items="${medObj}">
								<p>
									For ${dName.diseaseName}<br>
								</p>
							</c:forEach>
						</div>
					</div>
					<div class="col-lg-4 gd-bottom">
						<div class="bottom-gd">
							<h3>Medicine Price</h3>
							<c:forEach var="dName" items="${medObj}">
								<p>
									Rs ${dName.medPrice}<br>
								</p>
							</c:forEach>
						</div>
					</div>
				</div>

			</div>
			<br>
		</div>
	</Section>






</body>
</html>