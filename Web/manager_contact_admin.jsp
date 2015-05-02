<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>Manager| Contact Admin</title>

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
                        <a href="manager.jsp"><i class="fa fa-bar-chart-o"></i> Overall</a>
                    </li>
                    <li class="list-group-item">
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
                    <li class="list-group-item list-toggle active">                   
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
                <!--Admin editor Body-->
                 <form action="UserInfoEdit.jsp">
                                <table class='table table-striped '>
                                    <c:forEach var="row" items="${searchResult.rows}">
                                        <tr><td > SSN </td>
                                            <td> <span id='SSN'><c:out value="${sessionScope.SSN}"/> </span></td></tr>
                                        <tr><td> First Name </td>
                                            <td> <input class="form-control" name="FirstName" type="text" value="<c:out value="${row.FirstName }"/>"> </td></tr>
                                        <tr><td> Last Name </td>
                                            <td> <input class="form-control" name="LastName" type="text" value="<c:out value="${row.LastName }"/> "></td></tr>
                                        <tr><td> Password </td>
                                            <td> <input class="form-control" name="Password" type="text" value="<c:out value="${row.Password }"/> "></td></tr>
                                        <tr><td> Street </td>
                                            <td> <input  class="form-control" name="Street" type="text" value="<c:out value="${row.Street }"/> "></td></tr>
                                        <tr><td> City </td>
                                            <td> <input  class="form-control" name="City" type="text" value="<c:out value="${row.City }"/> "></td></tr>
                                        <tr><td> State </td>
                                            <td> <input class="form-control" name="State"  type="text" value="<c:out value="${row.State }"/> "></td></tr>
                                        <tr><td> Zipcode </td>
                                            <td> <input class="form-control" name="Zipcode" type="text" value="<c:out value="${row.Zipcode }"/> "></td></tr>
                                        <tr><td> Email </td>
                                            <td> <input class="form-control" name="Email" type="text" value="<c:out value="${row.Email }"/> "></td></tr>
                                        <tr><td> Street </td>
                                            <td> <input class="form-control" name="Telephone" type="text" value="<c:out value="${row.Telephone }"/>"> </td></tr>
                                        <tr><td> PPP </td>
                                            <td> <select name="PPP" class="form-control">
                                                    <option selected value="<c:out value="${row.PPP }"/>"><c:out value="${row.PPP }"/></option>
                                                    <option  value="Super-User">Super-User</option>
                                                    <option  value="Good-User">Good-User</option>
                                                    <option  value="User-User">User-User</option>
                                                </select>
                                            </td></tr>
                                        </c:forEach>
                                    <tr><td> <input type="submit" onclick="return confirm('Are you sure you want to continue?');"  value="Submit" class='btn btn-primary' ></td>
                                        <td> <button type="button" onclick='deleteUser();'  class="btn btn-primary">Delete</button></td></tr>
                                    <tr> <span class="error" id='error'>*</span></tr>
                                </table>
                            </form>
                <!--End Admin editor Body-->
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