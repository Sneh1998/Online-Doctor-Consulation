<!--
Author: w
Author URL: http://w.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<!DOCTYPE html>
<html lang="zxx">

<head>
<title>MedOnLine</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8" />
<meta name="keywords"
	content="MedOnline Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script src="/js/fontAwesome_kit.js"></script>
<script src="/js/jquery.min.js"></script>
<script src="/js/bootstrap.min.js"></script>

<script>
	addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);

	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
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

<style>
#home, #gallery {
	background-color: grey;
}

#services {
	background-color: #221144;
}

#service_head {
	color: white;
}

.service_subHead {
	color: white;
}
</style>

<!-- js fontAwesome file -->

</head>

<body>

	<!-- mian-content -->
	<div class="main-w-header-sec inner" id="home">
		<div class="overlay inner">
			<!-- header -->
			<header>
				<div class="container">
					<div
						class="header d-lg-flex justify-content-between align-items-center">
						<div class="header-section">
							<h1>
								<a class="navbar-brand logo editContent" href="index.html">
									<span class="fa fa-meetup"></span>edOnline
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
									<li><a href="/aboutUs">About </a></li>
									<li>
										<!-- First Tier Drop Down --> <label for="drop-2"
										class="toggle">Dropdown <span class="fa fa-angle-down"
											aria-hidden="true"></span>
									</label> <a href="#">Facilities <span class="fa fa-angle-down"
											aria-hidden="true"></span></a> <input type="checkbox" id="drop-2" />
										<ul class="inner-dropdown">
											<li><a href="#fields">Our fields</a></li>
											<li><a href="#departments">Departments</a></li>

										</ul>
									</li>
									<li class="active"><a href="/fields">Fields</a></li>
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
	<!-- //header -->

	<!-- /breadcrumb -->
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="/">Home</a></li>
		<li class="breadcrumb-item active">Fields</li>
	</ol>
	<!-- //breadcrumb -->
	<div class="container">
		<h2>Welcome ${name}</h2>
		<p>Here are some fields that will help you to make choice as per
			yours.</p>
	</div>

	<!-- /fields -->
	<section class="banner-bottom py-5" id="services">
		<div class="header-w text-center mb-5">
			<h3 class="title-w3pvt mb-5" id="service_head">Services &
				Fields</h3>
		</div>
		<div class="container-fluid inner-sec-w3ls" id="fields">
			<div class="feature-grids row text-center">
				<div class="col-lg-4 gd-bottom one">
					<a href="/generalCheckUp">
						<div class="bottom-gd">
							<span class="fas fa-male" aria-hidden="true"> </span><span
								class="fas fa-female" aria-hidden="true"></span>
							<h3 class="mb-2" style="color: white">General CheckUp</h3>
							<p>Better treatment of broken bones and fractures.</p>
						</div>
					</a>
				</div>
				<div class="col-lg-4 gd-bottom">
					<a href="/dentalCheckUp">
						<div class="bottom-gd">
							<span class="fas fa-tooth"></span>
							<h3 class="mb-2" style="color: white">Dental CheckUp</h3>
							<p>Dental checkup with microscopic and analytical devices.</p>

						</div>
					</a>
				</div>
				<div class="col-lg-4 gd-bottom">
					<a href="/brainCheckUp">
						<div class="bottom-gd">
							<span class="fas fa-brain"></span>
							<h3 class="mb-2" style="color: white">Brain & Neurology</h3>
							<p>Primary care physicians & neurological specialists works
								here.</p>
						</div>
					</a>
				</div>
			</div>
			<br>
			<div class="feature-grids row text-center">
				<div class="col-lg-4 gd-bottom one">
					<a href="/stomachSection">
						<div class="bottom-gd">
							<span class="fas fa-shield-virus"></span>
							<h3 class="mb-2" style="color: white">Stomach Section</h3>
							<p>Related to Stomach Disease and Liver Problems.</p>
						</div>
					</a>
				</div>
				<div class="col-lg-4 gd-bottom">
					<a href="/medicineSection">
						<div class="bottom-gd">
							<span class="fas fa-pills"></span>
							<h3 class="mb-2" style="color: white">Best Medicines Advice</h3>
							<p>Get best medicines advices related to a particular
								problem.</p>

						</div>
					</a>
				</div>
				<div class="col-lg-4 gd-bottom">
					<a href="/cardiacSection">
						<div class="bottom-gd">
							<span class="fas fa-heartbeat"></span>
							<h3 class="mb-2" style="color: white">Cardiac Problems</h3>
							<p>Best treatment for all kinds of heart problems.</p>
						</div>
					</a>
				</div>
			</div>
		</div>
	</section>

	<!-- //fields -->

	<!--/banner-bottom -->
	<section class="banner-bottom py-5" id="gallery">
		<div class="container py-md-5" id="departments">
			<div class="header-w text-center mb-5">
				<h3 class="title-w3pvt mb-5">Our Departments</h3>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-4 col-sm-6 gal-img">
					<a href="#gal1"><img src="img/g1.jpg" alt="MedOnline"
						class="img-fluid mt-4"></a>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 gal-img">
					<a href="#gal2"><img src="img/g2.jpg" alt="MedOnline"
						class="img-fluid mt-4"></a>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 gal-img">
					<a href="#gal3"><img src="img/g3.jpg" alt="MedOnline"
						class="img-fluid mt-4"></a>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 gal-img">
					<a href="#gal4"><img src="img/g4.jpg" alt="MedOnline"
						class="img-fluid mt-4"></a>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 gal-img">
					<a href="#gal5"><img src="img/g5.jpg" alt="MedOnline"
						class="img-fluid mt-4"></a>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 gal-img">
					<a href="#gal6"><img src="img/g6.jpg" alt="MedOnline"
						class="img-fluid mt-4"></a>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 gal-img">
					<a href="#gal7"><img src="img/g7.jpg" alt="MedOnline"
						class="img-fluid mt-4"></a>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 gal-img">
					<a href="#gal8	"><img src="img/banner4.jpg" alt="MedOnline"
						class="img-fluid mt-4"></a>
				</div>
			</div>
			<!-- gallery popups -->
			<!-- popup-->
			<div id="gal1" class="popup-effect">
				<div class="popup">
					<img src="img/g1.jpg" alt="Popup image" class="img-fluid mt-4" />
					<a class="close" href="#gallery">&times;</a>
				</div>
			</div>
			<!-- //popup -->
			<!-- popup-->
			<div id="gal2" class="popup-effect">
				<div class="popup">
					<img src="img/g2.jpg" alt="Popup image" class="img-fluid mt-4" />
					<a class="close" href="#gallery">&times;</a>
				</div>
			</div>
			<!-- //popup -->
			<!-- popup-->
			<div id="gal3" class="popup-effect">
				<div class="popup">
					<img src="img/g3.jpg" alt="Popup image" class="img-fluid mt-4" />
					<a class="close" href="#gallery">&times;</a>
				</div>
			</div>
			<!-- //popup -->
			<!-- popup-->
			<div id="gal4" class="popup-effect">
				<div class="popup">
					<img src="img/g4.jpg" alt="Popup image" class="img-fluid mt-4" />
					<a class="close" href="#gallery">&times;</a>
				</div>
			</div>
			<!-- //popup -->
			<!-- popup-->
			<div id="gal5" class="popup-effect">
				<div class="popup">
					<img src="img/g5.jpg" alt="Popup image" class="img-fluid mt-4" />
					<a class="close" href="#gallery">&times;</a>
				</div>
			</div>
			<!-- //popup -->
			<!-- popup-->
			<div id="gal6" class="popup-effect">
				<div class="popup">
					<img src="img/g6.jpg" alt="Popup image" class="img-fluid mt-4" />
					<a class="close" href="#gallery">&times;</a>
				</div>
			</div>
			<!-- //popup -->
			<!-- popup-->
			<div id="gal7" class="popup-effect">
				<div class="popup">
					<img src="img/g7.jpg" alt="Popup image" class="img-fluid mt-4" />
					<a class="close" href="#gallery">&times;</a>
				</div>
			</div>
			<!-- //popup -->
			<!-- popup-->
			<div id="gal8" class="popup-effect">
				<div class="popup">
					<img src="img/banner4.jpg" alt="Popup image" class="img-fluid mt-4" />
					<a class="close" href="#gallery">&times;</a>
				</div>
			</div>
			<!-- //popup -->
			<!-- //gallery popups -->

		</div>
	</section>
	<!-- //banner-bottom -->

	<!-- footer -->
	<footer>
		<div class="container">
			<div class="row footer-top">
				<div class="col-lg-4 footer-grid_section_w">
					<h2 class="logo-2 mb-lg-4 mb-3">
						<a href="index.html"><span class="fa fa-meetup"></span>edOnline</a>
					</h2>
					<p>Online Doctor Consultation Website. We help people by direct
						providing them our services at home.</p>
					<h4 class="sub-con-fo ad-info my-4">Catch on Social</h4>
					<ul class="w_social_list list-unstyled">
						<li><a href="#" class="w3pvt_facebook"> <span
								class="fa fa-facebook-f"></span>
						</a></li>
						<li class="mx-2"><a href="#" class="w3pvt_twitter"> <span
								class="fa fa-twitter"></span>
						</a></li>
						<li><a href="#" class="w3pvt_dribble"> <span
								class="fa fa-dribbble"></span>
						</a></li>
						<li class="ml-2"><a href="#" class="w3pvt_google"> <span
								class="fa fa-google-plus"></span>
						</a></li>
					</ul>
				</div>
				<div class="col-lg-8 footer-right">
					<div class="w-news-letter">
						<h3 class="footer-title mb-lg-4 mb-3">Newsletter</h3>

						<p>By subscribing to our mailing list you will always get
							latest news and updates from us.</p>
						<form action="#" method="post" class="w-newsletter">
							<input type="email" name="Email"
								placeholder="Enter your email..." required="">
							<button class="btn1">
								<span class="fa fa-paper-plane-o" aria-hidden="true"></span>
							</button>

						</form>
					</div>
					<div class="row mt-lg-4 bottom-w-sec-nav mx-0">
						<div class="col-md-4 footer-grid_section_w">
							<h3 class="footer-title mb-lg-4 mb-3">Information</h3>
							<ul class="list-unstyled w-icons">
								<li><a href="index.html">Home</a></li>
								<li class="mt-3"><a href="about.html">About Us</a></li>
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
									<li class="mt-3"><a href="#">Privacy Plolicy</a></li>
								</ul>
							</div>
							<!-- social icons -->
						</div>
						<div class="col-md-4 footer-grid_section_w my-md-0 my-5">
							<h3 class="footer-title mb-lg-4 mb-3">Contact Info</h3>
							<div class="contact-info">
								<div class="footer-address-inf">
									<h4 class="ad-info mb-2">Phone</h4>
									<p>+90 7419203729</p>
								</div>
								<div class="footer-address-inf my-4">
									<h4 class="ad-info mb-2">Email</h4>
									<p>
										<a href="mailto:snehraghav1998@gmail.com">snehraghav1998@gmail.com</a>
									</p>
								</div>
								<div class="footer-address-inf">
									<h4 class="ad-info mb-2">Location</h4>
									<p>Panipat, Haryana</p>
								</div>
							</div>
						</div>


					</div>

				</div>
			</div>
		</div>
	</footer>
	<!-- //footer -->
	<div class="cpy-right py-3">
		<div class="container">
			<div class="row">
				<p class="col-md-10 text-left">
					© 2019 MedOnline. All rights reserved | Design by <a
						href="http://w.com"> w.</a>
				</p>
				<!-- move top icon -->
				<a href="#home" class="move-top text-lg-right text-center col-md-2"><span
					class="fa fa-angle-double-up" aria-hidden="true"></span></a>
				<!-- //move top icon -->
			</div>
		</div>

	</div>



</body>

</html>
