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
         $(function() {
            var availableTutorials = [
            "'71"
,"100 Days of Love"
,"12 Golden Ducks"
,"A Girl Like Her"
,"A La Mala"
,"Alamo: The Price of Freedom"
,"American Sniper"
,"Beyond the World Hard Drive"
,"Beyond the World of Interstellar"
,"Big Hero 6"
,"Brother's Keeper"
,"Can't Stand Losing You: Surviving The Police"
,"Chappie"
,"Cinderella (2015)"
,"Danny Collins"
,"Deli Man"
,"Detective Byomkesh Bakshy"
,"Detective K: Secret of the Lost Island"
,"Divergent"
,"Do You Believe?"
,"Effie Gray"
,"Electric Slide"
,"Fifty Shades of Grey"
,"Focus"
,"Freetown"
,"Furious 7"
,"Get Hard"
,"gone with the wind"
,"Home"
,"How to Fight in Six Inch Heels"
,"howl's moving castle"
,"Interstellar"
,"It Follows"
,"Jil"
,"Jupiter Ascending (2015)"
,"Kingsman: The Secret Service"
,"Lambert & Stamp"
,"Last Knights"
,"Let's Get Married"
,"Leviathan"
,"Lost and Love (Shi Gu)"
,"Man From Reno"
,"McFarland, USA"
,"Nannbenda"
,"NH 10"
,"Paddington"
,"Red Army"
,"Run All Night"
,"Selma"
,"SPONGEBOB SQUAREPANTS"
,"Still Alice"
,"Superfast!"
,"That Thing Called Tadhana"
,"The Divergent Series: Insurgent"
,"The DUFF"
,"The Gunman"
,"The Hobbit: The Battle of the Five Armies"
,"The Hunting Ground"
,"The Imitation Game"
,"The Lazarus Effect"
,"The Salt of the Earth"
,"The Second Best Exotic Marigold Hotel"
,"The SpongeBob Movie: Sponge Out of Water"
,"The Wedding Ringer"
,"Triumph in the Skies"
,"Unfinished Business"
,"What We Do in the Shadows"
,"While We're Young"
,"Wild"
,"Wild Tales"
,"Woman in Gold"
,"Yevade Subramanyam"
,"AMC 309 Cinema 9"
,"AMC 600 North Michigan 9"
,"AMC 84th Street 6"
,"AMC Ahwatukee 24"
,"AMC Altamonte Mall 18"
,"AMC Arapahoe Crossing 16"
,"AMC Arbor Lakes 16"
,"AMC Arizona Center 24"
,"AMC Arrowhead 14"
,"AMC Assembly Row 12"
,"AMC Atlantic Times Square 14"
,"AMC Aventura 24"
,"AMC Avenue Forsyth 12"
,"AMC Aviation 12"
,"AMC Barrett Commons 24"
,"AMC Barrywoods 24"
,"AMC Barton Creek Square 14"
,"AMC Baton Rouge 16"
,"AMC Bay Plaza Cinema 13"
,"AMC Bay Street 16"
,"AMC Bowles Crossing 12"
,"AMC Braintree 10"
,"AMC Brentwood 14"
,"AMC Burbank 16"
,"AMC Burbank Town Center 6"
,"AMC Burbank Town Center 8"
,"AMC Burlington Cinema 10"
,"AMC Carolina Pavilion 22"
,"AMC Castle Rock 12"
,"AMC Castleton Square 14"
,"AMC Center Park 8"
,"AMC Centerpoint 11"
,"AMC Centre 8"
,"AMC Century City 15"
,"AMC Cherry Creek 8"
,"AMC Chesterfield 14"
,"AMC Chicago Ridge 6"
,"AMC Chula Vista 10"
,"AMC Cinema Saver 6"
,"AMC Clearview Palace 12"
,"AMC Clifton Commons 16"
,"AMC Colonial 18"
,"AMC Columbia 14"
,"AMC Concord Mills 24"
,"AMC Coon Rapids 16"
,"AMC Courthouse Plaza 8"
,"AMC Covina 30"
,"AMC Creve Coeur 12"
,"AMC Crossroads Mall 16"
,"AMC Cupertino Square 16"
,"AMC Dartmouth Mall 11"
,"AMC Deer Valley 16"
,"AMC Deer Valley 30"
,"AMC Deerbrook 24"
,"AMC Del Amo 18"
,"AMC Deptford 8"
,"AMC Desert Ridge 18"
,"AMC Desert Star 15"
,"AMC Destin Commons 14"
,"AMC Dine-In Theatres Bridgewater 7"
,"AMC Dine-In Theatres Buckhead 6"
,"AMC Dine-in Theatres Coral Ridge 10"
,"AMC Dine-In Theatres Downtown Disney 24 (Orlando)"
,"AMC Dine-In Theatres Easton Town Center 30 & IMAX"
,"AMC Dine-In Theatres Esplanade 14"
,"AMC Dine-In Theatres Essex Green 9"
,"AMC Dine-In Theatres Marina 6"
,"AMC Dine-In Theatres Menlo Park 12"
,"AMC Dine-in Theatres Painters Crossing 9"
,"AMC Dine-In Theatres Southlands16 with Red Kitchen"
,"AMC Dine-In Theatres West Olive 16"
,"AMC Discover Mills 18"
,"AMC Downtown Disney 12 (Los Angeles)"
,"AMC Dublin Village 18"
,"AMC Dutch Square 14"
,"AMC Eastchase 9"
,"AMC Eastgate Showplace 6"
,"AMC Eastridge 15"
,"AMC Eden Prairie Mall 18"
,"AMC Elmwood Palace 20"
,"AMC Empire 25"
,"AMC Esquire 7"
,"AMC Evansville 16"
,"AMC Fallbrook 7"
,"AMC Fantasy 5"
,"AMC Fashion Valley 18"
,"AMC Festival Plaza 16"
,"AMC Fiesta Square 16"
,"AMC Firewheel 18"
,"AMC First Colony 24"
,"AMC Flatiron Crossing 14"
,"AMC Ford City 14"
,"AMC Forum 22"
,"AMC Forum 30"
,"AMC Framingham 16 with Dine-in Theatres"
,"AMC Franklin Mills Mall 14"
,"AMC Freehold Metroplex 14"
,"AMC Fullerton 20"
,"AMC Garden State 16"
,"AMC Glendora 12"
,"AMC Granite Run 8"
,"AMC Grapevine Mills 30 with Dine-in Theatres"
,"AMC Grove City 14"
,"AMC Gulf Pointe 30"
,"AMC Hamilton 10"
,"AMC Hamilton 24"
,"AMC Hammond Palace 10"
,"AMC Hampton Towne Centre 24"
,"AMC Headquarters 10"
,"AMC Highland Village 12"
,"AMC Highlands Ranch 24"
,"AMC Hoffman Center 22"
,"AMC Honey Creek 8"
,"AMC Houma Palace 10"
,"AMC Independence Commons 20"
,"AMC Indian River 24"
,"AMC Inver Grove 16"
,"AMC Irving Mall 14"
,"AMC Katy Mills 20"
,"AMC Kennedy Commons 20"
,"AMC Kent Station 14"
,"AMC Kitsap 8"
,"AMC La Jolla 12"
,"AMC Lake In The Hills 12"
,"AMC Lake Square 12"
,"AMC Lakewood Mall 12"
,"AMC Lennox Town Center 24"
,"AMC Levittown 10"
,"AMC Livonia 20"
,"AMC Loews 19th St. East 6"
,"AMC Loews 34th Street 14"
,"AMC Loews Alderwood Mall 16"
,"AMC Loews Bay Terrace 6"
,"AMC Loews Boston Common 19"
,"AMC Loews Brick Plaza 10"
,"AMC Loews Broadway 4"
,"AMC Loews Cascade Mall 14"
,"AMC Loews Cherry Hill 24"
,"AMC Loews Country Club Hills 16"
,"AMC Loews Crestwood 18"
,"AMC Loews Danbury 16"
,"AMC Loews East Hanover 12"
,"AMC Loews Factoria 8"
,"AMC Loews Foothills 15"
,"AMC Loews Fountains 18"
,"AMC Loews Fresh Meadows 7"
,"AMC Loews Galleria Metroplex 16"
,"AMC Loews Georgetown 14"
,"AMC Loews Jersey Gardens 20"
,"AMC Loews Kips Bay 15"
,"AMC Loews Layton Hills 9"
,"AMC Loews Lexington Park 6"
,"AMC Loews Liberty Tree Mall 20"
,"AMC Loews Lincoln Square 13"
,"AMC Loews New Brunswick 18"
,"AMC Loews Newport Centre 11"
,"AMC Loews Oak Tree 6"
,"AMC Loews Orpheum 7"
,"AMC Loews Palisades 21 and IMAX"
,"AMC Loews Plainville 20"
,"AMC Loews Port Chester 14"
,"AMC Loews Quarry Cinemas 14"
,"AMC Loews Raceway 10"
,"AMC Loews Rio Cinemas 18"
,"AMC Loews Roosevelt Field 8"
,"AMC Loews Seacourt 10"
,"AMC Loews Shirlington 7"
,"AMC Loews Shore 8"
,"AMC Loews Stony Brook 17"
,"AMC Loews Streets Of Woodfield 20"
,"AMC Loews Uptown 1"
,"AMC Loews Village 7"
,"AMC Loews Waterfront 22"
,"AMC Loews Wayne 14"
,"AMC Loews White Marsh 16"
,"AMC Loews Woodinville 12"
,"AMC Loews Woodridge 18"
,"AMC Lynnhaven 18"
,"AMC Magic Johnson Capital Center 12"
,"AMC Magic Johnson Harlem 9"
,"AMC Mall of Louisiana 15"
,"AMC Mall of the Americas 14"
,"AMC Mansell Crossing 14"
,"AMC Maple Ridge 8"
,"AMC Marina Marketplace 6"
,"AMC Marina Pacifica 12"
,"AMC Marlton 8"
,"AMC Marple 10"
,"AMC Mayfair Mall 18"
,"AMC Mazza Gallerie"
,"AMC Mercado 20"
,"AMC Merchants Crossing 16"
,"AMC Mesa Grand 24"
,"AMC Mesquite 30 with IMAX and Dine-in Theatres"
,"AMC Methuen 20"
,"AMC Metreon 16"
,"AMC Mission Valley 20"
,"AMC Monmouth Mall 15"
,"AMC Montebello 10"
,"AMC Mountainside 10"
,"AMC Neshaminy 24"
,"AMC Newport On The Levee 20"
,"AMC North Dekalb Mall 16"
,"AMC North Point Mall 12"
,"AMC Northbrook Court 14"
,"AMC Northlake 14"
,"AMC NorthPark 15"
,"AMC Norwalk 20"
,"AMC Oakview Plaza 24"
,"AMC Ontario Mills 30"
,"AMC Orange 30 (AMC Block 30)"
,"AMC Orange Park 24"
,"AMC Orchard 12"
,"AMC Otay Ranch 12"
,"AMC Owings Mills 17"
,"AMC Pacific Place 11"
,"AMC Palace 9"
,"AMC Palm Promenade 24"
,"AMC Parkway 8"
,"AMC Parkway Pointe 15"
,"AMC Penn Square 10"
,"AMC Phipps Plaza 14"
,"AMC Plaza 5"
,"AMC Plaza Bonita 14"
,"AMC Plymouth Meeting Mall 12"
,"AMC Potomac Mills 18"
,"AMC Promenade 16"
,"AMC Puente Hills 20"
,"AMC Quail Springs Mall 24"
,"AMC Quincy Mall 3"
,"AMC Quincy Showplace 6"
,"AMC Rainbow Promenade 10"
,"AMC Randhurst 12"
,"AMC Regency 24"
,"AMC Ridge Park Square 8"
,"AMC River East 21"
,"AMC River Park Square 20"
,"AMC Rivercenter 11 with Alamo IMAX"
,"AMC Rockaway 16"
,"AMC Rolling Hills 20"
,"AMC Rosedale 14"
,"AMC Santa Anita 16"
,"AMC Santa Monica 7"
,"AMC Sarasota 12"
,"AMC Saratoga 14"
,"AMC Security Square 8"
,"AMC Showplace Bloomington 11"
,"AMC Showplace Bloomington 12"
,"AMC Showplace Brighton 12"
,"AMC Showplace Carbondale 8"
,"AMC Showplace Cicero 14"
,"AMC Showplace Columbus 12"
,"AMC Showplace Edwardsville 12"
,"AMC Showplace Farmington 4"
,"AMC Showplace Galesburg 8"
,"AMC Showplace Galewood 14"
,"AMC Showplace Hamilton 8"
,"AMC Showplace Hobart 12"
,"AMC Showplace Indianapolis 17"
,"AMC Showplace Kokomo 12"
,"AMC Showplace Machesney Park 14"
,"AMC Showplace Manteca 16"
,"AMC Showplace Marion 12"
,"AMC Showplace Mattoon 10"
,"AMC Showplace Michigan City 14"
,"AMC Showplace Mt Vernon 8"
,"AMC Showplace Muncie 12"
,"AMC Showplace Muncie 7"
,"AMC Showplace Naperville 16"
,"AMC Showplace New Lenox 14"
,"AMC Showplace Niles 12"
,"AMC Showplace Pekin 14"
,"AMC Showplace Poplar Bluff 8"
,"AMC Showplace Richmond 11"
,"AMC Showplace Rockford 16"
,"AMC Showplace Schererville 12"
,"AMC Showplace Schererville 16"
,"AMC Showplace South Bend 16"
,"AMC Showplace Springfield 12"
,"AMC Showplace Springfield 8"
,"AMC Showplace Terre Haute 12"
,"AMC Showplace Traders Point 12"
,"AMC Showplace Vernon Hills 8"
,"AMC Showplace Village Crossing 18"
,"AMC Showplace Vincennes 8"
,"AMC Showplace Washington Square 12"
,"AMC South Barrington 30"
,"AMC South Bay Galleria 16"
,"AMC Southcenter 16"
,"AMC Southdale 16"
,"AMC Southlake 24"
,"AMC Southpoint 17"
,"AMC Southroads 20"
,"AMC Spring 10"
,"AMC St. Charles Town Ctr. 9"
,"AMC Star Council Bluffs 17"
,"AMC Star Dubuque 14"
,"AMC Star Fairlane 21"
,"AMC Star Fitchburg 18"
,"AMC Star Grand Rapids 18"
,"AMC Star Gratiot 21"
,"AMC Star Great Lakes 25"
,"AMC Star Holland 8"
,"AMC Star John R 15"
,"AMC Star Johnson Creek 12"
,"AMC Star Southfield 20"
,"AMC Stonebriar 24"
,"AMC Stonecrest 16"
,"AMC Streets of St. Charles 8"
,"AMC Studio 28 with IMAX and Dine-in Theatres"
,"AMC Studio 30"
,"AMC Sunrise 8"
,"AMC Sunset Place 24"
,"AMC Tallahassee Mall 20"
,"AMC The Parks At Arlington 18"
,"AMC The Regency 20"
,"AMC Tilghman Square 8"
,"AMC Town Center 20"
,"AMC Town Square 18"
,"AMC Tustin 14 @ The District"
,"AMC Twenty Mile 10"
,"AMC Tyler Galleria 16"
,"AMC Tyngsboro 12"
,"AMC Tysons Corner 16"
,"AMC Universal Cineplex 20 with IMAX (Orlando)"
,"AMC Universal CityWalk 19 with IMAX (Los Angeles)"
,"AMC University Place 8"
,"AMC Valley View 16"
,"AMC Van Ness 14"
,"AMC Vestal Towne Square 9"
,"AMC Veterans 24"
,"AMC Victoria Gardens 12"
,"AMC Village Mall 6"
,"AMC Village on the Parkway 9"
,"AMC Ward Parkway 14"
,"AMC Webster 12"
,"AMC West Chester 18"
,"AMC West Oaks 14"
,"AMC West Shore 14"
,"AMC Westbank Palace 16"
,"AMC Westgate 20"
,"AMC Westminster Promenade 24"
,"AMC Weston 8 Cinemas"
,"AMC Westroads 14"
,"AMC Westwood Town Center 6"
,"AMC Whitby 24"
,"AMC Willowbrook 24"
,"AMC Winston Churchill 24"
,"AMC Woodhaven 10"
,"AMC Woodlands Square 20"
,"AMC Worldgate 9"
,"AMC Yorktown 18"
            ];
            $( "#mainSearch" ).autocomplete({
               source: availableTutorials
            });
         });
      </script>
  <script>
  function GoMovies(){
  	window.location.replace('<s:property value="#movieFilter"/>');
  }
  </script>
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


