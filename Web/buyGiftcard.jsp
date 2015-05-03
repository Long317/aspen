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
				<form role="form" action="buyGiftcard">
                  <table class="table table-striped" >
                  		 <tr class="success">
                            <td class="success">Gift card value: </td>
                            <td class="success">
	                            <input type="radio" name="gcardValue" value="10"> 10
								<input type="radio" name="gcardValue" value="30"> 30
								<input type="radio" name="gcardValue" value="50"> 50
								<input type="radio" name="gcardValue" value="100"> 100
								<input type="radio" name="gcardValue" value="300"> 300
                            </td>
                        </tr>
                          <tr class="active">
                             <td class="active">card Tyape</td>
                            <td class="active">
                            	<input type="radio" name="card_type" value="0"> Visa
								<input type="radio" name="card_type" value="1"> MasterCard
                            </td>
                        </tr>
                        <tr class="success">
                            <td class="success">Name</td>
                            <td class="success">
                                <input name="name" type="text"  class ="input-group">
                            </td>
                        </tr>
                        <tr class="active">
                             <td class="active">email</td>
                            <td class="active">
                                <input name="email" type="text"  class ="input-group">
                            </td>
                        </tr>
                         <tr class="success">
                            <td class="success">card number</td>
                            <td class="success">
                                <input  onkeypress="return isNumberKey(event);" name="card_number" type="text" maxlength="16" size="16"  class ="input-group">
                            </td>
                        </tr>
                        <tr class="active">
                             <td class="active">cvv</td>
                            <td class="active">
                                <input name="cvv"  onkeypress="return isNumberKey(event);" type="text" maxlength="3" size="3" class ="input-group">
                            </td>
                        </tr>
                           <tr class="success">
                            <td class="success">month</td>
                            <td class="success">
	                            <select name="month"  class ="input-group">
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
                            </td>
                        </tr>
                        <tr class="active">
                             <td class="active">year</td>
                            <td class="active">
                                <input name="year"  onkeypress="return isNumberKey(event);" type="text" maxlength="4" size="4" class ="input-group">
                            </td>
                        </tr>
                        <tr class="success">
                             <td class="success">Billing Address Info</td>
                            <td class="success">
                               Following are your billing address infomation
                            </td>
                        </tr>
                           <tr class="active">
                             <td class="active">address</td>
                            <td class="active">
                                <input name="address" type="text" class ="input-group">
                            </td>
                        </tr>
                        <tr class="success">
                             <td class="success">City</td>
                            <td class="success">
                              <input name="city" type="text" class ="input-group">
                            </td>
                        </tr>
                           <tr class="active">
                             <td class="active">State</td>
                            <td class="active">
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
                            </td>
                        </tr>
                        <tr class="success">
                             <td class="success">zipcode</td>
                            <td class="success">
                              <input name="zipcode"  onkeypress="return isNumberKey(event);" type="text"   class ="input-group">
                            </td>
                        </tr>
                              <tr class="active">
                             <td class="active">first_name</td>
                            <td class="active">
                                <input name="first_name" type="text" class ="input-group">
                            </td>
                        </tr>
                        <tr class="success">
                             <td class="success">last_name</td>
                            <td class="success">
                              <input name="last_name" type="text" class ="input-group">
                            </td>
                        </tr>
                          <tr class="active">
                         <td class="active">
                         <button type="submit" onclick="return confirm('Are you sure you want to add the comment?');"
                                                name='submit'  class="btn btn-info">Buy</button></td>
                        <td class="active">
                        </td>
                        </tr>
                    </table>
                </form> 
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
	           function isNumberKey(evt) {
                                        var charCode = (evt.which) ? evt.which : event.keyCode;
                                        if (charCode > 31 && (charCode < 48 || charCode > 57))
                                            return false;
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