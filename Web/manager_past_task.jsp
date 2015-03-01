<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>Manager| Past Task</title>

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

    <!--=== Profile ===-->
    <div class="profile container content">
    	<div class="row">
         <!--Left Sidebar-->
                 <!-- Begin Sidebar Menu -->
            <div class="col-md-3">
                <img class="img-responsive profile-img margin-bottom-20" src="assets/img/team/5.jpg" alt="">
                <ul class="list-group sidebar-nav-v1 margin-bottom-40" id="sidebar-nav-1">
                    <li class="list-group-item">
                        <a href="manager.jsp"><i class="fa fa-bar-chart-o"></i> Overall</a>
                    </li>
                    <li class="list-group-item">
                        <a href="manager_profile.jsp"><i class="fa fa-user"></i> My Profile</a>
                    </li>
                    <!-- My Tasks UI -->
                    <li class="list-group-item list-toggle active">                   
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
                <div class="profile-body">
                    <!--Service Block v3-->
                    <div class="row margin-bottom-12">
                      
                          <iframe src="https://www.google.com/calendar/embed?height=300&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=cg4od0ll2v91dtp8scack73fps%40group.calendar.google.com&amp;color=%235229A3&amp;ctz=America%2FNew_York" style=" border-width:0 " width="800" height="500" frameborder="0" scrolling="no"></iframe>
                    </div><!--/end row-->
                    <!--End Service Block v3-->

                    <hr>

                    <div class="row margin-bottom-20">
                        <!--Profile Post-->
                        <div class="col-sm-6">
                            <div class="panel panel-profile no-bg">
                                   <div class="panel-heading overflow-h">
                            <h2 class="panel-title heading-sm pull-left"><i class="fa fa-tasks"></i>Contacts</h2>
                            <a href="profile_users.html" class="btn-u btn-brd btn-brd-hover btn-u-dark btn-u-xs pull-right">View All</a>
                        </div>
                                <div id="scrollbar" class="panel-body contentHolder">
                              <div class="profile-blog blog-border">
                                        <img class="rounded-x" src="assets/img/testimonials/img1.jpg" alt="">
                                        <div class="name-location">
                                            <strong>Mikel Andrews</strong>
                                            <span><i class="fa fa-map-marker"></i><a href="#">California,</a> <a href="#">US</a></span>
                                        </div>
                                        <div class="clearfix margin-bottom-20"></div>    
                                        <p>Donec non dignissim eros. Mauris faucibus turpis volutpat sagittis rhoncus. Pellentesque et rhoncus sapien, sed ullamcorper justo.</p>
                                        <hr>
                                        <ul class="list-inline share-list">
                                            <li><i class="fa fa-bell"></i><a href="#">12 Notifications</a></li>
                                            <li><i class="fa fa-group"></i><a href="#">54 Followers</a></li>
                                            <li><i class="fa fa-twitter"></i><a href="#">Retweet</a></li>
                                        </ul>
                                    </div>
                                    <div class="profile-blog blog-border">
                                        <img class="rounded-x" src="assets/img/testimonials/img1.jpg" alt="">
                                        <div class="name-location">
                                            <strong>Mikel Andrews</strong>
                                            <span><i class="fa fa-map-marker"></i><a href="#">California,</a> <a href="#">US</a></span>
                                        </div>
                                        <div class="clearfix margin-bottom-20"></div>    
                                        <p>Donec non dignissim eros. Mauris faucibus turpis volutpat sagittis rhoncus. Pellentesque et rhoncus sapien, sed ullamcorper justo.</p>
                                        <hr>
                                        <ul class="list-inline share-list">
                                            <li><i class="fa fa-bell"></i><a href="#">12 Notifications</a></li>
                                            <li><i class="fa fa-group"></i><a href="#">54 Followers</a></li>
                                            <li><i class="fa fa-twitter"></i><a href="#">Retweet</a></li>
                                        </ul>
                                    </div>
                                    <div class="profile-blog blog-border">
                                        <img class="rounded-x" src="assets/img/testimonials/img1.jpg" alt="">
                                        <div class="name-location">
                                            <strong>Mikel Andrews</strong>
                                            <span><i class="fa fa-map-marker"></i><a href="#">California,</a> <a href="#">US</a></span>
                                        </div>
                                        <div class="clearfix margin-bottom-20"></div>    
                                        <p>Donec non dignissim eros. Mauris faucibus turpis volutpat sagittis rhoncus. Pellentesque et rhoncus sapien, sed ullamcorper justo.</p>
                                        <hr>
                                        <ul class="list-inline share-list">
                                            <li><i class="fa fa-bell"></i><a href="#">12 Notifications</a></li>
                                            <li><i class="fa fa-group"></i><a href="#">54 Followers</a></li>
                                            <li><i class="fa fa-twitter"></i><a href="#">Retweet</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>        
                        </div>
                        <!--End Profile Post-->

                        <!--Profile Event-->
                        <div class="col-sm-6 md-margin-bottom-20">
                            <div class="panel panel-profile no-bg">
                                <div class="panel-heading overflow-h">
                                    <h2 class="panel-title heading-sm pull-left"><i class="fa fa-briefcase"></i>Upcoming Events</h2>
                                    <a href="#"><i class="fa fa-cog pull-right"></i></a>
                                </div>
                                <div id="scrollbar2" class="panel-body contentHolder">
                                    <div class="profile-event">
                                        <div class="date-formats">
                                            <span>25</span>
                                            <small>05, 2014</small>
                                        </div>
                                        <div class="overflow-h">
                                            <h3 class="heading-xs"><a href="#">GitHub seminars in Japan.</a></h3>
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry printing.</p>
                                        </div>    
                                    </div>
                                    <div class="profile-event">
                                        <div class="date-formats">
                                            <span>31</span>
                                            <small>06, 2014</small>
                                        </div>
                                        <div class="overflow-h">
                                            <h3 class="heading-xs"><a href="#">Bootstrap Update</a></h3>
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry printing.</p>
                                        </div>    
                                    </div>
                                    <div class="profile-event">
                                        <div class="date-formats">
                                            <span>07</span>
                                            <small>08, 2014</small>
                                        </div>
                                        <div class="overflow-h">
                                            <h3 class="heading-xs"><a href="#">Apple Conference</a></h3>
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry printing.</p>
                                        </div>    
                                    </div>
                                    <div class="profile-event">
                                        <div class="date-formats">
                                            <span>22</span>
                                            <small>10, 2014</small>
                                        </div>
                                        <div class="overflow-h">
                                            <h3 class="heading-xs"><a href="#">Backend Meeting</a></h3>
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry printing.</p>
                                        </div>    
                                    </div>
                                    <div class="profile-event">
                                        <div class="date-formats">
                                            <span>14</span>
                                            <small>11, 2014</small>
                                        </div>
                                        <div class="overflow-h">
                                            <h3 class="heading-xs"><a href="#">Google Conference</a></h3>
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry printing.</p>
                                        </div>    
                                    </div>
                                    <div class="profile-event">
                                        <div class="date-formats">
                                            <span>05</span>
                                            <small>12, 2014</small>
                                        </div>
                                        <div class="overflow-h">
                                            <h3 class="heading-xs"><a href="#">FontAwesome Update</a></h3>
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry printing.</p>
                                        </div>    
                                    </div>
                                </div>    
                            </div>
                        </div>
                        <!--End Profile Event-->
                    </div><!--/end row-->

                    <hr>
                 
                </div>
                <!--End Profile Body-->
            </div>
        </div><!--/end row-->
    </div><!--/container-->    
    <!--=== End Profile ===-->
<%@ include file="footer.jsp" %>
</div><!--/wrapper-->

<!-- JS Global Compulsory -->           
<script type="text/javascript" src="assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script> 
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="assets/plugins/counter/waypoints.min.js"></script>
<script type="text/javascript" src="assets/plugins/counter/jquery.counterup.min.js"></script> 
<!-- Datepicker Form -->
<script src="assets/plugins/sky-forms/version-2.0.1/js/jquery-ui.min.js"></script>
<!-- Scrollbar -->
<script src="assets/plugins/scrollbar/src/jquery.mousewheel.js"></script>
<script src="assets/plugins/scrollbar/src/perfect-scrollbar.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="assets/js/custom.js"></script>
<!-- JS Page Level -->           
<script type="text/javascript" src="assets/js/app.js"></script>
<script type="text/javascript" src="assets/js/plugins/datepicker.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
        App.initCounter();
        Datepicker.initDatepicker();      
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
<![endif]-->

</body>
</html>	