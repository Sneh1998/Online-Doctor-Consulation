<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IF=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<title>Login Page</title>
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />

<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/doc3(login).css">
 <link href="/css/font-awesome.css" rel="stylesheet">
 <style>
 .fa {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: 35px;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
<link
	href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700"
	rel="stylesheet">
<link
	href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700"
	rel="stylesheet">
	
#myModal, .modal-body {
	background: rgba(0, 0, 0, .5) !important;
}
#home{
	background-color:grey;
}
.fa {
	display: inline-block;
	font: normal normal normal 14px/1 FontAwesome;
	font-size: inherit;
	text-rendering: auto;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}
body{
	background: url('/img/welcome1.jpg') no-repeat !important;
	 background-size: cover !important;
}
 </style>
 
</head>
<body class="text-center"
	style="background: url('/img/doc18.jpg') no-repeat; background-size: cover;">
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
											<li><a href="/login">Log In</a></li>
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

	<div class="loginbox">
		<h1>
			<b>Login</b><img src="/img/doc3.png" style="width: 70px; border-radius: 20px;">
		</h1>
		<h5>Enter your details to continue..</h5>
		<form enctype="application/json" method="get" action="/validLogin">
			<i class="fa fa-user" aria-hidden="true"></i> <input
				type="email" name="email" placeholder="Enter email here"><br><br>
			<i class="fa fa-lock"></i> <input
				type="password" name="password" placeholder="Enter password here"><br>
			
			<button class="btn" type="submit" >Login Here</button>
		</form>
		<br>
		<p>
			Don't have an account? <a href="/register"><b>Signup here</b></a>
		</p>
	</div>


</body>
</html>