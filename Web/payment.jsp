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
                        <a href="payment.jsp" class= "btn btn-default">Payment</a><div class="glyphicon glyphicon-arrow-right"></div>
		 				<div class= "btn btn-default disabled">Confirmation</div>
		 			    </div>
		 			</div>
		 			<div class="ticketBody row">
		 				<div class = "col-md-6">
		 				<form>
				          <div class="form-group">
				          <table class='table table-striped '>
                                         <s:if test="#session.login!=null"> 
                                             <s:if test="#session.login.billing_accounts!=null"> 
                                            <tr> <td><select type="text" class="form-control" onchange="location = this.options[this.selectedIndex].value;">
                                                <option selected value="payment.jsp">select your account</option>  
                                            <c:forEach items="${sessionScope.login.billing_accounts}" var="billing">
                                            <option value="billinfo?billing_account.card_number=<c:out value='${billing.card_number}'/>"><c:out value='${billing.card_number}'/></option>
                                            </c:forEach>
                                            </select></td></tr>
                                            </s:if>
                                         </s:if>

                                           <s:if test="#session.login!=null"> 
                                             <s:if test="#session.login.billing_addresses!=null"> 
                                            <tr> <td><select type="text" class="form-control" onchange="location = this.options[this.selectedIndex].value;">
                                                <option selected value="payment.jsp">select your billing address</option>  
                                            <c:forEach items="${sessionScope.login.billing_addresses}" var="billing">
                                            <option value="billinfo?billing_address.address=<c:out value='${billing.address}'/>"><c:out value='${billing.address}'/></option>
                                            </c:forEach>
                                            </select></td></tr>
                                            </s:if>
                                         </s:if>
                                        <tr><td> Card Info:</td></tr>
                                        <tr><td>Card Number</td>
                                            <td><input type="text" name ="cardNumber" id="cardNumber" 
                                                       onkeypress="return isNumberKey(event);"
                                                        value = "<c:out value='${sessionScope.selected_acct.card_number}'/>"
                                                        maxlength="16" class="form-control"></td>
                                        </tr>
                                        <tr><td>Expiration Date</td>
                                            <td><select type="text" name ="expirationMonth" id="expirationMonth" class="form-control">
                                            <option selected>Month</option>
                                            <option value="1">January</option>
                                            <option value="1">January</option>
                                            <option value="1">January</option>
                                            <option value="1">January</option>
                                            <option value="1">January</option>
                                            <option value="1">January</option>
                                            <option value="1">January</option>
                                            <option value="1">January</option>
                                            <option value="1">January</option>
                                            <option value="1">January</option>
                                            <option value="1">January</option>
                                            <option value="1">January</option>
                                        	</select></td>
                                        	   <td><select type="text" name ="expirationYear" id="expirationYear" class="form-control">
                                        	<option selected>Year</option>
                                            <option value="2015">15</option>
                                            <option value="2015">16</option>
                                            <option value="2015">17</option>
                                            <option value="2015">18</option>
                                            <option value="2015">19</option>
                                            <option value="2015">20</option>
                                            <option value="2015">21</option>
                                            <option value="2015">22</option>
                                            <option value="2015">23</option>
                                            <option value="2015">24</option>
                                            <option value="2015">25</option>
                                        	</select></td>
                                        </tr>
                                         <tr><td>Card Holder</td>
                                            <td><input type="text" name ="card_holder"  
                                                     value="<c:out value='${sessionScope.selected_acct.card_holder}'/>" class="form-control"></td>
                                        </tr>
                                         <tr><td></td></tr>
                                           <tr><td> Billing Address Info:</td></tr>
                                             <tr><td>Billing Address</td>
                                            <td><input type="text" name ="address" id="address" 
                                                    value="<c:out value='${sessionScope.selected_addr.address}'/>"
                                                     class="form-control"></td>
                                           </tr>
                                           <tr><td>Billing city</td>
                                            <td><input type="text" name ="city" id="city" 
                                                    value="<c:out value='${sessionScope.selected_addr.city}'/>"
                                                       class="form-control"></td>
                                           </tr>
                                           <tr><td>State</td>
                                            <td>      <select name="state" class="form-control">
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
                                            </td>
                                           </tr>
                                           <tr><td>Billing ZIP Code</td>
                                            <td><input type="text" name ="zipcode" id="zipcode" 
                                                    value="<c:out value='${sessionScope.selected_addr.zipcode}'/>"
                                                     onkeypress="return isNumberKey(event);" maxlength="5"  class="form-control"></td>
                                        </tr>
                                        <tr>
                                            <td><a href="PurchaseSuccess.jsp" class="btn-primary btn">
                                                check out</a></td>
                                            
                                        </tr>
                           </table>
				        </form>
				   	 </div>
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

      <link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

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