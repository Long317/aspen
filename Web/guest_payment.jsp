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
		 				 <form class="sky-form" id="sky-form" action="addGbill" method="post">
                                        <!--Checkout-Form-->
                                        <section>
                                            <div class="inline-group">
                                                <label class="radio"><input type="radio" checked="" name="card_type" value=0><i class="rounded-x"></i>Visa</label>
                                                <label class="radio"><input type="radio" name="card_type" value=1><i class="rounded-x"></i>MasterCard</label>
                                            </div>
                                        </section>                  

                                        <section>
                                            <label class="input">
                                                <input type="text" name="name" placeholder="Name on card">
                                            </label>
                                        </section>
                                        
                                        <section>
                                            <label class="input">
                                                <input type="text" name="email" placeholder="Email">
                                            </label>
                                        </section>
                                        
                                        <div class="row">
                                            <section class="col col-10">
                                                <label class="input">
                                                    <input type="text" name="card_number"  placeholder="Card number">
                                                </label>
                                            </section>
                                            <section class="col col-2">
                                                <label class="input">
                                                    <input type="text" name="cvv" id="cvv" placeholder="CVV2">
                                                </label>
                                            </section>
                                        </div>                                        
                                        
                                        <div class="row">
                                            <label class="label col col-4">Expiration date</label>
                                            <section class="col col-5">
                                                <label class="select">
                                                    <select name="month" >
                                                        <option disabled="" selected="" value="0">Month</option>
                                                        <option value="1">January</option>
                                                        <option value="2">February</option>
                                                        <option value="3">March</option>
                                                        <option value="4">April</option>
                                                        <option value="5">May</option>
                                                        <option value="6">June</option>
                                                        <option value="7">July</option>
                                                        <option value="8">August</option>
                                                        <option value="9">September</option>
                                                        <option value="10">October</option>
                                                        <option value="11">November</option>
                                                        <option value="12">December</option>
                                                    </select>
                                                    <i></i>
                                                </label>
                                            </section>
                                            <section class="col col-3">
                                                <label class="input">
                                                    <input type="text" placeholder="Year" id="year" name="year">
                                                </label>
                                            </section>
                                        </div>
                                        <!--Checkout-Form-->                 

                                        <section>
                                            <label class="input">
                                                <input type="text" name="address" placeholder="address">
                                            </label>
                                        </section>
                                        
                                        <div class="row">
                                            <section class="col col-4">
                                                <label class="input">
                                                    <input type="text" name="city"  placeholder="city">
                                                </label>
                                            </section>
                                            <section class="col col-4">
                                                <label class="select">
                                                    <select name="state">
                                                        <option value="AL">Alabama</option>
														<option value="AK">Alaska</option>
														<option value="AZ">Arizona</option>
														<option value="AR">Arkansas</option>
														<option value="CA">California</option>
														<option value="CO">Colorado</option>
														<option value="CT">Connecticut</option>
														<option value="DE">Delaware</option>
														<option value="DC">District Of Columbia</option>
														<option value="FL">Florida</option>
														<option value="GA">Georgia</option>
														<option value="HI">Hawaii</option>
														<option value="ID">Idaho</option>
														<option value="IL">Illinois</option>
														<option value="IN">Indiana</option>
														<option value="IA">Iowa</option>
														<option value="KS">Kansas</option>
														<option value="KY">Kentucky</option>
														<option value="LA">Louisiana</option>
														<option value="ME">Maine</option>
														<option value="MD">Maryland</option>
														<option value="MA">Massachusetts</option>
														<option value="MI">Michigan</option>
														<option value="MN">Minnesota</option>
														<option value="MS">Mississippi</option>
														<option value="MO">Missouri</option>
														<option value="MT">Montana</option>
														<option value="NE">Nebraska</option>
														<option value="NV">Nevada</option>
														<option value="NH">New Hampshire</option>
														<option value="NJ">New Jersey</option>
														<option value="NM">New Mexico</option>
														<option value="NY">New York</option>
														<option value="NC">North Carolina</option>
														<option value="ND">North Dakota</option>
														<option value="OH">Ohio</option>
														<option value="OK">Oklahoma</option>
														<option value="OR">Oregon</option>
														<option value="PA">Pennsylvania</option>
														<option value="RI">Rhode Island</option>
														<option value="SC">South Carolina</option>
														<option value="SD">South Dakota</option>
														<option value="TN">Tennessee</option>
														<option value="TX">Texas</option>
														<option value="UT">Utah</option>
														<option value="VT">Vermont</option>
														<option value="VA">Virginia</option>
														<option value="WA">Washington</option>
														<option value="WV">West Virginia</option>
														<option value="WI">Wisconsin</option>
														<option value="WY">Wyoming</option>
                                                    </select>
                                                    <i></i>
                                                </label>
                                            </section>
                                            <section class="col col-4">
                                                <label class="input">
                                                    <input type="text" name="zipcode" id="zipcode" placeholder="zipcode">
                                                </label>
                                            </section>
                                        </div>                                        
                                        
                                        <div class="row">
                                            
											<section class="col col-4">
                                            	<label class="input">
                                                	<input type="text" name="first_name" placeholder="First Name">
                                            	</label>
											</section>
											<section class="col col-4">
                                            	<label class="input">
                                                	<input type="text" name="last_name" placeholder="Last Name">
                                            	</label>
											</section>
                                        </div>
                                        <button class="btn-u" type="submit">Save Changes</button>
                                        <!--End Checkout-Form-->
                                    </form>    
                        </div>
                        <div class = "col-md-6">
		 				
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