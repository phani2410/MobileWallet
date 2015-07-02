
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
  <head>
    <title>Usage Based Insurance</title>
<link rel="shortcut icon" href="../img/persistent.jpg" type="image/png">


 <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>   
<!-- <script src="../js/app.js"></script>-->
	
	<link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet'>
    <link href="http://s3.amazonaws.com/codecademy-content/courses/ltp2/css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/style.css" type="text/css" rel="stylesheet">
    
     <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

  <!-- css for tabs and right menu -->
  
	<link rel="stylesheet" href="../css/demo1.css">
		<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css" rel="stylesheet">
		<link rel="stylesheet" href="../css/sky-tabs.css">
		<link rel="stylesheet" href="../css/formstyle.css">
		<link rel="stylesheet" href="../css/sky-mega-menu.css">
	
<!-- for footer -->
  <link rel="stylesheet" href="../css/footer-distributed-with-address-and-phones.css">
	  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
	<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
  
	
  </head>
   <body>
  <%
  com.psl.model.Wallet w = (com.psl.model.Wallet)session.getAttribute("w1");
  %>

<header role="banner">
		<div id="cd-logo">
            <a href="http://www.persistent.com"><img src="../img/persistent.jpg" alt="Logo"></a>
        </div>
		
		
	
 	 <div style="float:right;margin-top:1.5em;margin-right:8em;"class="dropdown">
   	 <button class="btn btn-primary dropdown-toggle" style="background-color:#2f889a;border-radius:25px;" type="button" data-toggle="dropdown">Hi,
	<%
	try{
		out.println(w.getUsername().trim());
	}
   	 catch(Exception e)
   	 {
   		 e.printStackTrace();
   	 }
	%>
  </span></button>
   	 <ul class="dropdown-menu">
      	<li><a style="color:#2f889a;" href="#">My Profile</a></li>
		<li><a style="color:#2f889a;" href="tohome">Go to Home</a></li>
     	 <li><a style="color:#2f889a;" href="#">About</a></li>
     	 <li><a style="color:#2f889a;" href="#">Help</a></li>
     	  <li><a style="color:#2f889a;" href="homesignout">Sign Out</a></li>
    	</ul>
  	</div>
	
	<div style="float:right;margin-top:0.5em;margin-right:25%;font-size:1.3em;color:#2f889a">
			<h2>Better Premium, Better Life.</h2>
		</div>
	</header>	
		
	
 
 <div class="body1" style="margin-left:2em;margin-top:2em;width:80%;float:left;padding:5px;">
		
			<!-- tabs -->
			<div class="sky-tabs sky-tabs-pos-left sky-tabs-anim-flip sky-tabs-response-to-icons">
				<input type="radio" name="sky-tabs" checked id="sky-tab1" class="sky-tab-content-1">
				<label for="sky-tab1"><span><span><i class="fa fa-list-ul"></i>Renew Non BPBL Policy</span></span></label>
				
				<input type="radio" name="sky-tabs" id="sky-tab2" class="sky-tab-content-2">
				<label for="sky-tab2"><span><span><i class="fa fa-list-ul"></i>Register a New policy</span></span></label>
				<!--
				<input type="radio" name="sky-tabs" id="sky-tab3" class="sky-tab-content-3">
				<label for="sky-tab3"><span><span><i class="fa fa-cogs"></i>Einstein</span></span></label>
				
				<input type="radio" name="sky-tabs" id="sky-tab4" class="sky-tab-content-4">
				<label for="sky-tab4"><span><span><i class="fa fa-globe"></i>Newton</span></span></label>
				-->
				<ul>
					<li class="sky-tab-content-1">					
						<div id="wrapper1" style="margin-left:15em">
        <form action="" method="post">
            <fieldset>
                <legend>Renew Non BPBL Policy</legend>
                <div>
                    <input type="text" name="policynumber" placeholder="Policy Number"/>
                </div>
				
                <div>
                    <input type="text" name="policytype" placeholder="Policy Type"/>
                </div>
				<div>
                    <input type="text" name="Insurancecompany" placeholder="Insurance Company"/>
                </div>
				<div>
                    <input type="text" name="policynumber" placeholder="Policy Number"/>
                </div>
				<div>
                    <input type="text" name="manufacturer" placeholder="Manufacturer"/>
                </div>
				<div>
                    <input type="text" name="model" placeholder="Model"/>
                </div>
				<!--
                <div>
                    <input type="text" name="email" placeholder="Email"/>
                </div>
                <div>
                    <div class="small">this textarea is just for test so you can see the placeholder working on textarea as well</div>
                    <textarea name="message" placeholder="Message"></textarea>
                </div> --> 
                <input type="submit" name="submit" value="Submit"/>
            </fieldset>    
        </form>
    </div>
					</li>
					
					<li class="sky-tab-content-2">
						<div id="wrapper" style="margin-left:15em">
        <form action="" method="post">
            <fieldset>
                <legend>Register a New policy</legend>
                <div>
                    <input type="text" name="maker" placeholder="Manufacturer"/>
                </div>
                <div>
                    <input type="text" name="model" placeholder="Model"/>
                </div>
				<div>
                    <input type="text" name="carnumber" placeholder="Number"/>
                </div>
				<div>
                    <input type="text" name="carmake" placeholder="Make"/>
                </div>
				<div>
                    <input type="text" name="addressline1" placeholder="Address Line 1"/>
                </div>
				<div>
                    <input type="text" name="addressline2" placeholder="Address Line 2"/>
                </div>
				<div>
                    <input type="text" name="pincode" placeholder="Pin Code"/>
                </div>
                <!--<div>
                    <input type="text" name="email" placeholder="Email"/>
                </div>
                <div>
                    <div class="small">this textarea is just for test so you can see the placeholder working on textarea as well</div>
                    <textarea name="message" placeholder="Message"></textarea>
                </div>  -->  
                <input type="submit" name="submit" value="Submit"/>
            </fieldset>    
        </form>
    </div>
					</li>
					<!--
					<li class="sky-tab-content-3">
						<div class="typography">
							<h1>Albert Einstein</h1>
							<p>German-born theoretical physicist who developed the general theory of relativity, one of the two pillars of modern physics (alongside quantum mechanics). While best known for his mass–energy equivalence formula E = mc2 (which has been dubbed "the world's most famous equation"), he received the 1921 Nobel Prize in Physics "for his services to theoretical physics, and especially for his discovery of the law of the photoelectric effect". The latter was pivotal in establishing quantum theory.</p>
							<p>Near the beginning of his career, Einstein thought that Newtonian mechanics was no longer enough to reconcile the laws of classical mechanics with the laws of the electromagnetic field. This led to the development of his special theory of relativity. He realized, however, that the principle of relativity could also be extended to gravitational fields, and with his subsequent theory of gravitation in 1916, he published a paper on the general theory of relativity.</p>
							<p>He continued to deal with problems of statistical mechanics and quantum theory, which led to his explanations of particle theory and the motion of molecules. He also investigated the thermal properties of light which laid the foundation of the photon theory of light. In 1917, Einstein applied the general theory of relativity to model the large-scale structure of the universe.</p>
							<p class="text-right"><em>Find out more about Albert Einstein from <a href="http://en.wikipedia.org/wiki/Albert_Einstein" target="_blank">Wikipedia</a>.</em></p>
						</div>
					</li>
					
					<li class="sky-tab-content-4">
						<div class="typography">
							<h1>Isaac Newton</h1>
							<p>English physicist and mathematician who is widely regarded as one of the most influential scientists of all time and as a key figure in the scientific revolution. His book Philosophiæ Naturalis Principia Mathematica ("Mathematical Principles of Natural Philosophy"), first published in 1687, laid the foundations for most of classical mechanics. Newton also made seminal contributions to optics and shares credit with Gottfried Leibniz for the invention of the infinitesimal calculus.</p>
							<p>Newton's Principia formulated the laws of motion and universal gravitation that dominated scientists' view of the physical universe for the next three centuries. It also demonstrated that the motion of objects on the Earth and that of celestial bodies could be described by the same principles. By deriving Kepler's laws of planetary motion from his mathematical description of gravity, Newton removed the last doubts about the validity of the heliocentric model of the cosmos.</p>
							<p class="text-right"><em>Find out more about Isaac Newton from <a href="http://en.wikipedia.org/wiki/Isaac_Newton" target="_blank">Wikipedia</a>.</em></p>
						</div>
					</li>	
						-->					
				</ul>
			</div>
			<!--/ tabs -->
			
		</div>
		
		
		<div class="body1" style="margin-right:2em;margin-top:2em;width:15%;float:right;padding:5px;">
			<aside class="right">
			
				<!-- mega menu -->
				<ul class="sky-mega-menu sky-mega-menu-pos-right sky-mega-menu-fixed sky-mega-menu-anim-scale">
					<!-- home -->
					<li aria-haspopup="true">
						<a href="tohome"><i class="fa fa-home"></i>Home</a>
					</li>
					<!--/ home -->
					
					<!-- about -->
					<li aria-haspopup="true">
						<a href="#"><i class="fa fa-newspaper-o"></i>Vehicle Report</a>
						
						<div class="grid-container3">
							<ul>
								<li><a href="#"><i class="fa fa-globe"></i>Mission</a></li>
								<li aria-haspopup="true">
									<a href="#"><i class="fa fa-group"></i>Our Team</a>
									
									<div class="grid-container3">
										<ul>
											<li aria-haspopup="true">
												<a href="#"><i class="fa fa-male"></i>Markus Fisher</a>
												<div class="grid-container3">
													<ul>
														<li><a href="#"><i class="fa fa-leaf"></i>About</a></li>
														<li><a href="#"><i class="fa fa-tasks"></i>Skills</a></li>
														<li><a href="#"><i class="fa fa-comments"></i>Contacts</a></li>
													</ul>
												</div>
											</li>
											<li aria-haspopup="true">
												<a href="#"><i class="fa fa-female"></i>Leyla Sparks</a>
												<div class="grid-container3">
													<ul>
														<li><a href="#"><i class="fa fa-leaf"></i>About</a></li>
														<li><a href="#"><i class="fa fa-tasks"></i>Skills</a></li>
														<li><a href="#"><i class="fa fa-comments"></i>Contacts</a></li>
													</ul>
												</div>
											</li>
											<li aria-haspopup="true">
												<a href="#"><i class="fa fa-male"></i>Gleb Ismailov</a>
												<div class="grid-container3">
													<ul>
														<li><a href="#"><i class="fa fa-leaf"></i>About</a></li>
														<li><a href="#"><i class="fa fa-tasks"></i>Skills</a></li>
														<li><a href="#"><i class="fa fa-comments"></i>Contacts</a></li>
													</ul>
												</div>
											</li>
											<li><a href="#"><i class="fa fa-female"></i>Viktoria Gibbers</a>
										</li>
										</ul>
									</div>
								</li>
								<li><a href="#"><i class="fa fa-trophy"></i>Rewards</a></a></li>
								<li><a href="#"><i class="fa fa-certificate"></i>Certificates</a></a></li>
							</ul>
						</div>
					</li>
					<!--/ about -->
					
					<!-- news -->
					<li aria-haspopup="true">
						<a href="#"><i class="fa fa-book"></i>Claim History</a>
						<!--
						<div class="grid-container3">
							<ul>
								<li><a href="#"><i class="fa fa-check"></i>Company</a></li>
								<li><a href="#"><i class="fa fa-check"></i>Products</a></li>
								<li><a href="#"><i class="fa fa-check"></i>Specials</a></li>
							</ul>
						</div>
						-->
					</li>
					<!--/ news -->
					
					<!-- portfolio -->
					<li aria-haspopup="true">
						<a href="#"><i class="fa fa-money"></i>Insurance Premium</a>
						<!--
						<div class="grid-container3">
							<ul>
								<li><a href="#"><i class="fa fa-lemon-o"></i>Logos</a></li>
								<li><a href="#"><i class="fa fa-globe"></i>Websites</a></li>
								<li><a href="#"><i class="fa fa-th-large"></i>Branding</a></li>
								<li><a href="#"><i class="fa fa-picture-o"></i>Illustrations</a></li>
							</ul>
						</div>
						-->
					</li class="right">
					<!--/ portfolio -->
					
					<!-- blog -->
					<li>
						<a href="#"><i class="fa fa-edit"></i>Renew / Register Policy</a>
					</li>
					<!--/ blog -->
					
					<!-- contacts -->
					<li class="right">
						<a href="#"><i class="fa fa-map-marker"></i>Live-X</a>
					</li>
					<li class="right">
						<a href="#"><i class="fa fa-automobile"></i>Drive-X</a>
					</li>
					<!--/ contacts -->
				</ul>
				<!--/ mega menu -->
				
			</aside>
		</div>
  <div style="position:relative;width:100%;clear:both">
  
<footer class="footer-distributed">

			<div class="footer-left">
<!--
				<h3>Company<span>logo</span></h3>-->
				<h3>Persistent <span>Systems</span></h3>

				<p class="footer-links">
					<a href="#">Home</a>
					.<!--
					<a href="#">Blog</a>
					·
					<a href="#">Pricing</a>
					·-->
					<a href="#">About</a>
					<!--.
					a href="#">Faq</a>
					·-->
					.
					<a href="#">Contact</a>
				</p>

				<p class="footer-company-name">Persistent Systems &copy; 2015</p>
<!--Company Name &copy; 2015</p>-->
			</div>

			<div class="footer-center">

				<div>
					<i class="fa fa-map-marker"></i><!--
					<p><span>21 Revolution Street</span> Paris, France</p>-->
					<p><span>Phase1, RGIT Park, Hinjewadi</span> Pune, India</p>
				</div>

				<div>
					<i class="fa fa-phone"></i>
					<p>+1 555 123456</p>
				</div>

				<div>
					<i class="fa fa-envelope"></i>
					<p><a href="mailto:support@company.com">support@company.com</a></p>
				</div>

			</div>

			<div class="footer-right">

				<p class="footer-company-about">
					<span>About the company</span>
					Persistent Systems is a global company specializing in software product and technology services. Persistent develops best-in-class solutions in key next-generation technology areas.
					</p>

				<div class="footer-icons">

					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-linkedin"></i></a>
					<a href="#"><i class="fa fa-github"></i></a>

				</div>

			</div>

		</footer>
</div> 
 
   </body>
</html>