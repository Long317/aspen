<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
    <%@ taglib prefix="s" uri="/struts-tags" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html lang="en">
<!--<![endif]-->
<head>
<title>Hoticket | Welcome...</title>

<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,600,700'
	rel='stylesheet' type='text/css'>
<!-- CSS Global Compulsory -->
<link rel="stylesheet"
	href="assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/style.css">

<!--google plus share-->
<script src="https://apis.google.com/js/platform.js" async defer></script>

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
      .show_data{
      	position:relative;
		left:30px;
      }
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
       #theatre_header{
      position:relative;
		left:30px;
       }
       .btn-delete{
       	position:relative;
       	bottom: 12px;
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
				<s:set var="isFAV"  value="%{'no'}"/>
				<s:if test="#session.login!=null">		
				<!--=== test if any customer's favorite movies match this movie ===-->	
				<s:iterator var="m" value="#session.login.favorite_movies">
  	            <s:if test="#m.name==#session.SEARCH_MOVIE.name">
  	            <s:set var="isFAV" value="%{'yes'}"/>
  	            </s:if>
                </s:iterator>				
				</s:if>
				<s:if test="#session.login==null">
				<!--=== no button needed ===-->
				</s:if>
				<s:elseif test="#isFAV=='no'">
     		    <form action="addfavmov">
			    <button type="submit" class="btn-u btn-u-default float-shadow ">Add it to Your Favorite Movie</button>
			    </form>
				</s:elseif>
				<s:elseif test="#isFAV=='yes'">
				<form action="delefavmov">
			    <button type="submit" class="btn-u btn-u-default float-shadow">Delete it from Your Favorite Movie</button>
			    </form>
				</s:elseif>
								<!-- Place this tag where you want the +1 button to render. -->
				<a href="https://plus.google.com/share?url='<s:property value='#session.SEARCH_MOVIE.img_url' />'" onclick="javascript:window.open(this.href,
				  '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;"><img
				  src="https://www.gstatic.com/images/icons/gplus-32.png" alt="Share on Google+"/></a>
			</div>

			<div class="row">
				<!-- movie information -->
				<div class="col-xs-2">
					<div id="movieImg">
						<img src=<s:property value="#session.SEARCH_MOVIE.img_url" />>
					</div>
					<!--If user has default theatre-->
					<s:if test="#session.default_theatre!=null">
					<br/>
					<h4 id="theatre_header"><a href="theatre?theatre.id=<s:property value='#session.default_theatre.id' />">
						<s:property value="#session.default_theatre.name" /></a></h4>
					<c:set var="movie_id" value="${sessionScope.SEARCH_MOVIE.id}" />
					<c:set var="counter" value="${0}" />
						<table class="table table-bordered show_data" >
						 <tr>
						 	<c:forEach items="${sessionScope.default_theatre.showing}" var="showing" varStatus="status">
					 	    <c:if test="${showing.movie.id==movie_id}"> 
					 	    <c:set var="start_time_full" value="${showing.start_time}"/>
					 	    <c:set var="start_time" value="${fn:substring(start_time_full, 0, 5)}" />
					 	    	<!--add td every 4 tickets-->
					 	    	 <c:if test="${counter % 4 ==0}">
					 	    	 <td>
					 	    	 </c:if> 
                  	 			<button class="btn btn-default"><a href="ticket?showing.id=<c:out value='${showing.id}'/>">
                  	 			<c:out value="${start_time}"/></a></button>
                  	 			<!--add td every 4 tickets-->
					 	    	 <c:if test="${counter % 4 ==3}">
					 	    	 </td>
					 	    	 </c:if>
					 	    	 <c:set var="counter" value="${counter+1}" />
                  	 		</c:if>
                    	    </c:forEach>
                    	  </tr>
                       </table>
					</s:if>
					<!--If user doesn't have default theatre-->
					<s:if test="#session.default_theatre==null">
					<input id="theaterSearch" type="text" class="form-control"
						placeholder="Enter ZIP Code or theater"> <span
						class="input-group-btn">
						<button class="btn-u" id="theaterSearchGo" type="button">Go</button>
					</span>
					<h2 id="ShowTimeStatus">Show time is not Available yet!</h2>
					</s:if>
					<!--user default theatre don't have this movie-->
					<c:if test="${counter ==0}">
					<input id="theaterSearch" type="text" class="form-control"
						placeholder="Enter ZIP Code or theater"> 
						<span class="input-group-btn">
						<button class="btn-u" id="theaterSearchGo" type="button">Go</button>
					</span>
					<h2 id="ShowTimeStatus">Show time is not Available yet!</h2>
					</c:if>
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
							allowfullscreen>
							 </iframe>
					</div>
				</div>
				<!--end of movie trailer -->
			</div>
			<hr>
			<!--Synopsis -->
			<div class="row" id="Synopsis-container">
				<div id="Synopsis-title">SYNOPSIS</div>
				<div id="Synopsis-content"><s:property value="#session.SEARCH_MOVIE.synopsis" /></div>
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
								<c:forEach items="${sessionScope.SEARCH_MOVIE.casts}" var="cast">
                                   <div class="item thumbnail  thumbnail-kenburn movieCarousel_item">
									<div class="thumbnail-img movieCarousel_img">
										<div class="overflow-hidden">
												<a href="<c:out value='${cast.info_url}'/>">
											<img class="lazyOwl img-responsive"
												data-src="<c:out value='${cast.img_url}'/>"
												alt="Lazy Owl Image">
										</div>
									</div>
								<div class="caption">
									<h3><c:out value="${cast.name}"/></h3>
								</div>
							</div>
						</c:forEach>
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
					<!-- Fan reviews -->
					<div class="row col-xs-12">
						<div class="panel panel-default">
							<div class="panel-heading overflow-h">
								<h2 class="panel-title heading-lg pull-left">FAN REVIEWS</h2>
								<a href="#"
									class="btn-u btn-brd btn-brd-hover btn-u-dark btn-u-xs pull-right">View
									All</a>
							</div>
							<div id="scrollbar" class="panel-body contentHolder">
							 <c:forEach items="${sessionScope.SEARCH_MOVIE.movie_ratings}" var="rating">
								<!--user profiles  -->
								<div class="profile-blog blog-border">
									<div class="col-lg-2">
										<div>Rate: <c:out value="${rating.rating_score}"/></div>
									</div>
								<div  class="col-lg-2">
									<div>by <c:out value="${rating.customer.user_name}"/> </div>
								</div>
									<div class="col-lg-7">
									<p><c:out value="${rating.comment}"/></p>
									</div>
									<div class="col-lg-1">
										<s:if test="#session.login.role>0"> 
											<form action = "deleteComment">
											 <input type="hidden" name="r.id" value="<c:out value='${rating.id}'/>">
											<button type="submit" onclick="return confirm('Are you sure you want to add the comment?');"
                                                name='submit'  class="btn btn-info btn-delete">Delete</button>
                                              </form>
										</s:if>   
									</div>
								</div>
							<!-- end of user profiles -->
							</c:forEach>
							</div>
						</div>
					</div>
					<!-- end of fan reviews -->
			</div>
			<!-- END OF MOVIE REVIEWS -->
			<s:if test="#session.login!= null">   
			<div class="row col-xs-8">
				<div class="headline">
					<h2>Add movie review</h2>
				</div>
			<form role="form" action="addComment">
				   <table class="table table-striped" >
				   	<tr class="success">
				   		<input type="hidden" name="r.movie.id" value="<s:property value='#session.SEARCH_MOVIE.id' />">
				   		<td>Rated Movie: </td><td><s:property value="#session.SEARCH_MOVIE.name" /></td>
				   	</tr>
				   	 <tr>
				   		<td>user_name:</td><td> 
				   		<input type="hidden" name="r.customer.id" value="<s:property value='#session.login.id' />">
				   		<s:property value="#session.login.user_name" /></td>
				   	</tr>
                    <tr class="success">
                        <td class="success">rate: </td>
                        <td class="success">
                        	<input type="radio" name="r.rating_score" value="1"> 1
							<input type="radio" name="r.rating_score" value="2"> 2
							<input type="radio" name="r.rating_score" value="3"> 3
							<input type="radio" name="r.rating_score" value="4"> 4
							<input type="radio" name="r.rating_score" value="5"> 5
                        </td>
                    </tr>
                    <tr><td>comments:</td>
                    	<td>
                    	<textarea rows="4" cols="20" placeholder="add your comment here." maxlength="490" name ="r.comment"></textarea></td>
                    </tr>
                    <tr>
                    	<td> <button type="submit" onclick="return confirm('Are you sure you want to add the comment?');"
                                                name='submit'  class="btn btn-info">Add</button>
                                            </td>
                    	<td></td>
                    </tr>
                </table>
			</form>
		  </div>
		</s:if>   
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

		  <link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

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
				items : 6,
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