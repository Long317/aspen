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
                                <li class="active"><a data-toggle="tab" href="#deletemovie">Delete movie</a></li>
                                <li><a data-toggle="tab" href="#editmovie">Edit movie</a></li>
                                <li><a data-toggle="tab" href="#addmovie">Add movie</a></li>
                            </ul>    
                            <div class="tab-content">      
								 <div id="deletemovie" class="profile-edit tab-pane fade in active">
                                    <h2 class="heading-md">Delete movie</h2>
                                    <p>Please enter movie name: </p>
                                    <form class="sky-form" id="sky-form" action="searchMovie">
                                        <!--Checkout-Form-->                 

                                        <section>
                                            <label class="input">
                                                <input type="text" name="searchInputMovieName" placeholder="Movie Name">
                                            </label>
                                        </section>
               
                                        <button class="btn-u" type="submit">Search</button>
                                        <s:fielderror fieldName="searchmovienotexit"/>
                                        <!--End Checkout-Form-->
                                    </form>
                                    <form action="deleteMovie">
                                      		<s:if test="#session.ADMIN_SEARCH_MOVIE!=null">
                                      			<strong>MOVIE NAME:</strong><c:out value="${sessionScope.ADMIN_SEARCH_MOVIE.name}"/>
                                      			<br>
                                      			<strong>MOVIE GENRE:</strong><c:out value="${sessionScope.ADMIN_SEARCH_MOVIE.genre }"/> 
                                            	<input name="admin_movie_id" value="${sessionScope.ADMIN_SEARCH_MOVIE.id}" type="hidden" />
                                            	<span>
                                                	<button type="submit" class="btn-u btn-u-default" onclick="return confirm('Are you sure you want to delete the movie?')">DELETE</button>
                                            	</span>
                                            </s:if>
                                        
                                        <hr>
                                     </form>
                                </div>
                                <div id="editmovie" class="profile-edit tab-pane fade">
                                    <h2 class="heading-md">Edit Movie</h2>
                                    <p>Please enter a movie name: </p>
                                    <form class="sky-form" id="sky-form" action="searchMovie">
                                        <!--Checkout-Form-->                 

                                        <section>
                                            <label class="input">
                                                <input type="text" name="searchInputMovieName" placeholder="Movie Name">
                                            </label>
                                        </section>
               
                                        <button class="btn-u" type="submit">Search</button>
                                        <s:fielderror fieldName="searchmovienotexit"/>
                                        <!--End Checkout-Form-->
                                    </form>
                                   
                                    <s:if test="#session.ADMIN_SEARCH_MOVIE!=null">
                                    	<form class="sky-form" id="sky-form" action="editMovie">
	                                        <!--Checkout-Form-->                 
	                                        <input name="admin_movie_id" value="${sessionScope.ADMIN_SEARCH_MOVIE.id}" type="hidden" />
	                                    
	                                        <div class="row">
                                            <section class="col col-6">
                                                <label class="input">
                                                    <input type="text" name="moviename"  placeholder="Movie Name" value="${sessionScope.ADMIN_SEARCH_MOVIE.name}">
                                                </label>
                                            </section>
                                            <section class="col col-6">
                                                <label class="input">
                                                    <input type="text" name="genre" id="cvv" placeholder="Genre" value="${sessionScope.ADMIN_SEARCH_MOVIE.genre}">
                                                </label>
                                            </section>
                                        </div> 
                                         
                                        
                                        <div class="row">
                                            <section class="col col-4">
                                                <label class="input">
                                                    <input type="text" name="img_url"  placeholder="Image URL" value="${sessionScope.ADMIN_SEARCH_MOVIE.img_url}">
                                                </label>
                                            </section>
                                            <section class="col col-4">
                                                <label class="input">
                                                    <input type="text" name="synopsis" id="cvv" placeholder="Synopsis" value="${sessionScope.ADMIN_SEARCH_MOVIE.synopsis}">
                                                </label>
                                            </section>
                                            <section class="col col-4">
                                                <label class="input">
                                                    <input type="text" name="trailer_url" id="cvv" placeholder="Trailer URL" value="${sessionScope.ADMIN_SEARCH_MOVIE.trailer_url}">
                                                </label>
                                            </section>
                                        </div>   
                                        
                                        
                                                                               
                                        <div class="row">
                                            <section class="col col-4">
                                                <label class="input">
                                                    <input type="text" name="release_time"  placeholder="Release Time" value="${sessionScope.ADMIN_SEARCH_MOVIE.release_time}">
                                                </label>
                                            </section>
                                            <section class="col col-4">
                                                <label class="input">
                                                    <input type="text" name="rating" id="cvv" placeholder="Rating" value="${sessionScope.ADMIN_SEARCH_MOVIE.rating}">
                                                </label>
                                            </section>
                                            <section class="col col-4">
                                                <label class="input">
                                                    <input type="text" name="length" id="cvv" placeholder="Length" value="${sessionScope.ADMIN_SEARCH_MOVIE.length}">
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
                                    <h2 class="heading-md">Add Movie</h2>
                                    <p>Below are the required information for a movie.</p>
                                    
                                    <form class="sky-form" id="sky-form" action="addMovie">
                                        <!--Checkout-Form-->                 
                                        
                                        <div class="row">
                                            <section class="col col-6">
                                                <label class="input">
                                                    <input type="text" name="moviename"  placeholder="Name">
                                                </label>
                                            </section>
                                            <section class="col col-6">
                                                <label class="input">
                                                    <input type="text" name="genre" id="cvv" placeholder="Genre">
                                                </label>
                                            </section>
                                        </div> 
                                         
                                        
                                        <div class="row">
                                            <section class="col col-4">
                                                <label class="input">
                                                    <input type="text" name="img_url"  placeholder="Image URL">
                                                </label>
                                            </section>
                                            <section class="col col-4">
                                                <label class="input">
                                                    <input type="text" name="synopsis" id="cvv" placeholder="Synopsis">
                                                </label>
                                            </section>
                                            <section class="col col-4">
                                                <label class="input">
                                                    <input type="text" name="trailer_url" id="cvv" placeholder="Trailer URL">
                                                </label>
                                            </section>
                                        </div>   
                                        
                                        
                                                                               
                                        <div class="row">
                                            <section class="col col-4">
                                                <label class="input">
                                                    <input type="text" name="release_time"  placeholder="Release Time">
                                                </label>
                                            </section>
                                            <section class="col col-4">
                                                <label class="input">
                                                    <input type="text" name="rating" id="cvv" placeholder="Rating">
                                                </label>
                                            </section>
                                            <section class="col col-4">
                                                <label class="input">
                                                    <input type="text" name="length" id="cvv" placeholder="Length">
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