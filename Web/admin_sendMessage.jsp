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
   <%@ include file="manager_header.jsp" %>  

    <!--=== Profile ===-->
    <div class="profile container content">
    	<div class="row">
            <!--Left Sidebar-->
                 <!-- Begin Sidebar Menu -->
            <div class="col-md-3">
                <img class="img-responsive profile-img margin-bottom-20" src="assets/img/team/5.jpg" alt="">
                <ul class="list-group sidebar-nav-v1 margin-bottom-40" id="sidebar-nav-1">
                      <li class="list-group-item">
                        <a href="admin.jsp"><i class="fa fa-bar-chart-o"></i> Overall</a>
                    </li>
                    <li class="list-group-item">
                    <a href="admin_profile.jsp"><i class="fa fa-user"></i> Profile</a>
                    </li> 
                    <li class="list-group-item active">
                       <a href="admin_sendMessage.jsp"><i class="fa fa-bar-chart-o"></i> Send Movie Info</a>
                    </li>
                                                         
                    <li class="list-group-item">
                        <a href="admin_database.jsp"><i class="fa fa-cubes"></i> Database</a>
                    </li>
                    <li class="list-group-item">
                        <a href="admin_ad_control.jsp"><i class="fa fa-comments"></i> Advertisement Control</a>
                    </li>                                        
                    <li class="list-group-item">
                        <a href="admin_upcoming_tasks.jsp"><i class="fa fa-history"></i> Upcoming Tasks</a>
                    </li>                                       
                    <li class="list-group-item">
                        <a href="admin_manage_customer.jsp"><i class="fa fa-cog"></i> Manage User</a>
                    </li> 

                </ul>   


            </div>
            <!--End Left Sidebar-->
     
            
            <div class="col-md-9">
                <!--Profile Body-->
                <div class="profile-body">
                         <!--/container-->
            <div class="container content"> 
                <div class="headline"><h2>Seding email to subscriptor</h2></div> 
                    <div class="row">
                        <form action="sendMovieInfo" method="post">
                        <div class="row">
                          subject:<input type="text" name="subject"></input>
                        </div>
                        <div class="row">
                            <br/><br/>
                          body:<textarea rows="4" cols="40" placeholder="Enter the body info." maxlength="490" name ="body"></textarea></td>
                      </div>
                       <div class="row">
                        <br/>
                          <input type="submit" value="Submit">
                        </div>
                        </form>
                    </div>

                </div>
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