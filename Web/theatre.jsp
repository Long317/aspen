<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
   <%@ taglib prefix="s" uri="/struts-tags" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
   <jsp:useBean id="now" class="java.util.Date" />
   <c:set var="day2" value="<%=new java.util.Date (new java.util.Date().getTime() + 60*60*24*1000)%>"/>
	<c:set var="day3" value="<%=new java.util.Date(new java.util.Date().getTime() + 2*60*60*24*1000)%>"/>
   <c:set var="day4" value="<%=new java.util.Date(new java.util.Date().getTime() + 3*60*60*24*1000)%>"/>
   <c:set var="day5" value="<%=new java.util.Date(new java.util.Date().getTime() + 4*60*60*24*1000)%>"/>
   <c:set var="day6" value="<%=new java.util.Date(new java.util.Date().getTime() + 5*60*60*24*1000)%>"/>
   <c:set var="day7" value="<%=new java.util.Date(new java.util.Date().getTime() + 6*60*60*24*1000)%>"/> 
<fmt:formatDate value="${now}" pattern="EEE " var="today_day" />
<fmt:formatDate value="${now}" pattern="dd-MMM " var="today_date" />
<fmt:formatDate value="${day2}" pattern="EEE " var="day2_day" />
<fmt:formatDate value="${day2}" pattern="dd-MMM " var="day2_date" />
<fmt:formatDate value="${day3}" pattern="EEE " var="day3_day" />
<fmt:formatDate value="${day3}" pattern="dd-MMM " var="day3_date" />
<fmt:formatDate value="${day4}" pattern="EEE " var="day4_day" />
<fmt:formatDate value="${day4}" pattern="dd-MMM " var="day4_date" />
<fmt:formatDate value="${day5}" pattern="EEE " var="day5_day" />
<fmt:formatDate value="${day5}" pattern="dd-MMM " var="day5_date" />
<fmt:formatDate value="${day6}" pattern="EEE " var="day6_day" />
<fmt:formatDate value="${day6}" pattern="dd-MMM " var="day6_date" />
<fmt:formatDate value="${day7}" pattern="EEE " var="day7_day" />
<fmt:formatDate value="${day7}" pattern="dd-MMM " var="day7_date" />
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

	<!-- CSS Customization -->
	<link rel="stylesheet" href="assets/css/custom.css">
		<!-- Owl Carousel Assets -->
	<link href="owl-carousel/owl.carousel.css" rel="stylesheet">
	<link href="owl-carousel/owl.theme.css" rel="stylesheet">
		

	<!-- Prettify -->
	<link href="assets/js/google-code-prettify/prettify.css" rel="stylesheet">


</head>	

<body>
<div class="wrapper">
	 <%@ include file="header.jsp" %>
		 <!--/container-->
			<div class="container content">	
		 		<div class="headline"><h2>SEARCH RESULTS</h2></div> 
			 		<div class="row">
			 			<div class="row no-gutters">
				 		<div class="col-md-1">
		                        <div class="bg-light calender_date">
		                            <h4 ><c:out value="${today_day}"/></h4>
		                             <h4 ><c:out value="${today_date}"/></h4>
		                        </div>
		                </div>
		            	 <div class="col-md-1">
		                        <div class="bg-light calender_date">
		                            <h4 ><c:out value="${day2_day}"/></h4>
		                             <h4><c:out value="${day2_date}"/></h4>
		                        </div>
		                </div>
		                 <div class="col-md-1">
		                        <div class="bg-light calender_date">
		                            <h4 ><c:out value="${day3_day}"/></h4>
		                             <h4 ><c:out value="${day3_date}"/></h4>
		                        </div>
		                </div>
		                 <div class="col-md-1">
		                        <div class="bg-light calender_date">
		                            <h4 ><c:out value="${day4_day}"/></h4>
		                             <h4 ><c:out value="${day4_date}"/></h4>
		                        </div>
		                </div>
		                 <div class="col-md-1">
		                        <div class="bg-light calender_date">
		                            <h4 ><c:out value="${day5_day}"/></h4>
		                             <h4 ><c:out value="${day5_date}"/></h4>
		                        </div>
		                </div>
		                 <div class="col-md-1">
		                        <div class="bg-light calender_date">
		                            <h4 ><c:out value="${day6_day}"/></h4>
		                             <h4 ><c:out value="${day6_date}"/></h4>
		                        </div>
		                </div>
		                 <div class="col-md-1">
		                        <div class="bg-light calender_date">
		                            <h4 ><c:out value="${day7_day}"/></h4>
		                             <h4 ><c:out value="${day7_date}"/></h4>
		                        </div>
		                </div>

		      	</div>
		       
	             
		 		
		 			<div class="headline"><h2><s:property value="#session.theatre.name" /></h2></div> 
		 				<div><h2>MOVIE RESULTS</h2>
		 					<div class="table-search-v2 panel panel-grey margin-bottom-50">
                        <div class="panel-heading">
                            <div class="panel-title pull-left"><i class="fa fa-globe"></i> Movie Search Results</div>
           
                            <div class="clearfix"></div>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped">
                                <tbody>
                                	
                                    <tr>
                                        <div class = "col-md-2">
                                           <a href="movieoverview.jsp"> <img  src="assets/owl2.jpg" alt=""></a>
                                        </div>
                                         <div class = "col-md-2">
                                          THE DIVERGENT SERIES: INSURGENT 
    
												PG-13 , 1 hr 58 min
											Action/Adventure, Romance
                                        </div>
                                        <div class = "col-md-6">
                                            <h3>Jupiter 1</h3>
                                            <p>Select a movie time to buy tickets
												Accessibility devices available</p>
                                            <a href="ticketInfo.jsp">9:50am</a>
                                             <a href="ticketInfo.jsp">12:20pm</a>
                                             <a href="ticketInfo.jsp">12:20pm</a>
                                             <a href="ticketInfo.jsp">3:15pm</a>
                                             <a href="ticketInfo.jsp">6:15pm</a>
                                             <a href="ticketInfo.jsp">9:15pm</a>
                                        </div>
                                       
                                    </tr>
                            
                                </tbody>
                            </table>
                        </div>    
                    </div>

		 				</div> 

		 				<div class="row"></div>
		 	</div>	
		<!-- End Content Part -->
	</div><!--/wrapper-->
	<%@ include file="footer.jsp" %>


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
<script type="text/javascript">
	//sliders starter
	jQuery(document).ready(function() {
		App.init();
		App.initSliders();      
		ParallaxSlider.initParallaxSlider();
	});
	   $(document).ready(function() {
	   	//owl-demo starter
	  $("#owl-demo").owlCarousel({
		items : 8,
		lazyLoad : true,
	 autoPlay: 2000,
	   stopOnHover: true
	  });
	});

</script>
	<s:if test="#session.loginError== 1"> 
		<script>
		$('#login').modal('show');
		</script>
	</s:if>
		<s:if test="#session.loginError== 1"> 
		<s:set name="loginError" value="2" scope="session" />
		</s:if>
	<s:if test="#session.registerError== 1"> 
		<script>
		$('#signUp').modal('show');
		</script>
	</s:if>
	<s:if test="#session.registerError== 1"> 
		<s:set name="registerError" value="2" scope="session" />
		</s:if>

<!--[if lt IE 9]>
	<script src="assets/plugins/respond.js"></script>
	<script src="assets/plugins/html5shiv.js"></script>
	<script src="assets/js/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>
</html>