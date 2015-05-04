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
                    <li class="list-group-item">
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
                        <a href="admin_settings.jsp"><i class="fa fa-cog"></i> Settings</a>
                    </li> 
                    <li class="list-group-item active">
                        <a href="admin_movie.jsp"><i class="fa fa-cog"></i> Manage Movie</a>
                    </li>
                    <li class="list-group-item">
                        <a href="admin_manage_customer.jsp"><i class="fa fa-cog"></i> Manage User</a>
                    </li>

                </ul>   


            </div>
            <!--End Left Sidebar-->
     
             <div class="col-md-9">
                    <!--Profile Body-->
                    <div class="profile-body margin-bottom-20">
                        <div class="tab-v1">
                            <ul class="nav nav-justified nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#deletemovie">Delete customer</a></li>
                                <li><a data-toggle="tab" href="#editmovie">Edit customer</a></li>
                                <li><a data-toggle="tab" href="#addmovie">Add customer</a></li>
                            </ul>    
                            <div class="tab-content">      
                                 <div id="deletemovie" class="profile-edit tab-pane fade in active">
                                    <h2 class="heading-md">Delete customer</h2>
                                    <p>Please enter customer email: </p>
                                    <form class="sky-form" id="sky-form" action="searchCus">
                                        <!--Checkout-Form-->                 

                                        <section>
                                            <label class="input">
                                                <input type="text" name="searchInput" placeholder="Customer Email">
                                            </label>
                                        </section>
               
                                        <button class="btn-u" type="submit">Search</button>
                                        <s:fielderror fieldName="searchmovienotexit"/>
                                        <!--End Checkout-Form-->
                                    </form>
                                    <form action="deleteCus">
                                            <s:if test="#session.SEARCH_GENERAL_CUSTOMERS!=null">
                                                <strong>CUSTOMER USERNAME:</strong><c:out value="${sessionScope.SEARCH_GENERAL_CUSTOMERS.user_name}"/> 
                                                <br>
                                                <strong>CUSTOMER FIRST NAME:</strong><c:out value="${sessionScope.SEARCH_GENERAL_CUSTOMERS.first_name}"/> 
                                                <br>
                                                <strong>CUSTOMER LAST NAME:</strong><c:out value="${sessionScope.SEARCH_GENERAL_CUSTOMERS.last_name}"/> 
                                                <br>
                                                <input name="cus_id" value="${sessionScope.SEARCH_GENERAL_CUSTOMERS.id}" type="hidden" />
                                                <span>
                                                    <button type="submit" onclick="return confirm('Are you sure you want to delete the customer?');" class="btn-u btn-u-default">DELETE</button>
                                                </span> 
                                            </s:if>
                                            <s:else> 
                                                <strong>SEARCH_GENERAL_CUSTOMERS not found</strong>
                                            </s:else>
                                        
                                        <hr>
                                     </form>
                                </div>
                                <div id="editmovie" class="profile-edit tab-pane fade">
                                    <h2 class="heading-md">Edit Customer</h2>
                                    <p>Please enter a customer email: </p>
                                    <form class="sky-form" id="sky-form" action="searchCus">
                                        <!--Checkout-Form-->                 

                                        <section>
                                            <label class="input">
                                                <input type="text" name="searchInput" placeholder="Customer Email">
                                            </label>
                                        </section>
               
                                        <button class="btn-u" type="submit">Search</button>
                                      <!--   <s:fielderror fieldName="searchmovienotexit"/> -->
                                        <!--End Checkout-Form-->
                                    </form>
               
             
                                    <s:if test="#session.SEARCH_GENERAL_CUSTOMERS!=null">
                                        <form class="sky-form" id="sky-form" action="editCus">
                                            <!--Checkout-Form-->                 
                                            <input name="cus_id" value="<c:out value='${sessionScope.SEARCH_GENERAL_CUSTOMERS.id}'/> " type="hidden" />
                                         
                                        
                                        <div class="row">
                                            <section class="col col-4">
                                                <label class="input">
                                                    <input type="text" name="user_name" value="<c:out value='${sessionScope.SEARCH_GENERAL_CUSTOMERS.user_name}'/> " placeholder="User Name">
                                                </label>
                                            </section>

                                             <section class="col col-4">
                                                <label class="input">
                                                    <input type="text" name="email" value="<c:out value='${sessionScope.SEARCH_GENERAL_CUSTOMERS.email}'/> " placeholder="email">
                                                </label>
                                            </section>

                                             <section class="col col-4">
                                                <label class="input">
                                                    <input type="text" name="password" value="<c:out value='${sessionScope.SEARCH_GENERAL_CUSTOMERS.password}'/> "placeholder="Password">
                                                </label>
                                            </section>

                                           </div>       
                                        <button type="button" class="btn-u btn-u-default">Cancel</button>
                                        <button class="btn-u" type="submit">Save Changes</button>
                                        <!--End Checkout-Form-->
                                        </form>
                                      
                                    </s:if>      
                                </div>
                                
                                <!-- between editMovie and addMovie -->
                                
                                <div id="addmovie" class="profile-edit tab-pane fade">
                                    <h2 class="heading-md">Add Customer</h2>
                                    <p>Below are the required information for a customer.</p>
                                    <form class="sky-form" id="sky-form" action="addCus">
                                        <!--Checkout-Form-->                 
                                        
                                        
                                        <div class="row">
                                            <section class="col col-4">
                                                <label class="input">
                                                    <input type="text" name="user_name"  placeholder="User Name">
                                                </label>
                                            </section>

                                             <section class="col col-4">
                                                <label class="input">
                                                    <input type="text" name="email"  placeholder="email">
                                                </label>
                                            </section>

                                             <section class="col col-4">
                                                <label class="input">
                                                    <input type="text" name="password"  placeholder="Password">
                                                </label>
                                            </section>

                                            <section class="col col-4">
                                                <label class="input">
                                                    <input type="text" name="confirmpass"  placeholder="Confirm Password">
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