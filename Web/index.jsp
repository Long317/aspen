<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
   <%@ taglib prefix="s" uri="/struts-tags" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
	<title>Hoticket | Welcome...</title>

	<!-- Meta -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Favicon -->
	<link rel="shortcut icon" href="favicon.ico">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,600,700' rel='stylesheet' type='text/css'>
	<!-- CSS Global Compulsory -->
	<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/style.css">

	<!-- CSS Implementing Plugins -->
	<link rel="stylesheet" href="assets/plugins/line-icons/line-icons.css">
	<link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/plugins/flexslider/flexslider.css">  
	<link rel="stylesheet" href="assets/plugins/parallax-slider/css/parallax-slider.css">

	    <!-- CSS Page Style -->    
    <link rel="stylesheet" href="assets/css/pages/page_log_reg_v2.css">    

	<!-- CSS Theme -->    
	<link rel="stylesheet" href="assets/css/theme-colors/dark-red.css">

		<!-- Owl Carousel Assets -->
	<link href="owl-carousel/owl.carousel.css" rel="stylesheet">
	<link href="owl-carousel/owl.theme.css" rel="stylesheet">
		

	<!-- Prettify -->
	<link href="assets/js/google-code-prettify/prettify.css" rel="stylesheet">

		<!-- CSS Customization -->
	<link rel="stylesheet" href="assets/css/custom.css">

	<style>
	  .movieCarousel_img{
                width:200px;
                height:270px;          
            }
      .movieCarousel_img img{
                width:180px;
                height:270px;
            }
       .movieCarousel_item{
       	height:320px;
       	 width:200px;
       }
       .movieTitle{
  		  white-space: nowrap; 
  		  width: 12em; 
  		  overflow: hidden;
  		  text-overflow: ellipsis; 
		}
	</style>
</head>	

<body>
<div class="wrapper">
	 <%@ include file="header.jsp" %>
		  <!--Movie Gallary -->
	  
	  <div id="movieGallary">
		<div class="container">
			<div id="GallaryHeader">
				 <div class="headline"> <h2>Top Movies </h2></div>
			 </div> 
		  <div class="row">
			<div class="col-xs-12">
			  <div id="owl-demo" class="owl-carousel">
			  	<c:forEach items="${sessionScope.movieCarousel}" var="movie">
				 <div class="item thumbnail  thumbnail-kenburn movieCarousel_item">
					 <div class="thumbnail-img movieCarousel_img"> 
					 	<a href = "movie?movie.id=<c:out value='${movie.id}'/>">
							<div class="overflow-hidden"> 
								<img class="lazyOwl img-responsive" data-src="<c:out value='${movie.img_url}'/>" alt="Lazy Owl Image">
							</div>
						</a>
					 </div>
					<div class="caption">
					 <div class="movieTitle" onmouseover="showText(this);"><c:out value='${movie.name}'/></div>
				   </div>
				 </div>
				</c:forEach>
			  </div>

			</div>
		  </div>
		</div>
	</div> 
		<!--=== Slider ===-->
	<div class="slider-inner">
		<div id="da-slider" class="da-slider">
			<div class="da-slide">
				<h2><i>Fifty shades of grey</i> <br /> <i>Dakota Johnson</i> <br /> <i> 
Jamie Dornan</i></h2>
				<p><i>The most sexy movie</i> <br /> <i>show time in valentine's day</i> <br /> <i>Coming soon</i></p>
				<div class="da-img"><img class="img-responsive" src="assets/plugins/parallax-slider/img/1.png" alt=""></div>
			</div>
			<div class="da-slide">
				<h2><i>high rated movie</i> <br /> <i>This week</i> <br /> <i>Take the adventure</i></h2>
				<p><i>Director: Matthew Vaughn</i> <br /> <i>starts:  Colin Firth, Taron Egerton</i></p>
				<div class="da-img">
					<iframe src="https://www.youtube.com/embed/jJXBRaoWDbg" width="530" height="300" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe> 
				</div>
			</div>
			<div class="da-slide">
				<h2><i>USING BEST WEB</i> <br /> <i>SOLUTIONS WITH</i> <br /> <i>HTML5/CSS3</i></h2>
				<p><i>Lorem ipsum dolor amet</i> <br /> <i>tempor incididunt ut</i> <br /> <i>veniam omnis </i></p>
				<div class="da-img"><img src="assets/plugins/parallax-slider/img/html5andcss3.png" alt="image01" /></div>
			</div>
			<div class="da-arrows">
				<span class="da-arrows-prev"></span>
				<span class="da-arrows-next"></span>        
			</div>
		</div>
	</div><!--/slider-->
	<!--=== End Slider ===-->
	<!--=== Content Part ===-->
	<div class="container content">	
		<!-- spotlight-->
	   <div id="spotlight">
			<div class="headline"><h2>SPOTLIGHT</h2></div> 
			<div class="row no-gutters">
				<div class = "col-md-6">
					<div class="item thumbnail-kenburn">
						   <div class="thumbnail-img"> 
							 <div class="overflow-hidden">
					<img src="assets/img/spotlight/Frozen.jpg" alt="" width="100%">
				</div>
			</div>
			</div>
				</div>
				<div class = "col-md-3">
					   <div class="item thumbnail-kenburn">
						   <div class="thumbnail-img"> 
							 <div class="overflow-hidden">
					<img src="assets/img/spotlight/Great-Gatsby.jpg" alt="" width="100%">
				</div>
				   </div>
			</div>
			</div>
				<div class = "col-md-3">
					   <div class="item thumbnail-kenburn">
						   <div class="thumbnail-img"> 
							 <div class="overflow-hidden">
					<img src="assets/img/spotlight/Despicable-Me-2.jpg" alt="" width="100%">
				</div>
				   </div>
			</div>
			</div>
				<div class = "col-md-3">
					   <div class="item thumbnail-kenburn">
						   <div class="thumbnail-img"> 
							 <div class="overflow-hidden">
					<img src="assets/img/spotlight/Star-Trek-Darkness.jpg" alt="" width="100%">
				</div>
				   </div>
			</div>
			</div>
				<div class = "col-md-3">
					   <div class="item thumbnail-kenburn">
						   <div class="thumbnail-img"> 
							 <div class="overflow-hidden">
								<a href="http://www.popsugar.com.au/celebrity/photo-gallery/33536866/image/33536854/Wind-RisesOne">
					<img src="assets/img/spotlight/Oscars-2014-What-Each-Movie-Nominated.jpg" alt="" width="100%">
				</a>
				</div>
			</div>
			   </div>
			</div>
			</div>
	   </div>
		<!-- End spotlight  -->
		<br/>
		  <br/>
		   <!-- buzz-->
	   <div id="buzz">
			<div class="headline"><h2>BUZZ</h2></div> 
			<div class="row no-gutters">
				<div class = "col-md-4">
					<div class="item thumbnail-kenburn">
						   <div class="thumbnail-img"> 
							 <div class="overflow-hidden">
					<img src="assets/img/buzz/actor3.jpg" alt="" width="100%">
				</div>
			</div>
			</div>
				</div>
				<div class = "col-md-4">
					   <div class="item thumbnail-kenburn">
						   <div class="thumbnail-img"> 
							 <div class="overflow-hidden">
					<img src="assets/img/buzz/actor1.jpg" alt="" width="100%">
				</div>
				   </div>
			</div>
			</div>
				<div class = "col-md-4">
					   <div class="item thumbnail-kenburn">
						   <div class="thumbnail-img"> 
							 <div class="overflow-hidden">
					<img src="assets/img/buzz/actor2.jpg" alt="" width="100%">
				</div>
				   </div>
			</div>
			</div>
			 
				<div class = "col-md-4">
					   <div class="item thumbnail-kenburn">
						   <div class="thumbnail-img"> 
							 <div class="overflow-hidden">
								<a href="http://www.popsugar.com.au/celebrity/photo-gallery/33536866/image/33536854/Wind-RisesOne">
					<img src="assets/img/buzz/actor5.jpg" alt="" width="100%">
				</a>
				</div>
			</div>
			   </div>
			</div>
			</div>
	   </div>
		<!-- End buzz  -->

		<!-- Info Blokcs -->
	
		<!-- End Info Blokcs -->
			  <br/>
		<!-- Our Partners -->
		<div id="clients-flexslider" class="flexslider home clients">
			<div class="headline"><h2>Our Partners</h2></div>    
			<ul class="slides">
				<li>
					<a href="#">
						<img src="assets/img/partners/ALAMO_grey.png" alt=""> 
						<img src="assets/img/partners/ALAMO.png" class="color-img" alt="">
					</a>
				</li>
				<li>
					<a href="#">
						<img src="assets/img/partners/AMC_grey.png" alt=""> 
						<img src="assets/img/partners/AMC.png" class="color-img" alt="">
					</a>
				</li>
				<li>
					<a href="#">
						<img src="assets/img/partners/city_dase_grey.png" alt=""> 
						<img src="assets/img/partners/city_dase.png" class="color-img" alt="">
					</a>
				</li>
				<li>
					<a href="#">
						<img src="assets/img/partners/dispson_grey.png" alt=""> 
						<img src="assets/img/partners/dispson.png" class="color-img" alt="">
					</a>
				</li>
				<li>
					<a href="#">
						<img src="assets/img/partners/flagship_cinema_grey.png" alt=""> 
						<img src="assets/img/partners/flagship_cinema.png" class="color-img" alt="">
					</a>
				</li>
				<li>
					<a href="#">
						<img src="assets/img/partners/frank-theatres_grey.png" alt=""> 
						<img src="assets/img/partners/frank-theatres.png" class="color-img" alt="">
					</a>
				</li>
				<li>
					<a href="#">
						<img src="assets/img/partners/landmark_grey.png" alt=""> 
						<img src="assets/img/partners/landmark.png" class="color-img" alt="">
					</a>
				</li>
				<li>
					<a href="#">
						<img src="assets/img/partners/maya_cinemas_grey.png" alt=""> 
						<img src="assets/img/partners/maya_cinemas.png" class="color-img" alt="">
					</a>
				</li>
				<li>
					<a href="#">
						<img src="assets/img/partners/regal_grey.png" alt=""> 
						<img src="assets/img/partners/regal.png" class="color-img" alt="">
					</a>
				</li>
				<li>
					<a href="#">
						<img src="assets/img/partners/carmike_grey.png" alt=""> 
						<img src="assets/img/partners/carmike.png" class="color-img" alt="">
					</a>
				</li>
			</ul>
		</div><!--/flexslider-->
		<!-- End Our Clients -->
	</div><!--/container-->		
	<!-- End Content Part -->
	<%@ include file="footer.jsp" %>
</div><!--/wrapper-->

<!-- JS Global Compulsory -->
<script type="text/javascript" src="assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>

<!-- JS Implementing Plugins -->
<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="assets/plugins/flexslider/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="assets/plugins/parallax-slider/js/modernizr.js"></script>
<script type="text/javascript" src="assets/plugins/parallax-slider/js/jquery.cslider.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="assets/js/custom.js"></script>
<!-- JS Page Level -->           
<script type="text/javascript" src="assets/js/app.js"></script>
<script type="text/javascript" src="assets/js/plugins/parallax-slider.js"></script>


	<script src="owl-carousel/owl.carousel.js"></script>
	   <script src="assets/js/bootstrap-collapse.js"></script>
	<script src="assets/js/bootstrap-transition.js"></script>
	<script src="assets/js/bootstrap-tab.js"></script>

	<script src="assets/js/google-code-prettify/prettify.js"></script>
	  <script src="assets/js/application.js"></script>

	  <link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

<script type="text/javascript">
	  function showText(txt){
  	txt.className = "";
  }
	//sliders starter
	jQuery(document).ready(function() {
		App.init();
		App.initSliders();      
		ParallaxSlider.initParallaxSlider();
	});
	   $(document).ready(function() {
	   	//owl-demo starter
	  $("#owl-demo").owlCarousel({
		items : 6,
		lazyLoad : true,
	 autoPlay: 2000,
	   stopOnHover: true
	  });
	});

	//geolocator function
	function geoLocationUpdate(){
			//send ajax to get geolocation
  		var xmlhttp = new XMLHttpRequest();
        var url = "aspen/geolocator?clientIP="+myip;
        xmlhttp.open("GET", url, true);
        xmlhttp.send();
        //onstate change function
          xmlhttp.onreadystatechange  = function(){
		     if (xmlhttp.readyState == 4  ) {
		       // Javascript function JSON.parse to parse JSON data
		       var jsonArray = JSON.parse(xmlhttp.responseText);
		       //change popular city data to close theatre data
		       var elements = document.getElementsByClassName('location');
		       for (i = 0; i < elements.length; i++) { 
		       		if (i<jsonArray.length-1){
  					elements[i].innerHTML  = jsonArray[i].name +"<br>"+jsonArray[i].addr;
  					elements[i].href="theatre?theatre.id="+jsonArray[i].id;
  					}else{
  						elements[i].remove();
  						i--;
  					}
				}
				//set cookie to browswer
			//	document.cookie="geoPermission=ok";
				//set user info to browswer
				//document.cookie="geoPermission="+elements[jsonArray.length-1].ip;
				//document.cookie="geoPermission="+elements[jsonArray.length-1].zip;
		     }
		 }

	}
</script>
<!--Geo locator code-->
  <s:if test="#session.user_geo_status=='first_visit'"> 
  <script>
   $(document).ready(function() {
   	var result = confirm("Do you allow to use your location?");
  	if (result){
  		geoLocationUpdate();
  	}//ajax to tell server user not allow to use his location data
  	else{
  		var XMLHttpReq = new XMLHttpRequest();
        var url = "aspen/geodecline";
        XMLHttpReq.open("GET", url, true);
        XMLHttpReq.send();
        //set cookie to browswer
		//document.cookie="geoPermission=decline";
  	}
});
  </script>
  </s:if>
   <s:if test="#session.user_geo_status=='ok'"> 
    <script>
       $(document).ready(function() {
       	geoLocationUpdate();
       	});
      </script>
     </s:if>
<!--[if lt IE 9]>
	<script src="assets/plugins/respond.js"></script>
	<script src="assets/plugins/html5shiv.js"></script>
	<script src="assets/js/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>
</html>