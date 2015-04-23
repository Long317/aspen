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
		 				<a href="payment.jsp" class= "btn btn-default disabled">Payment</a><div class="glyphicon glyphicon-arrow-right"></div>
		 				<div class= "btn btn-default disabled">Confirmation</div>
		 			    </div>
		 			</div>
		 			<div class="ticketBody row">
		 				<form class="sky-form" id="sky-form" onsubmit="return validateForm()"  action="payment">
				          <div class="form-group">
				          	<div class="row">
				          	<div class = "col-md-1"></div>
				          	<div class = "col-md-1">
				            <label  class="control-label">Adult:</label> </div>
				            <div class = "col-md-3">
				            <input type="text" maxlength="2" class="ticketInput" onchange="calculate();"
				             onkeypress="return isNumberKey(event);" name="adult" id="adult"> 
				            x <span id="price"><s:property value="#session.ticket_price" /></span> =<span id="adult-result">$0.00</span>
				       		 </div>
				       		 </div>
				       		 <br/> 
				            <div class="row">
				            <div class = "col-md-1"></div>
				          	<div class = "col-md-1">
				            <label  class="control-label">Senior:</label>  </div>
				            <div class = "col-md-3">
				            <input type="text" maxlength="2" class="ticketInput" onchange="calculateSenior();" 
				             onkeypress="return isNumberKey(event);"  name="senior" id="senior">
				            x <s:property value="#session.ticket_price *0.8" /> =<span id="senior-result">$0.00</span>	
				            </div>
				            </div>
				             <br/> 
				            <div class="row">
				            <div class = "col-md-1"></div>
				          	<div class = "col-md-1">
				            <label  class="control-label">Child:&nbsp;&nbsp;</label>  </div>
				            <div class = "col-md-3">
				            <input type="text"  maxlength="2" class="ticketInput" onchange="calculateChild();" 
				             onkeypress="return isNumberKey(event);"  name="child" id="child">
				             x <s:property value="#session.ticket_price *0.8" /> =<span id="child-result">$0.00</span>		
				       		</div>
				       		</div>
				          </div>
				              <br/>
				         <div class = "col-md-1"></div>
				          <button  type ="submit" class="btn btn-default"> Buy Ticket</button>
				        </form>
		 			</div>
		 		</div>
		 	</div>	
		<!-- End Content Part -->
	</div><!--/wrapper-->
	 <!--login modal-->
            <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="login" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
	       <!--Reg Block-->
    <div class="reg-block">
        <div class="reg-block-header">
            <h2>Sign In</h2>
            <ul class="social-icons text-center">
                <li><a class="rounded-x social_facebook" data-original-title="Facebook" href="#"></a></li>
                <li><a class="rounded-x social_twitter" data-original-title="Twitter" href="#"></a></li>
                <li><a class="rounded-x social_googleplus" data-original-title="Google Plus" href="#"></a></li>
                <li><a class="rounded-x social_linkedin" data-original-title="Linkedin" href="#"></a></li>
            </ul>
            <p>Don't Have Account? Click <a class="color-green" id="signup-pop">Sign Up</a> to registration.</p>            
        </div>
        <s:form action="login">
        <div class="input-group margin-bottom-20">
            <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
            <input type="text" class="form-control" name ="email" placeholder="Email">
        </div>
        <s:fielderror fieldName="email"/>
        <div class="input-group margin-bottom-20">
            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
            <input type="password" class="form-control" name="password" placeholder="Password">
        </div>
        <s:fielderror fieldName="password"/>
        <hr>                    
        <div class="row">
            <div class="col-md-12 col-md-offset-0">
                 <button class="btn-u btn-block">Log In</button>   
            </div>
        </div>
    </s:form>
    </div>
    <!--End login Block-->
		</div>
      </div>
 	</div>
 </div>
	<!--end of login modal-->

		 <!--sign up modal-->
            <div class="modal fade" id="signUp" tabindex="-1" role="dialog" aria-labelledby="signUp" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
	 <!--Reg Block-->
    <div class="reg-block">
        <div class="reg-block-header">
            <h2>Sign Up</h2>
            <ul class="social-icons text-center">
                <li><a class="rounded-x social_facebook" data-original-title="Facebook" href="#"></a></li>
                <li><a class="rounded-x social_twitter" data-original-title="Twitter" href="#"></a></li>
                <li><a class="rounded-x social_googleplus" data-original-title="Google Plus" href="#"></a></li>
                <li><a class="rounded-x social_linkedin" data-original-title="Linkedin" href="#"></a></li>
            </ul>
            <p>Already Signed Up? Click <a class="color-green" id="signin-pop">Sign In</a> to login your account.</p>
        </div>
    <s:form action="register">
        <div class="input-group margin-bottom-20">
            <span class="input-group-addon"><i class="fa fa-user"></i></span>
            <input type="text" class="form-control" name="user_name"placeholder="Username">
        </div>
         <s:fielderror fieldName="username"/>
        <div class="input-group margin-bottom-20">
            <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
            <input type="text" class="form-control" name="email" placeholder="Email">
        </div>
         <s:fielderror fieldName="email"/>
        <div class="input-group margin-bottom-20">
            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
            <input type="password" class="form-control" name="password" placeholder="Password">
        </div>
         <s:fielderror fieldName="password"/>
        <div class="input-group margin-bottom-30">
            <span class="input-group-addon"><i class="fa fa-key"></i></span>
            <input type="password" class="form-control" name="confirmpass" placeholder="Confirm Password">
        </div>
              <s:fielderror fieldName="passwordnotequal"/>
        <hr>

        <div class="checkbox" name="term_condition">            
            <label>
                <input type="checkbox" name="terms_condition"> 
                <p>I read <a href="terms_condition.html">Terms and Conditions</a></p>
            </label>
        </div>
             <s:fielderror fieldName="termcondition"/>
                                
        <div class="row">
            <div class="col-md-12 col-md-offset-0">
                <button type="submit" class="btn-u btn-block">Register</button>                
            </div>
        </div>
        </s:form>
    </div>
    <!--End Reg Block-->
</div>
                    </div>
                </div>
            </div>
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
<script>
	//auto calculate price
	function calculate(){
		$("#adult-result").html($("#price").text()*$("#adult").val());
	}
	//auto calculate child and senior
	function calculateSenior() {
	$("#senior-result").html($("#price").text()*$("#senior").val()*0.8);
	}
	//auto calculate child and senior
	function calculateChild() {
	$("#child-result").html($("#price").text()*$("#child").val()*0.8);
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
		items : 8,
		lazyLoad : true,
	 autoPlay: 2000,
	   stopOnHover: true
	  });
	});

	//validate form function
	function validateForm(){
	if (($("#adult").val()==null|| $("#adult").val()=="")&& 
		($("#senior").val()==null || $("#senior").val()=="")&& 
		($("#child").val()==null || $("#child").val()=="")){
		alert("You have to enter ticket number");
		return false;
	}
	return true;
	}

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