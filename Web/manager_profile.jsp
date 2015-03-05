<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>Manager| Profile</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

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
     <!--=== Header ===-->    
    <div class="header">
        <!-- Topbar -->
        <div class="topbar">
            <div class="container">
                <!-- Topbar Navigation -->
                <ul class="loginbar pull-right">
                 
                    <li><a href="page_faq.html">Help</a></li>  
              
                </ul>
                <!-- End Topbar Navigation -->
            </div>
        </div>
        <!-- End Topbar -->
    
        <!-- Navbar -->
        <div class="navbar navbar-default mega-menu" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="fa fa-bars"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">
                        <img id="logo-header" src="assets/img/logo3.png" alt="Logo">
                    </a>
                </div>
            </div>    
        </div>            
        <!-- End Navbar -->
    </div>
    <!--=== End Header ===--> 
    
    <!--===Profile ===--> 
    <div class="profile">   
        <div class="container content">
            <div class="row">
                     <!--Left Sidebar-->
                 <!-- Begin Sidebar Menu -->
            <div class="col-md-3">
                <img class="img-responsive profile-img margin-bottom-20" src="assets/img/team/5.jpg" alt="">
                <ul class="list-group sidebar-nav-v1 margin-bottom-40" id="sidebar-nav-1">
                    <li class="list-group-item">
                        <a href="manager.jsp"><i class="fa fa-bar-chart-o"></i> Overall</a>
                    </li>
                    <li class="list-group-item active">
                        <a href="manager_profile.jsp"><i class="fa fa-user"></i> My Profile</a>
                    </li>
                    <!-- My Tasks UI -->
                    <li class="list-group-item list-toggle">                   
                        <a data-toggle="collapse" data-parent="#sidebar-nav" href="#collapse-tasks"><i class="fa fa-tasks"></i>My Tasks</a>
                        <ul id="collapse-tasks" class="collapse">
                            <li><a href="manager_current_task.jsp"><i class="fa fa-flask"></i> Current Tasks</a></li>
                            <li>      
                                <a href="manager_past_task.jsp"><i class="fa fa-html5"></i> Past Tasks</a>
                            </li>
                        </ul>
                    </li>
                    <!-- My Tasks UI -->

                    <!-- My Contacts UI -->
                    <li class="list-group-item list-toggle">                   
                        <a data-toggle="collapse" data-parent="#sidebar-nav" href="#collapse-contacts"><i class="fa fa-users"></i>My Contacts</a>
                        <ul id="collapse-contacts" class="collapse">
                            <li><a href="manager_contact_admin.jsp"><i class="fa fa-flask"></i>Administrator</a></li>
                            <li><a href="manager_contact_ad.jsp"><i class="fa fa-html5"></i>Advertisement Companies</a></li>
                            <li><a href="manager_contact_theater.jsp"><i class="fa fa-bolt"></i> Theater Chains</a></li>
                        </ul>
                    </li>
                    <!-- My Contacts UI -->

                    <li class="list-group-item">
                        <a href="https://www.google.com/calendar"><i class="fa fa-calendar"></i>My Schedule</a>
                    </li>                                                             
                     <li class="list-group-item">
                        <a href="manager_report.jsp"><i class="fa fa-book"></i>View Reports</a>
                    </li> 
                </ul>   


            </div>
            <!--End Left Sidebar-->
                <div class="col-md-9">
                    <!--Profile Body-->
                    <div class="profile-body margin-bottom-20">
                        <div class="tab-v1">
                            <ul class="nav nav-justified nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#profile">Edit Profile</a></li>
                                <li><a data-toggle="tab" href="#passwordTab">Change Password</a></li>
<!--                                <li><a data-toggle="tab" href="#payment">Payment Options</a></li>-->
                                <li><a data-toggle="tab" href="#settings">Notification Settings</a></li>
                            </ul>          
                            <div class="tab-content">
                                <div id="profile" class="profile-edit tab-pane fade in active">
                                    <h2 class="heading-md">Manage your Name, ID and Email Addresses.</h2>
                                    <p>Below are the name and email addresses on file for your account.</p>
                                    </br>
                                    <dl class="dl-horizontal">
                                        <dt><strong>Change profile picture</strong></dt>
                                        <dd>
                                            <input type="text"s >
                                            <span>
                            
                                                    <a class="btn-u btn-u-sm " href="#">Upload</a>
                                            
                                            </span>
                                        </dd>
                                        <hr>
                                        <dt><strong>Your name </strong></dt>
                                        <dd>
                                            Edward Rooster 
                                            <span>
                                                <a class="pull-right" href="#">
                                                    <i class="fa fa-pencil"></i>
                                                </a>
                                            </span>
                                        </dd>
                                        <hr>
                                        <dt><strong>Your ID </strong></dt>
                                        <dd>
                                            FKJ-032440 
                                            <span>
                                                <a class="pull-right" href="#">
                                                    <i class="fa fa-pencil"></i>
                                                </a>
                                            </span>
                                        </dd>
                                        <hr>
                                        <dt><strong>Company name </strong></dt>
                                        <dd>
                                            Htmlstream 
                                            <span>
                                                <a class="pull-right" href="#">
                                                    <i class="fa fa-pencil"></i>
                                                </a>
                                            </span>
                                        </dd>
                                        <hr>
                                        <dt><strong>Primary Email Address </strong></dt>
                                        <dd>
                                            edward-rooster@gmail.com 
                                            <span>
                                                <a class="pull-right" href="#">
                                                    <i class="fa fa-pencil"></i>
                                                </a>
                                            </span>
                                        </dd>
                                        <hr>
                                        <dt><strong>Phone Number </strong></dt>
                                        <dd>
                                            (304) 33-2867-499 
                                            <span>
                                                <a class="pull-right" href="#">
                                                    <i class="fa fa-pencil"></i>
                                                </a>
                                            </span>
                                        </dd>
                                        <hr>
                                        <dt><strong>Office Number </strong></dt>
                                        <dd>
                                            (304) 44-9810-296 
                                            <span>
                                                <a class="pull-right" href="#">
                                                    <i class="fa fa-pencil"></i>
                                                </a>
                                            </span>
                                        </dd>
                                        <hr>
                                        <dt><strong>Address </strong></dt>
                                        <dd>
                                            California, US 
                                            <span>
                                                <a class="pull-right" href="#">
                                                    <i class="fa fa-pencil"></i>
                                                </a>
                                            </span>
                                        </dd>
                                        <hr>
                                    </dl>
                                    <button type="button" class="btn-u btn-u-default">Cancel</button>
                                    <button type="button" class="btn-u">Save Changes</button>
                                </div>

                                <div id="passwordTab" class="profile-edit tab-pane fade">
                                    <h2 class="heading-md">Manage your Security Settings</h2>
                                    <p>Change your password.</p>
                                    </br>
                                    <form class="sky-form" id="sky-form4" action="">
                                        <dl class="dl-horizontal">
                                            <dt>Username</dt>
                                            <dd>
                                                <section>
                                                    <label class="input">
                                                        <i class="icon-append fa fa-user"></i>
                                                        <input type="text" placeholder="Username" name="username">
                                                        <b class="tooltip tooltip-bottom-right">Needed to enter the website</b>
                                                    </label>
                                                </section>
                                            </dd>
                                            <dt>Email address</dt>
                                            <dd>
                                                <section>
                                                    <label class="input">
                                                        <i class="icon-append fa fa-envelope"></i>
                                                        <input type="email" placeholder="Email address" name="email">
                                                        <b class="tooltip tooltip-bottom-right">Needed to verify your account</b>
                                                    </label>
                                                </section>
                                            </dd>
                                            <dt>Enter your password</dt>
                                            <dd>
                                                <section>
                                                    <label class="input">
                                                        <i class="icon-append fa fa-lock"></i>
                                                        <input type="password" id="password" name="password" placeholder="Password">
                                                        <b class="tooltip tooltip-bottom-right">Don't forget your password</b>
                                                    </label>
                                                </section>
                                            </dd>
                                            <dt>Confirm Password</dt>
                                            <dd>
                                                <section>
                                                    <label class="input">
                                                        <i class="icon-append fa fa-lock"></i>
                                                        <input type="password" name="passwordConfirm" placeholder="Confirm password">
                                                        <b class="tooltip tooltip-bottom-right">Don't forget your password</b>
                                                    </label>
                                                </section>
                                            </dd>    
                                        </dl>
                                        <label class="toggle toggle-change"><input type="checkbox" checked="" name="checkbox-toggle-1"><i></i>Remember password</label>
                                        </br>
                                        <section>
                                            <label class="checkbox"><input type="checkbox" id="terms" name="terms"><i></i><a href="#">I agree with the Terms and Conditions</a></label>
                                        </section>
                                        <button type="button" class="btn-u btn-u-default">Cancel</button>
                                        <button class="btn-u" type="submit">Save Changes</button>
                                    </form>    
                                </div>

                                <div id="payment" class="profile-edit tab-pane fade">
                                    <h2 class="heading-md">Manage your Payment Settings</h2>
                                    <p>Below are the payment options for your account.</p>
                                    </br>
                                    <form class="sky-form" id="sky-form" action="">
                                        <!--Checkout-Form-->
                                        <section>
                                            <div class="inline-group">
                                                <label class="radio"><input type="radio" checked="" name="radio-inline"><i class="rounded-x"></i>Visa</label>
                                                <label class="radio"><input type="radio" name="radio-inline"><i class="rounded-x"></i>MasterCard</label>
                                                <label class="radio"><input type="radio" name="radio-inline"><i class="rounded-x"></i>PayPal</label>
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
                                                    <input type="text" name="card" id="card" placeholder="Card number">
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

                                <div id="settings" class="profile-edit tab-pane fade">
                                    <h2 class="heading-md">Manage your Notifications.</h2>
                                    <p>Below are the notifications you may manage.</p>
                                    </br>
                                    <form class="sky-form" id="sky-form" action="">
                                        <label class="toggle"><input type="checkbox" checked="" name="checkbox-toggle-1"><i></i>Email notification</label>
                                        <hr>
                                        <label class="toggle"><input type="checkbox" checked="" name="checkbox-toggle-1"><i></i>Send me email notification when a user comments on my blog</label>
                                        <hr>
                                        <label class="toggle"><input type="checkbox" checked="" name="checkbox-toggle-1"><i></i>Send me email notification for the latest update</label>
                                        <hr>
                                        <label class="toggle"><input type="checkbox" checked="" name="checkbox-toggle-1"><i></i>Send me email notification when a user sends me message</label>
                                        <hr>
                                        <label class="toggle"><input type="checkbox" checked="" name="checkbox-toggle-1"><i></i>Receive our monthly newsletter</label>
                                        <hr>    
                                        <button type="button" class="btn-u btn-u-default">Reset</button>
                                        <button class="btn-u" type="submit">Save Changes</button>
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