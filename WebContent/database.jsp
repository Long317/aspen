<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>Unify | Welcome...</title>

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
                        <a href="profile.html"><i class="fa fa-bar-chart-o"></i> Overall</a>
                    </li>
                    <li class="list-group-item">
                    <a href="admin.html"><i class="fa fa-user"></i> Profile</a>
                    </li> 
                    <li class="list-group-item">
                        <a href="inventory_report.html"><i class="fa fa-bar-chart-o"></i> Inventory Report</a>
                    </li>
                                                         
                    <li class="list-group-item active">
                        <a href="database.html"><i class="fa fa-cubes"></i> Database</a>
                    </li>
                    <li class="list-group-item">
                        <a href="ad_control.html"><i class="fa fa-comments"></i> Advertisement Control</a>
                    </li>                                        
                    <li class="list-group-item">
                        <a href="upcoming_tasks.html"><i class="fa fa-history"></i> Upcoming Tasks</a>
                    </li>                                       
                    <li class="list-group-item">
                        <a href="settings.html"><i class="fa fa-cog"></i> Settings</a>
                    </li> 

                </ul>   


            </div>
            <!--End Left Sidebar-->
     
            
             <div class="col-md-9">
                <!--Profile Body-->
               <div>
                    <h1>Hoticket Database</h1>
                    <h2>At a minimum, the system will include the provisions for site administrators to update and correct information in the database.</h2>
                                <!-- BEGIN PAGE CONTENT-->
            <div class="row">
                <div class="col-md-12">
                    <!-- BEGIN EXAMPLE TABLE PORTLET-->
                    <div class="portlet box blue">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-edit"></i>Editable Table
                            </div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse">
                                </a>
                                <a href="#portlet-config" data-toggle="modal" class="config">
                                </a>
                                <a href="javascript:;" class="reload">
                                </a>
                                <a href="javascript:;" class="remove">
                                </a>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="table-toolbar">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="btn-group">
                                            <button id="sample_editable_1_new" class="btn green">
                                            Add New <i class="fa fa-plus"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="btn-group pull-right">
                                            <button class="btn dropdown-toggle" data-toggle="dropdown">Tools <i class="fa fa-angle-down"></i>
                                            </button>
                                            <ul class="dropdown-menu pull-right">
                                                <li>
                                                    <a href="#">
                                                    Print </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                    Save as PDF </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                    Export to Excel </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <table class="table table-striped table-hover table-bordered" id="sample_editable_1">
                            <thead>
                            <tr>
                                <th>
                                     Username
                                </th>
                                <th>
                                     Full Name
                                </th>
                                <th>
                                     Points
                                </th>
                                <th>
                                     Notes
                                </th>
                                <th>
                                     Edit
                                </th>
                                <th>
                                     Delete
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                     alex
                                </td>
                                <td>
                                     Alex Nilson
                                </td>
                                <td>
                                     1234
                                </td>
                                <td class="center">
                                     power user
                                </td>
                                <td>
                                    <a class="edit" href="javascript:;">
                                    Edit </a>
                                </td>
                                <td>
                                    <a class="delete" href="javascript:;">
                                    Delete </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                     lisa
                                </td>
                                <td>
                                     Lisa Wong
                                </td>
                                <td>
                                     434
                                </td>
                                <td class="center">
                                     new user
                                </td>
                                <td>
                                    <a class="edit" href="javascript:;">
                                    Edit </a>
                                </td>
                                <td>
                                    <a class="delete" href="javascript:;">
                                    Delete </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                     nick12
                                </td>
                                <td>
                                     Nick Roberts
                                </td>
                                <td>
                                     232
                                </td>
                                <td class="center">
                                     power user
                                </td>
                                <td>
                                    <a class="edit" href="javascript:;">
                                    Edit </a>
                                </td>
                                <td>
                                    <a class="delete" href="javascript:;">
                                    Delete </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                     goldweb
                                </td>
                                <td>
                                     Sergio Jackson
                                </td>
                                <td>
                                     132
                                </td>
                                <td class="center">
                                     elite user
                                </td>
                                <td>
                                    <a class="edit" href="javascript:;">
                                    Edit </a>
                                </td>
                                <td>
                                    <a class="delete" href="javascript:;">
                                    Delete </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                     webriver
                                </td>
                                <td>
                                     Antonio Sanches
                                </td>
                                <td>
                                     462
                                </td>
                                <td class="center">
                                     new user
                                </td>
                                <td>
                                    <a class="edit" href="javascript:;">
                                    Edit </a>
                                </td>
                                <td>
                                    <a class="delete" href="javascript:;">
                                    Delete </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                     gist124
                                </td>
                                <td>
                                     Nick Roberts
                                </td>
                                <td>
                                     62
                                </td>
                                <td class="center">
                                     new user
                                </td>
                                <td>
                                    <a class="edit" href="javascript:;">
                                    Edit </a>
                                </td>
                                <td>
                                    <a class="delete" href="javascript:;">
                                    Delete </a>
                                </td>
                            </tr>
                            </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- END EXAMPLE TABLE PORTLET-->
                </div>
            </div>
        </div>
            <!-- END PAGE CONTENT -->
                </div>
        </div><!--/end row-->
    </div><!--/container-->    
    <!--=== End Profile ===-->

    <!--=== Footer Version 1 ===-->
    <div class="footer-v1">
        <div class="footer">
            <div class="container">
                <div class="row">
                    <!-- About -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <a href="index.html"><img id="logo-footer" class="footer-logo" src="assets/img/logo3.png" alt=""></a>
                        <p>About Unify dolor sit amet, consectetur adipiscing elit. Maecenas eget nisl id libero tincidunt sodales.</p>
                        <p>Duis eleifend fermentum ante ut aliquam. Cras mi risus, dignissim sed adipiscing ut, placerat non arcu.</p>    
                    </div><!--/col-md-3-->
                    <!-- End About -->

                    <!-- Latest -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <div class="posts">
                            <div class="headline"><h2>Latest Posts</h2></div>
                            <ul class="list-unstyled latest-list">
                                <li>
                                    <a href="#">Incredible content</a>
                                    <small>May 8, 2014</small>
                                </li>
                                <li>
                                    <a href="#">Best shoots</a>
                                    <small>June 23, 2014</small>
                                </li>
                                <li>
                                    <a href="#">New Terms and Conditions</a>
                                    <small>September 15, 2014</small>
                                </li>
                            </ul>
                        </div>
                    </div><!--/col-md-3-->  
                    <!-- End Latest --> 
                    
                    <!-- Link List -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <div class="headline"><h2>Useful Links</h2></div>
                        <ul class="list-unstyled link-list">
                            <li><a href="#">About us</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">Portfolio</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">Latest jobs</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">Community</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">Contact us</a><i class="fa fa-angle-right"></i></li>
                        </ul>
                    </div><!--/col-md-3-->
                    <!-- End Link List -->                    

                    <!-- Address -->
                    <div class="col-md-3 map-img md-margin-bottom-40">
                        <div class="headline"><h2>Contact Us</h2></div>                         
                        <address class="md-margin-bottom-40">
                            25, Lorem Lis Street, Orange <br />
                            California, US <br />
                            Phone: 800 123 3456 <br />
                            Fax: 800 123 3456 <br />
                            Email: <a href="mailto:info@anybiz.com" class="">info@anybiz.com</a>
                        </address>
                    </div><!--/col-md-3-->
                    <!-- End Address -->
                </div>
            </div> 
        </div><!--/footer-->

        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">                     
                        <p>
                            2014 &copy; All Rights Reserved.
                           <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a>
                        </p>
                    </div>

                    <!-- Social Links -->
                    <div class="col-md-6">
                        <ul class="footer-socials list-inline">
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Facebook">
                                    <i class="fa fa-facebook"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Skype">
                                    <i class="fa fa-skype"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Google Plus">
                                    <i class="fa fa-google-plus"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Linkedin">
                                    <i class="fa fa-linkedin"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Pinterest">
                                    <i class="fa fa-pinterest"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Twitter">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Dribbble">
                                    <i class="fa fa-dribbble"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- End Social Links -->
                </div>
            </div> 
        </div><!--/copyright-->
    </div>     
    <!--=== End Footer Version 1 ===-->
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