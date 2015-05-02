  <%@ taglib prefix="s" uri="/struts-tags" %>
  <!--Jquery lib-->
 <script type="text/javascript" src="assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="assets/plugins/jquery/jquery-migrate.min.js"></script>
		  <link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

	  <script type="text/javascript" src="http://l2.io/ip.js?var=myip"></script>

  <s:url id="movieFilter" action="movieFilter" var="movieFilter">
	<s:param name="Genre">all</s:param>
	</s:url>

  <script>
  function GoMovies(){
  	window.location.replace('<s:property value="#movieFilter"/>');
  }
   function GoMoviesNews(){
  	window.location.replace("movieNews.jsp");
  }
  </script>
<!--=== Header ===-->   
	<iframe src="http://localhost:9999/MovieChain/adHandler?site=1" scrolling="no" width="100%" height="100" align="middle">
		<a href="http://localhost:9999/MovieChain/adForwarder?image=2">
		  <img src="http://localhost:9999/MovieChain/ads/ad2.JPG" />
		</a>
	</iframe> 
	<div class="header">
		<!-- Topbar -->
		<div class="topbar">
			<div class="container">
				<!-- Topbar Navigation -->
				<ul class="loginbar pull-right">
					<li><a href="page_faq.html">Help</a></li>  
					<li class="topbar-devider"></li>
					<s:if test="#session.login== null">       
						<li style="display:inline">
 						<a href="#" data-toggle="modal" data-target="#login">login</a>
						</li> 
						<li style="display:inline"class="topbar-devider"></li>    
						<li><a href="#" data-toggle="modal" data-target="#signUp">Register</a></li> 
					</s:if>
					<s:else>     
					<li style="display:inline"><a href="page_faq.html">Hi,
					<s:property value="#session.login.user_name" />
					</a></li>
					<li style="display:inline"class="topbar-devider"></li>  
					<li style="display:inline"><a href="customer.jsp">manage account</a></li>
					<li style="display:inline"class="topbar-devider"></li>  
					<li style="display:inline"><a href="signout">sign out</a></li>
					</s:else>
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
					<a class="navbar-brand" href="index.jsp">
						<img id="logo-header" src="assets/img/logo3.png" alt="Logo">
					</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-responsive-collapse">
					<ul class="nav navbar-nav">
						<!-- Movies -->
						<li class="dropdown mega-menu-fullwidth">
							<a href='<s:property value="#movieFilter"/>' onClick="GoMovies();" class="dropdown-toggle" data-toggle="dropdown">
								Movies
							</a>
							<ul class="dropdown-menu">
								<li>
									<div class="mega-menu-content disable-icons">
										<div class="container">
											<div class="row equal-height">
												<div class="col-md-4 equal-height-in">
													<ul class="list-unstyled equal-height-list">
														<li><h3>NOW PLAYING</h3></li>

														<!-- NOW PLAYING -->
														<li><a href="feature_typo_general.html">Fifty Shades of Grey</a></li>
														<li><a href="feature_typo_headings.html"> Kingsman: The Secret Service</a></li>
														<li><a href="feature_typo_dividers.html"> The SpongeBob Movie: Sponge Out of Water</a></li>
														<li><a href="feature_typo_blockquote.html"> McFarland, USA</a></li>
														<li><a href="feature_typo_boxshadows.html"> The DUFF</a></li>
														<li><a href="feature_typo_testimonials.html"> American Sniper</a></li>
														<li><a href="feature_typo_tagline_boxes.html">Hot Tub Time Machine 2</a></li>
														<li><a href="feature_typo_grid.html">Jupiter Ascending (2015)</a></li>
														<li><a href="feature_compo_messages.html">The Imitation Game</a></li>
														<li><a href="feature_compo_labels.html">Paddington</a></li>
														<li><a href="feature_compo_media.html">Still Alice</a></li>
														<!-- NOW PLAYING -->
													</ul>
												</div>
											
												<div class="col-md-2 equal-height-in">
													<ul class="list-unstyled equal-height-list">
														<li><h3>RATING</h3></li>

												   
														<!-- RATING -->
														<li><a href="feature_form_general.html"> <img id="logo-header" src="assets/img/heart.png"></a></li>
														<li><a href="feature_form_general1.html"><img id="logo-header" src="assets/img/heart.png"><img id="logo-header" src="assets/img/heart.png"></a></li>
														<li><a href="feature_form_advanced.html"><img id="logo-header" src="assets/img/heart.png"><img id="logo-header" src="assets/img/heart.png"><img id="logo-header" src="assets/img/heart.png"></a></li>
														<li><a href="feature_form_layouts.html"><img id="logo-header" src="assets/img/heart.png"></a></li>
														<li><a href="feature_form_layouts_advanced.html"><img id="logo-header" src="assets/img/heart.png"></a></li>
														<li><a href="feature_form_states.html"><img id="logo-header" src="assets/img/heart.png"><img id="logo-header" src="assets/img/heart.png"><img id="logo-header" src="assets/img/heart.png"><img id="logo-header" src="assets/img/heart.png"></a></li>
														<li><a href="feature_form_sliders.html"><img id="logo-header" src="assets/img/heart.png"></a></li>
														<li><a href="feature_form_modals.html"><img id="logo-header" src="assets/img/heart.png"></a></li>
														<li><a href="feature_carousels.html"><img id="logo-header" src="assets/img/EmptyHeart.png"></a></li>
														<li><a href="feature_compo_charts.html"><img id="logo-header" src="assets/img/EmptyHeart.png"></a></li>
														<li><a href="feature_maps_google.html"><img id="logo-header" src="assets/img/EmptyHeart.png"></a></li>
													   
														<!-- RATING -->
													</ul>                                
												</div>

												<div class="col-md-4 equal-height-in">
													<ul class="list-unstyled equal-height-list">
														<li><h3>COMING SOON</h3></li>

														<!-- COMING SOON -->
														<li><a href="feature_form_general.html">Chappie</a></li>
														<li><a href="feature_form_general1.html"> Unfinished Business</a></li>
														<li><a href="feature_form_advanced.html"> Run All Night</a></li>
														<li><a href="feature_form_layouts.html"> The Divergent Series: Insurgent</a></li>
														<li><a href="feature_form_layouts_advanced.html"> The Gunman </a></li>
														<li><a href="feature_form_states.html"> Do You Believe?</a></li>
														<li><a href="feature_form_sliders.html">Home </a></li>
														<li><a href="feature_form_modals.html"> Get Hard</a></li>                        <li><a href="feature_carousels.html">The Longest Ride</a></li>
														<li><a href="feature_compo_charts.html"> Furious 7 </a></li>
														<li><a href="feature_maps_google.html"> The Longest Ride</a></li>
														<li><a href="feature_maps_vector.html">The Moon and the Sun</a></li>
														<!-- COMING SOON -->
													</ul>                                
												</div>

												<div class="col-md-2 equal-height-in">
													<ul class="list-unstyled equal-height-list">
														<li><h3>RATING</h3></li>

														<!-- RATING -->
														<li><a href="feature_form_general.html"> <img id="logo-header" src="assets/img/heart.png"></a></li>
														<li><a href="feature_form_general1.html"><img id="logo-header" src="assets/img/heart.png"><img id="logo-header" src="assets/img/heart.png"></a></li>
														<li><a href="feature_form_advanced.html"><img id="logo-header" src="assets/img/heart.png"><img id="logo-header" src="assets/img/heart.png"><img id="logo-header" src="assets/img/heart.png"></a></li>
														<li><a href="feature_form_layouts.html"><img id="logo-header" src="assets/img/heart.png"></a></li>
														<li><a href="feature_form_layouts_advanced.html"><img id="logo-header" src="assets/img/heart.png"></a></li>
														<li><a href="feature_form_states.html"><img id="logo-header" src="assets/img/heart.png"><img id="logo-header" src="assets/img/heart.png"><img id="logo-header" src="assets/img/heart.png"><img id="logo-header" src="assets/img/heart.png"></a></li>
														<li><a href="feature_form_sliders.html"><img id="logo-header" src="assets/img/heart.png"></a></li>
														<li><a href="feature_form_modals.html"><img id="logo-header" src="assets/img/heart.png"></a></li>
														<li><a href="feature_carousels.html"><img id="logo-header" src="assets/img/EmptyHeart.png"></a></li>
														<li><a href="feature_compo_charts.html"><img id="logo-header" src="assets/img/EmptyHeart.png"></a></li>
														<li><a href="feature_maps_google.html"><img id="logo-header" src="assets/img/EmptyHeart.png"></a></li>
														<li><a href="feature_maps_vector.html"><img id="logo-header" src="assets/img/EmptyHeart.png"></a></li>
														<!-- RATING -->
													</ul>                                
												</div>
											</div>
										</div>    
									</div>    
								</li>
							</ul>
						</li>
						<!-- End Movies -->

						<!-- Movie times plus tickets-->
						<li class="dropdown mega-menu-fullwidth">
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
								MOVIE TIMES + TICKETS
							</a>
							<ul class="dropdown-menu">
								<li>
									<div class="mega-menu-content">
										<div class="container">
											<div class="row equal-height">
                                			   <c:forEach var="i" begin="0" end="17" step="6">
												<div class="col-md-3 equal-height-in">
													<ul class="list-unstyled equal-height-list">
													<c:forEach items="${sessionScope.popular_cities}" var="city" varStatus="status" begin="${i}" end="${i+4}" step="2">
														<li><a class="location" href="search?searchInput='${city}'"><c:out value="${city}"/>
														 <c:out value="${sessionScope.popular_cities[status.index+1]}"/></a></li>
														<!-- End Default -->
													</c:forEach> 
													</ul>
												</div>
												</c:forEach>

										
											</div>
										</div>    
									</div>    
								</li>
							</ul>
						</li>
						<!-- End Movie times plus tickets -->

						<!-- MOVIE NEWS -->
						<li class="dropdown">
							<a href="movieNews.jsp" class="dropdown-toggle" data-toggle="dropdown"  onClick="GoMoviesNews();">
								MOVIE NEWS 
							</a>
						</li>
						<!-- End MOVIE NEWS -->
					</ul>
				</div><!--/navbar-collapse-->

			</div>    
		</div>            
		<!-- End Navbar -->
	</div>
	<!--=== End Header ===-->   
 <!-- Search Block -->
                     <div class="container">
                          <div class="search-open">
                          	 <div class="ui-widget">
						         
						      </div>
                            <s:form action="search">
                                <div class="input-group animated fadeInDown">
                                	<div class="ui-widget">
                                  <input id="mainSearch" name ="searchInput" type="text" class="form-control" placeholder="Enter City + State, ZIP Code, or Movie">
                                    </div>
                                    <span class="input-group-btn">
                                     <button class="btn-u searGo" id="mainSearchCon" type="submit">Go</button>
                                    </span>
                                </div>
                              </s:form>
                            </div>    
                     </div> 
<!-- End Search Block -->
	 <!--login modal-->
            <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="login" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
	       <!--Reg Block-->
    <div class="reg-block">
        <div class="reg-block-header">
            <h2>Sign In</h2>
            <ul class="social-icons text-center">
                <li><a class="rounded-x social_facebook" data-original-title="Facebook" href="#"></a></li>
                <li><a class="rounded-x social_twitter" data-original-title="Twitter" href="#"></a></li>
                <li><a class="rounded-x social_googleplus" data-original-title="Google Plus" href="#"></a></li>
                <li><a class="rounded-x social_linkedin" data-original-title="Linkedin" href="#"></a></li>
            </ul>
            <p>Don't Have Account? Click <a class="color-green" id="signup-pop">Sign Up</a> to registration.</p>            
        </div>
        <s:form action="login">
        <div class="input-group margin-bottom-20">
            <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
            <input type="text" class="form-control" name ="email" placeholder="Email">
        </div>
        <s:fielderror fieldName="email"/>
        <div class="input-group margin-bottom-20">
            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
            <input type="password" class="form-control" name="password" placeholder="Password">
        </div>
        <s:fielderror fieldName="password"/>
        <hr>                    
        <div class="row">
            <div class="col-md-12 col-md-offset-0">
                 <button class="btn-u btn-block">Log In</button>   
            </div>
        </div>
    </s:form>
    </div>
    <!--End login Block-->
		</div>
      </div>
 	</div>
	<!--end of login modal-->

		 <!--sign up modal-->
            <div class="modal fade" id="signUp" tabindex="-1" role="dialog" aria-labelledby="signUp" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
	 <!--Reg Block-->
    <div class="reg-block">
        <div class="reg-block-header">
            <h2>Sign Up</h2>
            <ul class="social-icons text-center">
                <li><a class="rounded-x social_facebook" data-original-title="Facebook" href="#"></a></li>
                <li><a class="rounded-x social_twitter" data-original-title="Twitter" href="#"></a></li>
                <li><a class="rounded-x social_googleplus" data-original-title="Google Plus" href="#"></a></li>
                <li><a class="rounded-x social_linkedin" data-original-title="Linkedin" href="#"></a></li>
            </ul>
            <p>Already Signed Up? Click <a class="color-green" id="signin-pop">Sign In</a> to login your account.</p>
        </div>
    <s:form action="register">
        <div class="input-group margin-bottom-20">
            <span class="input-group-addon"><i class="fa fa-user"></i></span>
            <input type="text" class="form-control" name="user_name"placeholder="Username">
        </div>
         <s:fielderror fieldName="username"/>
        <div class="input-group margin-bottom-20">
            <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
            <input type="text" class="form-control" name="email" placeholder="Email">
        </div>
         <s:fielderror fieldName="email"/>
        <div class="input-group margin-bottom-20">
            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
            <input type="password" class="form-control" name="password" placeholder="Password">
        </div>
         <s:fielderror fieldName="password"/>
        <div class="input-group margin-bottom-30">
            <span class="input-group-addon"><i class="fa fa-key"></i></span>
            <input type="password" class="form-control" name="confirmpass" placeholder="Confirm Password">
        </div>
              <s:fielderror fieldName="passwordnotequal"/>
        <hr>

        <div class="row" >            
            <label>
                <input type="checkbox" name="term_condition"> 
                <p>I read <a href="terms_condition.html">Terms and Conditions</a></p>
            </label>
        </div>
             <s:fielderror fieldName="termcondition"/>
                                
        <div class="row">
            <div class="col-md-12 col-md-offset-0">
                <button type="submit" class="btn-u btn-block">Register</button>                
            </div>
        </div>
        </s:form>
    </div>
    <!--End Reg Block-->
</div>
                    </div>
                </div>
<s:if test="#session.loginError== 1"> 
		<script>
		$('#login').modal('show');
		</script>
	</s:if>
		<s:if test="#session.loginError== 1"> 
		<s:set name="loginError" value="2" scope="session" />
		</s:if>
	<s:if test="#session.registerError== 1"> 
		<script>
		$('#signUp').modal('show');
		</script>
	</s:if>
	<s:if test="#session.registerError== 1"> 
		<s:set name="registerError" value="2" scope="session" />
		</s:if>
<!--end of sign up modal-->


