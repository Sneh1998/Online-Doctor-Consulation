<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IF=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Cache-Control" content="no-cache">
<title>Main Page</title>

<!-- Styling -->
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="/css/slider.css" type="text/css" media="all" />
<link rel="stylesheet" href="/css/doc3.css">
<link rel="stylesheet" href="/css/doc3(login).css">
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
<style>
.fa {
	display: inline-block;
	font: normal normal normal 14px/1 FontAwesome;
	font-size: inherit;
	text-rendering: auto;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
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
</style>
<script>
	$(document).ready(function() {
		$("#myModal").modal('show');

		//alert('Welcome ' + '${obj.firstName}');
	});
</script>
</head>
<body class="sb-nav-fixed">
	<div id="myModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" style="color: white">
						<p style="color: grey">
							<span class="fa fa-meetup"></span>edOnline
						</p>
					</h4>
					<button type="button" style="color: white;" class="close"
						data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>

				<div class="loginbox1">
					<div class="modal-body text-center">
						<h1>Welcome ${session_name} </h1><br>
						<p>
							<b>We welcome you!!</b>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="main-w-header-sec" id="home">
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

									<li>
										<!-- First Tier Drop Down --> <label for="drop-2"
										class="toggle">Dropdown <span class="fa fa-angle-down"
											aria-hidden="true"></span>
									</label> <a href="#">Registration <span class="fa fa-angle-down"
											aria-hidden="true"></span></a> <input type="checkbox" id="drop-2" />
										<ul class="inner-dropdown">
										
											<li><a href="/register">Sign Up</a></li>
											<li><a href="/?logout=success">Log Out</a></li>
										</ul>
									</li>
									<li><a href="/contactUs" data-toggle="modal"
										data-target="#myModal">Contact Us</a></li>
									<li><a href="/?logout=success">Log Out</a></li>
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
	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">

			<!-- Indicators -->
			<ul class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ul>

			<!-- The slideshow -->
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="/img/doc4.jpg" alt="Los Angeles" width="1100"
						height="500">

				</div>
				<div class="carousel-item">
					<img src="/img/doc5.jpg" alt="Chicago" width="1100" height="500">
				</div>
				<div class="carousel-item">
					<img src="/img/doc6.jpg" alt="New York" width="1100" height="500">
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a> <a class="carousel-control-next" href="#myCarousel"
				data-slide="next"> <span class="carousel-control-next-icon"></span>
			</a>
		</div>
	</div>
	<div class="container" id="cont1">
		<div class="row">
			<div class="col-md-4" id="subcont1" class="class1">
				<h2>
					<strong>0-180-4014-398</strong>
				</h2>
				<h4>EMERGENCY SERVICES</h4>
				<p style="color: #666">Online medical consultation (OMC) is the
					term utilized as a part of this paper to allude to web-based remote
					patient-specialist (consumer-provider) medicinal discussions.1 With
					the approach of broadband and video conferencing, numerous people
					have swung to online web-portals to get an online consultation.
					Utilization of</p>
				<input type="button" value="SEE MORE" class="inp1">
			</div>
			<div class="col-md-4" id="subcont2" class="class1">
				<h3>
					<strong>About us</strong>
				</h3>
				<h4>DO YOU WANT TO MAKE AN APPOINTMENT</h4>
				<p style="color: #666">The aim of this review article is to
					explore the possible reasons behind the beginning of a new era of
					consultation, which is online medical consultation. It examines
					features and themes evident in the literature.</p>
				<input type="button" value="BOOK NOW" class="inp1">
			</div>
			<div class="col-md-4" id="subcont3" class="class1">
				<h3>
					<strong>Services</strong>
				</h3>
				<p style="color: #666">Our specialists top priority is you.
					Which means you get the answers and assurance you deserve with
					accuracy you can trust.
				<h2>Start a case</h2>
				Submit your request online, in the Best Doctors mobile app, or by
				calling 1-866-904-0910.
				<h2>Access expert guidance</h2>
				Your advocate clinician is with you every step of the way,
				coordinating your review by a team of specialists.
				</p>
				<input type="button" value="CONTACT US" class="inp1">
			</div>
		</div>
	</div>
	<br>
	<div class="container nxtMainCont">
		<div class="row">
			<div class="col-md-6">
				<div class="row no-gutter">
					<div class="col-md-4 nxtSubCont">
						<img src="/img/doc7.jpg" width="80px" height="80px"><br>
						<br>
						<h4>PRESCRIPTIONS</h4>
						<p>The current study is a narrative review of published
							studies and articles.</p>
					</div>

					<div class="col-md-4 nxtSubCont">
						<img src="/img/doc8.jpg" width="80px" height="80px"><br>
						<br>
						<h4>MEDICAL DEVICE</h4>
						<p>While an average doctor visit costs between 1000 to 1500
							rupees.</p>
					</div>
					<div class="col-md-4 nxtSubCont">
						<img src="/img/doc9.jpg" width="80px" height="80px"><br>
						<br>
						<h4>CHOOSE DOCTOR</h4>
						<p> Some specialties essentially are not helpful to virtual
							care, such as physical therapy.</p>
						<br>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="row no-gutter">
					<div class="col-md-4 nxtSubCont">
						<img src="/img/doc10.png" width="80px"><br> <br>
						<h4>SITE ABOUT MEDICINE</h4>
						<p>Instead of stating a diagnosis online, a list of
							differential diagnosis can be suggested.</p>
					</div>
					<div class="col-md-4 nxtSubCont">
						<img src="/img/doc11.jpg" width="80px" height="90px"><br>
						<br>
						<h4>ONLINE CONSULTATION</h4>
						<p>Term utilized as a part of this paper to allude to
							web-based remote patient-specialist</p>
					</div>
					<div class="col-md-4 nxtSubCont">
						<img src="/img/doc12.jpg" width="80px" height="80px"><br>
						<br>
						<h4>APPOINTMENT</h4>
						<p>Patients may pick or be assigned to any specialist/general
							duty doctor who is online</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-xl-3 col-md-6">
				<div class="card bg-primary text-white mb-4">
					<div class="card-body">
						General Section <i class="fa fa-medkit" aria-hidden="true"></i>
					</div>
					<div class="card-footer d-flex align-items-center">
						<a class="small text-white stretched-link" href="/generalCheckUp">View
							Details</a>
						<div class="small text-white">&nbsp;&nbsp;&nbsp;></div>
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-md-6">
				<div class="card bg-warning text-white mb-4">
					<div class="card-body">
						Dental Section <i class="fas fa-tooth"></i>
					</div>
					<div class="card-footer d-flex align-items-center">
						<a class="small text-white stretched-link" href="/dentalCheckUp">View
							Details</a>
						<div class="small text-white">&nbsp;&nbsp;&nbsp;></div>
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-md-6">
				<div class="card bg-success text-white mb-4">
					<div class="card-body">
						Surgeon Section <i class="fas fa-diagnoses"></i>
					</div>
					<div class="card-footer d-flex align-items-center">
						<a class="small text-white stretched-link" href="#">View
							Details</a>
						<div class="small text-white">
							&nbsp;&nbsp;&nbsp;></i>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-md-6">
				<div class="card bg-danger text-white mb-4">
					<div class="card-body">
						Cardiac Section <i class="fa fa-heartbeat"></i>
					</div>
					<div class="card-footer d-flex align-items-center">
						<a class="small text-white stretched-link" href="#">View
							Details</a>
						<div class="small text-white">
							&nbsp;&nbsp;&nbsp;></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<!-- <table class="table table-dark table-hover">
				<thead class="thead-light">
					<tr>
						<th>Sr. No.</th>
						<th>First Name</th>
						<th>Second Name</th>
						<th>Email Address</th>
					</tr>
					<tr>
						<td>1</td>
						<td>Nitika</td>
						<td>Malik</td>
						<td>nitika123@gmail.com</td>
					</tr>
					<tr>
						<td>2</td>
						<td>Sneha</td>
						<td>Raghav</td>
						<td>snehragh1v1998@gmail.com</td>
					</tr>
					<tr>
						<td>3</td>
						<td>Nishant</td>
						<td>Raghav</td>
						<td>nishant420@gmail.com</td>
					</tr>
					<tr>
						<td>4</td>
						<td>Gaurav</td>
						<td>Sachdeva</td>
						<td>sachdeva.arav234@gmail.com</td>
					</tr>
					<tr>
						<td>5</td>
						<td>Prashant</td>
						<td>Raghav</td>
						<td>prashantraghav987@gmail.com</td>
					</tr>
				</thead>
			</table> -->

		</div>
		<center>
			<a class="btn btn-info" href="/register" role="button"><b>Lets
					Get Registered&rarr;</b></a>
		</center>
		<br>
	</div>
	<p style="color: white">here..</p>
</body>
</html>