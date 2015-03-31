   <%@ taglib prefix="s" uri="/struts-tags" %>
<!--=== Header ===-->    
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
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
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
												<div class="col-md-3 equal-height-in">
													<ul class="list-unstyled equal-height-list">
														<li><h3>Default</h3></li>

														<!-- Default -->
														<li><a href="portfolio_single_item.html">Portfolio Item Option</a></li>
														<li><a href="portfolio_item.html">Portfolio Item Option 1</a></li>
														<li><a href="portfolio_item1.html">Portfolio Item Option 2</a></li>
														<li><a href="portfolio_2_column.html">Portfolio 2 Columns</a></li>
														<li><a href="portfolio_3_column.html">Portfolio 3 Columns</a></li>
														<li><a href="portfolio_4_column.html">Portfolio 4 Columns</a></li>
														<li><a href="portfolio_text_blocks.html">Portfolio 4 Columns With Text</a></li>
														
														<!-- End Default -->
													</ul>
												</div>
												<div class="col-md-3 equal-height-in">
													<ul class="list-unstyled equal-height-list">
														<li><h3>2 Columns</h3></li>
												   
														<!-- 2 Columns -->
														<li><a href="portfolio_2_columns_grid_no_space.html">2 Columns No Sapce</a></li>
														<li><a href="portfolio_2_columns_grid_text.html">2 Columns Grid Text</a></li>
														<li><a href="portfolio_2_columns_grid.html">2 Columns Grid</a></li>

														<!-- End 2 Columns -->

														<li class="big-screen-space"></li>
														
														<li><h3>3 Columns</h3></li>
													
														<!-- 3 Columns -->
														<li><a href="portfolio_3_columns_grid_no_space.html">3 Columns No Sapce</a></li>
														<li><a href="portfolio_3_columns_grid_text.html">3 Columns Grid Text</a></li>
														<li><a href="portfolio_3_columns_grid.html">3 Columns Grid</a></li>
														<!-- End 3 Columns -->
													</ul>                                
												</div>
												<div class="col-md-3 equal-height-in">
													<ul class="list-unstyled equal-height-list">
														<li><h3>4 Columns</h3></li>
														<!-- 4 Columns -->
														<li><a href="portfolio_4_columns_fullwidth_no_space.html">4 Columns Full Width No Sapce</a></li>
														<li><a href="portfolio_4_columns_fullwidth_text.html">4 Columns Fullwidth Grid Text</a></li>
														<li><a href="portfolio_4_columns_fullwidth.html">4 Columns Fullwidth Grid</a></li>
														<li><a href="portfolio_4_columns_grid_no_space.html">4 Columns No Sapce</a></li>
														<li><a href="portfolio_4_columns_grid_text.html">4 Columns Grid Text</a></li>
														<li><a href="portfolio_4_columns_grid.html">4 Columns Grid</a></li>
														<!-- End 4 Columns -->
													</ul>                                
												</div>
												<div class="col-md-3 equal-height-in">
													<ul class="list-unstyled equal-height-list">
														<li><h3>5 Columns</h3></li>
												   
														<!-- 5 Columns -->
														<li><a href="portfolio_5_columns_fullwidth_no_space.html">5 Columns Fullwidth No Sapce</a></li>
														<li><a href="portfolio_5_columns_fullwidth_text.html">5 Columns Fullwidth Grid Text</a></li>
														<li><a href="portfolio_5_columns_fullwidth.html">5 Columns Fullwidth Grid</a></li>
														<!-- End 5 Columns -->

														<li class="big-screen-space"></li>
														
														<li><h3>6 Columns</h6></li>
													
														<!-- 6 Columns -->
														<li><a href="portfolio_6_columns_fullwidth_no_space.html">6 Columns Fullwidth No Sapce</a></li>
														<li><a href="portfolio_6_columns_fullwidth_text.html">6 Columns Fullwidth Grid Text</a></li>
														<li><a href="portfolio_6_columns_fullwidth.html">6 Columns Fullwidth Grid</a></li>
														<!-- End 6 Columns -->
													</ul>                                
												</div>
											</div>
										</div>    
									</div>    
								</li>
							</ul>
						</li>
						<!-- End Movie times plus tickets -->

						<!-- MOVIE NEWS -->
						<li class="dropdown">
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
								MOVIE NEWS
							</a>
							<ul class="dropdown-menu">
								<li><a href="blog_page.html">Blog Page</a></li>
								<li><a href="blog_large.html">Blog Large</a></li>
								<li><a href="blog_medium.html">Blog Medium</a></li>
								<li><a href="blog_full_width.html">Blog Full Width</a></li>
								<li><a href="blog_timeline.html">Blog Timeline</a></li>
								<li><a href="blog_masonry_3col.html">Masonry Grid Blog</a></li>
								<li><a href="blog_right_sidebar.html">Blog Right Sidebar</a></li>
								<li><a href="blog_left_sidebar.html">Blog Left Sidebar</a></li>
								<li><a href="blog_item_option1.html">Blog Item Option 1</a></li>
								<li><a href="blog_item_option2.html">Blog Item Option 2</a></li>
							</ul>
						</li>
						<!-- End MOVIE NEWS -->
						<!-- MY ACCOUNT -->
						<li style="display:none" class="dropdown">
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
								MY ACCOUNT
							</a>
							<ul class="dropdown-menu">
								<li><a href="page_contact2.html">Manage My Account</a></li>
								<li><a href="page_contact1.html">Order History</a></li>
								<li><a href="page_contact_advanced.php">View Favorite Movies</a></li>
								<li><a href="page_contact2.html">View Favorite Theatres</a></li>
								<li><a href="page_contact3.html">Log Out</a></li>
							</ul>
						</li>                    
						<!-- End MY ACCOUNT -->

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
                                <div class="input-group animated fadeInDown">
                                    <input id="mainSearch" type="text" class="form-control" placeholder="Enter City + State, ZIP Code, or Movie">
                                    <span class="input-group-btn">
                                        <button class="btn-u" id="searGo" type="button">Go</button>
                                    </span>
                                </div>
                            </div>    
                     </div> 
                        <!-- End Search Block -->
<!-- End Search Block -->