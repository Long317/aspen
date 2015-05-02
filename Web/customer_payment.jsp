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
		 		<div id = "ticketInfoHeader">
		 			<div class="headline row">
		 				<div class = "col-md-4"><h2>CHECKOUT</h2></div>
		 				<div class = "col-md-6">
		 				<a href="ticketInfo.jsp" class= "btn btn-default">Tickets</a><div class="glyphicon glyphicon-arrow-right"></div>
                        <a href="user_payment.jsp" class= "btn btn-default">Payment</a><div class="glyphicon glyphicon-arrow-right"></div>
		 				<div class= "btn btn-default disabled">Confirmation</div>
		 			    </div>
		 			</div>
		 			<div class="ticketBody row">
		 				<div class = "col-md-6">
		 				<form class="sky-form" id="sky-form" action="giftcard" method="post"> 
		 				<s:if test="#session.giftcard==null"> 
                                        <div class="row">Gift Card:</div>
                                        <div class="row">Card Number:
                                        <label class="input">
                                            <input type="text" name ="card_number" id="card_number"></input>
                                        </label>
                                        </div>
                                        <div class="row">PIN:
                                        <label class="input">
                                            <input type="text" name ="pin" id="pin"></input>
                                        </label>
                                        </div>                                        
                                        <div class="row">
                                        <label class="input">
                                           <button class="btn-u" type="submit">Apply</button>
                                        </label>
                                        </div>
                                        <div class="row">
                                        <s:if test="#session.giftcarderror!=null"> 
                                         <s:property value="#session.giftcarderror" />
                                        </s:if>
                                        </div>
                         </s:if>
                         <s:if test="#session.giftcard!=null"> 
                                        <div class="row">Gift Card:</div>
                                        <div class="row">Applied:
                                        <s:property value="#session.giftcard.money_remained" />
                                        </div>
                         </s:if>
                        </form>
                        </div>
                        <div class = "col-md-6">
		 				<form class="sky-form" id="sky-form" action="billing" method="post">
				                            <s:if test="#session.login.billing_accounts!=null"> 
                                            <div class="row">
                                                <label class="select">
                                                    <select name="bacc">
                                                        <option disabled="" selected="" value="-1">Billing Account</option>
                                            <c:forEach items="${sessionScope.login.billing_accounts}" var="billing">
                                            <option value="${billing.id}"><c:out value='${billing.card_number}'/></option>
                                            </c:forEach>
                                            </select>
                                            </label>
                                            <a href="addbacc.jsp"><button type="button">Add Billing Account</button></a>
                                            </div>
                                            </s:if>
                                            
                                            <s:elseif test="#session.login.billing_accounts==null">
                                            <div class="row">
                                                <label class="select">
                                                    <select name="bacc">
                                                        <option disabled="" selected="" value="-1">Billing Account</option>
                                            </select>
                                            </label>
                                            <a href="addbacc.jsp"><button type="button">Add Billing Account</button></a>
                                            </div>
                                            </s:elseif>
                                            
                                            <s:if test="#session.login.billing_addresses!=null"> 
                                            <div class="row">
                                                <label class="select">
                                                    <select name="badd">
                                                        <option disabled="" selected="" value="-1">Billing Address</option>
                                            <c:forEach items="${sessionScope.login.billing_addresses}" var="billing">
                                            <option value="${billing.id}"><c:out value='${billing.address}'/></option>
                                            </c:forEach>
                                            </select>
                                            </label>
                                            <a href="addbadd.jsp"><button type="button">Add Billing Address</button></a>
                                            </div>
                                            </s:if>
                                            
                                            <s:elseif test="#session.login.billing_addresses==null">
                                            <div class="row">
                                                <label class="select">
                                                    <select name="badd">
                                                        <option disabled="" selected="" value="-1">Billing Address</option>
                                            </select>
                                            </label>
                                            <a href="addbadd.jsp"><button type="button">Add Billing Address</button></a>
                                            </div>
                                            </s:elseif>
                                         <s:if test="#session.nobilling!=null"><s:property value="#session.nobilling" /></s:if>
                                        <label class="input">
                                           <button class="btn-u" type="submit">Submit</button>
                                        </label>
				        </form>
				        
				   	 </div>
		 			</div>
		 		</div>
		 	</div>	
		<!-- End Content Part -->
	</div><!--/wrapper-->
	<!--end of sign up modal-->
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