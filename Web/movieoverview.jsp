<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
  <%@ taglib prefix="s" uri="/struts-tags" %>
<html lang="en">
<!--<![endif]-->
<head>
<title>Hoticket | Welcome...</title>

<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,600,700'
	rel='stylesheet' type='text/css'>
<!-- CSS Global Compulsory -->
<link rel="stylesheet"
	href="assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/style.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="assets/plugins/line-icons/line-icons.css">
<link rel="stylesheet"
	href="assets/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/plugins/flexslider/flexslider.css">
<link rel="stylesheet"
	href="assets/plugins/parallax-slider/css/parallax-slider.css">
<link rel="stylesheet"
	href="assets/plugins/sky-forms/version-2.0.1/css/custom-sky-forms.css">
<link rel="stylesheet"
	href="assets/plugins/scrollbar/src/perfect-scrollbar.css">

<!-- CSS Page Style -->
<link rel="stylesheet" href="assets/css/pages/profile.css">
<link rel="stylesheet" href="assets/css/pages/page_log_reg_v2.css">


<!-- CSS Theme -->
<link rel="stylesheet" href="assets/css/theme-colors/dark-red.css">

<!-- CSS Customization -->
<link rel="stylesheet" href="assets/css/custom.css">
<!-- Owl Carousel Assets -->
<link href="owl-carousel/owl.carousel.css" rel="stylesheet">
<link href="owl-carousel/owl.theme.css" rel="stylesheet">


<!-- Prettify -->
<link href="assets/js/google-code-prettify/prettify.css"
	rel="stylesheet">
  <style>
       #movieImg{
                width:166px;
                height:245px;          
            }
      #movieImg img{
                width:166px;
                height:245px;
            }
  </style>

</head>

<body>
	<div class="wrapper">
		<%@ include file="header.jsp"%>

		<!--=== Content Part ===-->
		<div class="container content">
			<div class="headline">
				<h2><s:property value="#session.SEARCH_MOVIE.name" /></h2>
			</div>

			<div class="row">
				<!-- movie information -->
				<div class="col-xs-2">
					<div id="movieImg">
						<img src=<s:property value="#session.SEARCH_MOVIE.img_url" />>
					</div>
					<input id="theaterSearch" type="text" class="form-control"
						placeholder="Enter ZIP Code or theater"> <span
						class="input-group-btn">
						<button class="btn-u" id="theaterSearchGo" type="button">Go</button>
					</span>
					<h2 id="ShowTimeStatus">Show time is not Available yet!</h2>
				</div>
				<div class="col-xs-2">
					<div class="movie-detail-container">
						<div class="movie-detail">
							<div class="row">
								<br />
								<div class="movie-detail-release-status">Released</div>
								<div class="movie-detail-release-date">February 13, 2015</div>
								<div class="movie-detail-release-date-note">R ,<s:property value="#session.SEARCH_MOVIE.length" /> mins</div>
								<div class="movie-genre"><s:property value="#session.SEARCH_MOVIE.genre" /></div>
								<div class="movie-rate">
									<img id="logo-header" src="assets/img/heart.png"> <img
										id="logo-header" src="assets/img/heart.png"> <img
										id="logo-header" src="assets/img/heart.png">
								</div>

								<br /> <br /> 
								<div>see it in</div>
								<div>IMAX</div>

							</div>
						</div>
					</div>

				</div>
				<!-- end of movie information -->
				<!-- movie trailer -->
				<div class="col-xs-8">
					<div id="trailer" class="trailer">
						<iframe width="600" height="366"
							src="https://www.youtube.com/embed/SfZWFDs0LxA" frameborder="0"
							allowfullscreen> </iframe>
					</div>
				</div>
				<!--end of movie trailer -->
			</div>
			<hr>
			<!--Synopsis -->
			<div class="row" id="Synopsis-container">
				<div id="Synopsis-title">SYNOPSIS</div>
				<div id="Synopsis-content">A veteran con man (Will Smith) is
					thrown off his game when his former lover and protege (Margot
					Robbie) unexpectedly appears and interferes with his latest -- and
					very dangerous -- scheme.</div>
				<a id="Synopsis-link" href="#">READ FULL SYNOPSIS</a>
			</div>
			<!--End of Synopsis -->
			<hr>
			<!--casts-->
			<div id="castGallary">
				<div id="GallaryHeader">
					<div class="headline">
						<h2>Movie Casts</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-12">

						<div id="owl-demo" class="owl-carousel">
							<div class="item thumbnail  thumbnail-kenburn">
								<div class="thumbnail-img">
									<div class="overflow-hidden">
										<img class="lazyOwl img-responsive"
											data-src="assets\img\casts\dakotajohnson.jpg"
											alt="Lazy Owl Image">
									</div>
								</div>
								<div class="caption">
									<h3>Dakota Johnson</h3>
								</div>
							</div>
							<div class="item thumbnail  thumbnail-kenburn">
								<div class="thumbnail-img">
									<div class="overflow-hidden">
										<img class="lazyOwl img-responsive"
											data-src="assets\img\casts\dakotajohnson.jpg"
											alt="Lazy Owl Image">
									</div>
								</div>
								<div class="caption">
									<h3>Dakota Johnson</h3>
								</div>
							</div>
							<div class="item thumbnail  thumbnail-kenburn">
								<div class="thumbnail-img">
									<div class="overflow-hidden">
										<img class="lazyOwl img-responsive"
											data-src="assets\img\casts\dakotajohnson.jpg"
											alt="Lazy Owl Image">
									</div>
								</div>
								<div class="caption">
									<h3>Dakota Johnson</h3>
								</div>
							</div>
							<div class="item thumbnail  thumbnail-kenburn">
								<div class="thumbnail-img">
									<div class="overflow-hidden">
										<img class="lazyOwl img-responsive"
											data-src="assets\img\casts\dakotajohnson.jpg"
											alt="Lazy Owl Image">
									</div>
								</div>
								<div class="caption">
									<h3>Dakota Johnson</h3>
								</div>
							</div>
							<div class="item thumbnail  thumbnail-kenburn">
								<div class="thumbnail-img">
									<div class="overflow-hidden">
										<img class="lazyOwl img-responsive"
											data-src="assets\img\casts\dakotajohnson.jpg"
											alt="Lazy Owl Image">
									</div>
								</div>
								<div class="caption">
									<h3>Dakota Johnson</h3>
								</div>
							</div>
							<div class="item thumbnail  thumbnail-kenburn">
								<div class="thumbnail-img">
									<div class="overflow-hidden">
										<img class="lazyOwl img-responsive"
											data-src="assets\img\casts\dakotajohnson.jpg"
											alt="Lazy Owl Image">
									</div>
								</div>
								<div class="caption">
									<h3>Dakota Johnson</h3>
								</div>
							</div>
							<div class="item thumbnail  thumbnail-kenburn">
								<div class="thumbnail-img">
									<div class="overflow-hidden">
										<img class="lazyOwl img-responsive"
											data-src="assets\img\casts\dakotajohnson.jpg"
											alt="Lazy Owl Image">
									</div>
								</div>
								<div class="caption">
									<h3>Dakota Johnson</h3>
								</div>
							</div>
							<div class="item thumbnail  thumbnail-kenburn">
								<div class="thumbnail-img">
									<div class="overflow-hidden">
										<img class="lazyOwl img-responsive"
											data-src="assets\img\casts\dakotajohnson.jpg"
											alt="Lazy Owl Image">
									</div>
								</div>
								<div class="caption">
									<h3>Dakota Johnson</h3>
								</div>
							</div>
							<div class="item thumbnail  thumbnail-kenburn">
								<div class="thumbnail-img">
									<div class="overflow-hidden">
										<img class="lazyOwl img-responsive"
											data-src="assets\img\casts\dakotajohnson.jpg"
											alt="Lazy Owl Image">
									</div>
								</div>
								<div class="caption">
									<h3>Dakota Johnson</h3>
								</div>
							</div>
							<div class="item thumbnail  thumbnail-kenburn">
								<div class="thumbnail-img">
									<div class="overflow-hidden">
										<img class="lazyOwl img-responsive"
											data-src="assets\img\casts\dakotajohnson.jpg"
											alt="Lazy Owl Image">
									</div>
								</div>
								<div class="caption">
									<h3>Dakota Johnson</h3>
								</div>
							</div>

						</div>

					</div>
				</div>
			</div>

			<!--end of casts-->
			<hr>
			<!-- MOVIE REVIEWS -->
			<div id="movie-reviews-container" class="profile container content">
				<div class="headline">
					<h2>Movie Review</h2>
				</div>
				<div class="row">
					<!--CRITIC RATINGS  -->
					<div class="col-xs-6">
						<div class="panel panel-default">
							<div class="panel-heading overflow-h">
								<h2 class="panel-title heading-lg pull-left">CRITIC RATINGS</h2>
								<a href="#"
									class="btn-u btn-brd btn-brd-hover btn-u-dark btn-u-xs pull-right">View
									All</a>
							</div>
							<div id="scrollbar" class="panel-body contentHolder">
								<!--user profiles  -->
								<div class="profile-blog blog-border">
									<img class="rounded-x"
										src="assets/img/testimonials/img1.jpg" alt="">
									<div class="name-location">
										<strong>Mikel Andrews</strong> <span><i
											class="fa fa-map-marker"></i><a href="#">California,</a> <a
											href="#">US</a></span>
									</div>
									<div class="clearfix margin-bottom-20"></div>
									<p>It is a good movie</p>
								</div>
									<div class="profile-blog blog-border">
									<img class="rounded-x profile-img"
										src="assets/img/testimonials/img1.jpg" alt="">
									<div class="name-location">
										<strong>Mikel Andrews</strong> <span><i
											class="fa fa-map-marker"></i><a href="#">California,</a> <a
											href="#">US</a></span>
									</div>
									<div class="clearfix margin-bottom-20"></div>
									<p>It is a good movie</p>
								</div>
									<div class="profile-blog blog-border">
									<img class="rounded-x profile-img"
										src="assets/img/testimonials/img1.jpg" alt="">
									<div class="name-location">
										<strong>Mikel Andrews</strong> <span><i
											class="fa fa-map-marker"></i><a href="#">California,</a> <a
											href="#">US</a></span>
									</div>
									<div class="clearfix margin-bottom-20"></div>
									<p>It is a good movie</p>
								</div>
							<!-- end of user profiles -->
							</div>
						</div>
					</div>
					<!-- end of Critics review -->
					<!-- Fan reviews -->
					<div class="col-xs-6">
						<div class="panel panel-default">
							<div class="panel-heading overflow-h">
								<h2 class="panel-title heading-lg pull-left">FAN REVIEWS</h2>
								<a href="#"
									class="btn-u btn-brd btn-brd-hover btn-u-dark btn-u-xs pull-right">View
									All</a>
							</div>
							<div id="scrollbar" class="panel-body contentHolder">
								<!--user profiles  -->
								<div class="profile-blog blog-border">
									<img class="rounded-x profile-img"
										src="assets/img/testimonials/img1.jpg" alt="">
									<div class="name-location">
										<strong>Mikel Andrews</strong> <span><i
											class="fa fa-map-marker"></i><a href="#">California,</a> <a
											href="#">US</a></span>
									</div>
									<div class="clearfix margin-bottom-20"></div>
									<p>It is a good movie</p>
								</div>
									<div class="profile-blog blog-border">
									<img class="rounded-x profile-img"
										src="assets/img/testimonials/img1.jpg" alt="">
									<div class="name-location">
										<strong>Mikel Andrews</strong> <span><i
											class="fa fa-map-marker"></i><a href="#">California,</a> <a
											href="#">US</a></span>
									</div>
									<div class="clearfix margin-bottom-20"></div>
									<p>It is a good movie</p>
								</div>
									<div class="profile-blog blog-border">
									<img class="rounded-x profile-img"
										src="assets/img/testimonials/img1.jpg" alt="">
									<div class="name-location">
										<strong>Mikel Andrews</strong> <span><i
											class="fa fa-map-marker"></i><a href="#">California,</a> <a
											href="#">US</a></span>
									</div>
									<div class="clearfix margin-bottom-20"></div>
									<p>It is a good movie</p>
								</div>
							<!-- end of user profiles -->
							</div>
						</div>
					</div>
					<!-- end of fan reviews -->
				</div>
			</div>
			<!-- END OF MOVIE REVIEWS -->
		</div>
		<!--/container-->
		<!-- End Content Part -->
	<%@ include file="footer.jsp"%>
	</div>
	<!--/wrapper-->

	<!-- JS Global Compulsory -->
	<script type="text/javascript"
		src="assets/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript"
		src="assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript"
		src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>

	<!-- JS Implementing Plugins -->
	<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
	<script type="text/javascript"
		src="assets/plugins/flexslider/jquery.flexslider-min.js"></script>
	<script type="text/javascript"
		src="assets/plugins/parallax-slider/js/modernizr.js"></script>
	<script type="text/javascript"
		src="assets/plugins/parallax-slider/js/jquery.cslider.js"></script>
	<!-- JS Customization -->
	<script type="text/javascript" src="assets/js/custom.js"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="assets/js/app.js"></script>
	<script type="text/javascript"
		src="assets/js/plugins/parallax-slider.js"></script>

	<!-- owl-carousel -->
	<script src="owl-carousel/owl.carousel.js"></script>
	<script src="assets/js/bootstrap-collapse.js"></script>
	<script src="assets/js/bootstrap-transition.js"></script>
	<script src="assets/js/bootstrap-tab.js"></script>
	<!-- app js -->
	<script src="assets/js/google-code-prettify/prettify.js"></script>
	<script src="assets/js/application.js"></script>
	<!-- Scrollbar -->
<script src="assets/plugins/scrollbar/src/jquery.mousewheel.js"></script>
<script src="assets/plugins/scrollbar/src/perfect-scrollbar.js"></script>

	
	<script type="text/javascript">
		jQuery(document).ready(function() {
			App.init();
			App.initSliders();
			ParallaxSlider.initParallaxSlider();
		});
		$(document).ready(function() {

			$("#owl-demo").owlCarousel({
				items : 8,
				lazyLoad : true,
				autoPlay : 2000,
				stopOnHover : true
			});

		});

		//scroll bar starter
		 jQuery(document).ready(function ($) {
		        "use strict";
		        $('.contentHolder').perfectScrollbar();
		    });
	</script>
	<!--[if lt IE 9]>
	<script src="assets/plugins/respond.js"></script>
	<script src="assets/plugins/html5shiv.js"></script>
	<script src="assets/js/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>
</html>