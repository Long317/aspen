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
                    
                    <li class="list-group-item">
                        <a href="billing_address.jsp"><i class="fa fa-user"></i>Manage Billing Address</a>
                    </li>
                    
                    <li class="list-group-item active">
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
                                <li class="active"><a data-toggle="tab" href="#deleteacc">Delete billing account</a></li>
                                <li><a data-toggle="tab" href="#addacc">Add billing account</a></li>
                            </ul>    
                            <div class="tab-content">      
								 <div id="deleteacc" class="profile-edit tab-pane fade in active">
                                    <h2 class="heading-md">Delete your billing accounts</h2>
                                    <p>Below are the card info of your existing accounts</p>
                                    </br>
                                    <dl class="dl-horizontal">
                                    <c:forEach var="ba" items="${sessionScope.login.billing_accounts}" varStatus="status" begin="0">
                                    <form action="deleteAcc">
                                       <dd>
                                      		<strong>CARD type:</strong><c:if test="${ba.card_type==0}">VISA</c:if><c:if test="${ba.card_type==1}">MASTER</c:if>
                                      		<strong>CARD HOLDER:</strong><c:out value="${ba.card_holder}"/> 
                                            <strong>CARD NUMBER:</strong><c:out value="${ba.card_number}"/> 
                                            <input name="acc_id" value="${ba.id}" type="hidden" />
                                            <span>
                                                <button type="submit" class="btn-u btn-u-default" onclick="return confirmAction()">DELETE</button>
                                            </span>
                                        </dd>
                                        <hr>
                                     </form>
                                     </c:forEach>
                                    </dl>
                                </div>
                                <div id="addacc" class="profile-edit tab-pane fade">
                                    <h2 class="heading-md">Manage your Payment Settings</h2>
                                    <p>Below are the payment options for your account.</p>
                                    </br>
                                    <form class="sky-form" id="sky-form" action="addAcc">
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
                                                    <select name="month">
                                                        <option disabled="" selected="" value="0">Month</option>
                                                        <option value="1">January</option>
                                                        <option value="1">February</option>
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