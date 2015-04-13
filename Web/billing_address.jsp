<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>Customer| Welcome</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="assets/plugins/line-icons/line-icons.css">
    <link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/plugins/sky-forms/version-2.0.1/css/custom-sky-forms.css">
    <link rel="stylesheet" href="assets/plugins/scrollbar/src/perfect-scrollbar.css">

    <!-- CSS Page Style -->
    <link rel="stylesheet" href="assets/css/pages/profile.css">

    <!-- CSS Theme -->    
    <link rel="stylesheet" href="assets/css/theme-colors/dark-red.css">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="assets/css/custom.css">
</head>	

<body>
<div class="wrapper">
  <%@ include file="header.jsp" %>
    <!--=== Profile ===-->
    <div class="profile container content">
    	<div class="row">
            <!--Left Sidebar-->
                 <!-- Begin Sidebar Menu -->
            <div class="col-md-3">
                <ul class="list-group sidebar-nav-v1 margin-bottom-40" id="sidebar-nav-1">
                    <li class="list-group-item">
                        <a href="customer.jsp"><i class="fa fa-bar-chart-o"></i> Overall</a>
                    </li>
                    <li class="list-group-item">
                        <a href="purchase_history.jsp"><i class="fa fa-user"></i>My Purchase History</a>
                    </li>
                    
                    <li class="list-group-item">
                        <a href="favorite_movie.jsp"><i class="fa fa-user"></i>My Favorite Movie</a>
                    </li>
                    
                    <li class="list-group-item">
                        <a href="favorite_theatre.jsp"><i class="fa fa-user"></i>My Favorite Theatre</a>
                    </li>
                    
                    <li class="list-group-item">
                        <a href="customer_movie_comments.jsp"><i class="fa fa-user"></i>My Movie Comment</a>
                    </li>
                    
                    <li class="list-group-item active">
                        <a href="billing_address.jsp"><i class="fa fa-user"></i>Manage Billing Address</a>
                    </li>
                    
                    <li class="list-group-item">
                        <a href="billing_account.jsp"><i class="fa fa-user"></i>Manage Billing Account</a>
                    </li>
                    
                    <li class="list-group-item">
                        <a href="customer_settings.jsp"><i class="fa fa-user"></i>Setting</a>
                    </li>
                </ul>   


            </div>
            <!--End Left Sidebar-->
                
                <div class="col-md-9">
                    <!--Profile Body-->
                    <div class="profile-body margin-bottom-20">
                        <div class="tab-v1">
                            <ul class="nav nav-justified nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#deleteacc">Delete billing address</a></li>
                                <li><a data-toggle="tab" href="#addaddr">Add billing address</a></li>
                            </ul>    
                            <div class="tab-content">      
								 <div id="deleteaddr" class="profile-edit tab-pane fade in active">
                                    <h2 class="heading-md">Delete your billing address</h2>
                                    <p>Below are the card info of your existing address</p>
                                    </br>
                                    <dl class="dl-horizontal">
                                    <c:forEach var="baddr" items="${sessionScope.login.billing_addresses}" varStatus="status" begin="0">
                                    <form action="deleteAddr">
                                       <dd>
                                      		<strong>Address:</strong><c:out value="${baddr.address}"/><br>
                                      		<strong>City:</strong><c:out value="${baddr.city} "/> 
                                            <strong>State:</strong><c:out value="${baddr.state} "/>
                                            <strong>State:</strong><c:out value="${baddr.zipcode} "/><br>
                                            <strong>Name:</strong><c:out value="${baddr.first_name} ${baddr.last_name}"/><br>
                                            <input name="acc_id" value="${baddr.id}" type="hidden" />
                                            <span>
                                                <button type="submit" class="btn-u btn-u-default" onclick="return confirmAction()">DELETE</button>
                                            </span>
                                        </dd>
                                        <hr>
                                     </form>
                                     </c:forEach>
                                    </dl>
                                </div>
                                <div id="addaddr" class="profile-edit tab-pane fade">
                                    <h2 class="heading-md">Manage your Payment Settings</h2>
                                    <p>Below are the payment options for your account.</p>
                                    </br>
                                    <form class="sky-form" id="sky-form" action="addAddr">
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
                                        <button type="button" class="btn-u btn-u-default">Cancel</button>
                                        <button class="btn-u" type="submit">Save Changes</button>
                                        <!--End Checkout-Form-->
                                    </form>    
                                </div>
                            </div>
                        </div>    
                    </div>
                    <!--End Profile Body-->
                </div>
            </div><!--/end row-->
        </div><!--/container-->    
    </div>      
    <!--=== End Profile ===-->
<%@ include file="footer.jsp" %>
    
</div><!--/wrapper-->

<!-- JS Global Compulsory -->           
<script type="text/javascript" src="assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
<!-- Scrollbar -->
<script src="assets/plugins/scrollbar/src/jquery.mousewheel.js"></script>
<script src="assets/plugins/scrollbar/src/perfect-scrollbar.js"></script>
<!-- Validation Form -->
<script src="assets/plugins/sky-forms/version-2.0.1/js/jquery.validate.min.js"></script>
<!-- Checkout Form -->
<script src="assets/plugins/sky-forms/version-2.0.1/js/jquery.maskedinput.min.js"></script>
<!-- Datepicker Form -->
<script src="assets/plugins/sky-forms/version-2.0.1/js/jquery-ui.min.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="assets/js/custom.js"></script>
<!-- JS Page Level -->           
<script type="text/javascript" src="assets/js/app.js"></script>
<script type="text/javascript" src="assets/js/forms/reg.js"></script>
<script type="text/javascript" src="assets/js/forms/checkout.js"></script>
<script type="text/javascript" src="assets/js/plugins/datepicker.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
        RegForm.initRegForm();
        Datepicker.initDatepicker();
        CheckoutForm.initCheckoutForm();              
    });
</script>
<script>
function confirmAction(){
    var confirmed = confirm("Are you sure? This will remove this card info.");
    return confirmed;
}
</script>
<script>
    jQuery(document).ready(function ($) {
        "use strict";
        $('.contentHolder').perfectScrollbar();
    });
</script>
<!--[if lt IE 9]>
    <script src="assets/plugins/respond.js"></script>
    <script src="assets/plugins/html5shiv.js"></script>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <script src="assets/plugins/sky-forms/version-2.0.1/js/sky-forms-ie8.js"></script>
<![endif]-->

<!--[if lt IE 10]>
    <script src="assets/plugins/sky-forms/version-2.0.1/js/jquery.placeholder.min.js"></script>
<![endif]-->

</body>
</html> 