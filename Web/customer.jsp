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
                    <li class="list-group-item active">
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
                <div class="profile-body">
                    <div class="row margin-bottom-20">
                        <!--Profile Post-->
                        <div class="col-sm-6">
                            <div class="panel panel-profile no-bg">
                                   <div class="panel-heading overflow-h">
                                         <h2 class="panel-title heading-sm pull-left"><i class="fa fa-tasks"></i>My Favorite Movie</h2>
                                         <a href="favorite_movie.jsp" class="btn-u btn-brd btn-brd-hover btn-u-dark btn-u-xs pull-right">View All</a>
                                   </div>
                                <div id="scrollbar" class="panel-body contentHolder">
                                
                                  <c:forEach var="movie" items="${sessionScope.login.favorite_movies}" varStatus="status" begin="0">
                              
                                  	 <div class="profile-blog blog-border">
                                        <img class="rounded-x" src="assets/img/testimonials/t.jpg" alt="">
                                        <div class="name-location">
                                           <c:out value="${movie.name}"></c:out>  
                                            
                                        </div>
                                 
                                   	 </div>
                                   </c:forEach>
                                </div>
                            </div>        
                        </div>
                        <!--End Profile Post-->

                                                <!--Profile Post-->
                        <div class="col-sm-6">
                            <div class="panel panel-profile no-bg">
                                   <div class="panel-heading overflow-h">
                           				<h2 class="panel-title heading-sm pull-left"><i class="fa fa-tasks"></i>My Favorite Theatre</h2>
                            			<a href="favorite_theatre.jsp" class="btn-u btn-brd btn-brd-hover btn-u-dark btn-u-xs pull-right">View All</a>
                                   </div>
                                <div id="scrollbar" class="panel-body contentHolder">
                                 <c:forEach var="theatre" items="${sessionScope.login.favorite_theatres}" varStatus="status" begin="0">
                              
                                  	 <div class="profile-blog blog-border">
                                        <img class="rounded-x" src="assets/img/testimonials/t.jpg" alt="">
                                        <div class="name-location">
                                           <c:out value="${theatre.name}"></c:out>  
                                            
                                        </div>
                                 
                                   	 </div>
                                   </c:forEach>
                                </div>  
                           </div>
                        <!--End Profile Post-->
                        </div>
                    </div><!--/end row-->
                    
                    
                    <div class="row margin-bottom-20">
                        <!--Profile Post-->
                        <div class="col-sm-6">
                            <div class="panel panel-profile no-bg">
                                   <div class="panel-heading overflow-h">
                            <h2 class="panel-title heading-sm pull-left"><i class="fa fa-tasks"></i>My Movie Comment</h2>
                            <a href="customer_movie_comments.jsp" class="btn-u btn-brd btn-brd-hover btn-u-dark btn-u-xs pull-right">View All</a>
                        </div>
                                <div id="scrollbar" class="panel-body contentHolder">
                              <c:forEach var="movieratings" items="${sessionScope.login.movie_ratings}" varStatus="status" begin="0">
                              
                                  	 <div class="profile-blog blog-border">
                                        <img class="rounded-x" src="assets/img/testimonials/t.jpg" alt="">
                                        <div class="name-location">
                                           <c:out value="${movieratings.movie.name}"></c:out>  
                                           <c:out value="${movieratings.comment}"></c:out>  
                                        </div>
                                 
                                   	 </div>
                                   </c:forEach>
                                </div>
                            </div>        
                        </div>
                        <!--End Profile Post-->

                        <!--Profile Event-->
                        <div class="col-sm-6 md-margin-bottom-20">
                            <div class="panel panel-profile no-bg">
                                <div class="panel-heading overflow-h">
                                    <h2 class="panel-title heading-sm pull-left"><i class="fa fa-briefcase"></i>My Purchase History</h2>
                            <a href="purchase_history.jsp" class="btn-u btn-brd btn-brd-hover btn-u-dark btn-u-xs pull-right">View All</a>
                                </div>
                                <div id="scrollbar2" class="panel-body contentHolder">
                                <c:forEach var="payhistory" items="${sessionScope.login.pay_history}" varStatus="status" begin="0">
                                    <div class="profile-event">
                                        <div class="date-formats">
                                            <small> <c:out value="${payhistory.date}"></c:out>  </small>
                                        </div>
                                        <div class="overflow-h">
                                            <h3 class="heading-xs"> <c:out value="${payhistory.showing.movie.name}"></c:out></h3>
                                        </div>    
                                    </div>
                                    </c:forEach>
                                    
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