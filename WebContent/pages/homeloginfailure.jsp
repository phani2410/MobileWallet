<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Failed</title>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="../css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="../css/style.css"> <!-- Gem style -->
	<script src="../js/modernizr.js"></script> <!-- Modernizr -->
  	<link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet'>
    <link href="http://s3.amazonaws.com/codecademy-content/courses/ltp2/css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/style1.css" rel="stylesheet">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="../js/main.js"></script> <!-- Gem jQuery -->

  <script src="../js/jquery-2.1.1.js"></script>
    <script src="../js/app.js"></script>
	<link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet'>
    <link href="http://s3.amazonaws.com/codecademy-content/courses/ltp2/css/bootstrap.min.css" rel="stylesheet">
    <!--<link href="../css/Style1.css" rel="stylesheet">-->
	
	<script src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="../js/app2.js"></script>
	<link href="../css/style2.css" rel="stylesheet">
	
	<link href="../css/style3.css" rel="stylesheet">
	
	<!-- CSS for footer -->
	
	<link rel="stylesheet" href="../css/footer-distributed-with-address-and-phones.css">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
	<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
	
</head>
<body>
<header role="banner">
		<div id="cd-logo">
            <a href="http://www.persistent.com"><img src="../img/persistent.jpg" alt="Logo"></a>
        </div>
		
		<div id="cd-logo1">
            <a href="http://www.persistent.com"><img src="../img/persistent.jpg" alt="Logo"></a>
        </div>

		<nav class="main-nav">
			<ul>
				<!-- inser more links here -->
				<!--<li><a class="cd-signin" href="#0">Sign in</a></li>-->
				
				<li>Better Premium, Better Life
				</li>
			</ul>
		</nav>
		<nav class="main-nav1">
			<ul>
				<!-- inser more links here -->
				<!--<li><a class="cd-signin" href="#0">Sign in</a></li>-->
				
				<!--<li><a class="cd-signin" href="#0">About Us</a></li>-->
			</ul>
		</nav>
		<nav class="main-nav2">
			<ul>
				<!-- inser more links here -->
				<!--<li><a class="cd-signin" href="#0">Sign in</a></li>-->
				
				<!--<li><a class="cd-whatisubi" href="#0">What is Usage Based Insurance</a></li>-->
			</ul>
		</nav>
	</header>
<div id="tab5">
	<div class="cd-user-modal-container"> <!-- this is the container wrapper -->
	
	<div id="cd-login"> <!-- log in form -->
				<form action="homelogin" method ="post" class="cd-form">
					<p class="fieldset">
						<label class="image-replace cd-username" for="login_username">Username</label>
						<input class="full-width has-padding has-border" id="login_username" type="text" name="username" placeholder="Username">
						<span class="cd-error-message">Invalid Username</span>
					</p>

					<p class="fieldset">
						<label class="image-replace cd-password" for="login_password">Password</label>
						<input class="full-width has-padding has-border" id="login_password" type="text" name="password" placeholder="Password">
						<a href="#0" class="hide-password">Hide</a>
						<span class="cd-error-message">Invalid Password</span>
					</p>

					<!--<p class="fieldset">
						<input type="checkbox" id="remember-me" checked>
						<label for="remember-me">Remember me</label>
					</p>-->

					<p class="fieldset">
						<input class="full-width" type="submit" value="Login">
					</p>
				</form>
				<p style="text-align:center;color:red">
				<c:if test="${not empty error}">
  	 				 ${error}	
  	 				 
  	 				 <script>
						var $form_modal = $('.cd-user-modal'), $form_login = $form_modal
						.find('#cd-login'), $form_signup = $form_modal
						.find('#cd-signup'), $form_forgot_password = $form_modal
						.find('#cd-reset-password'), $form_modal_tab = $('.cd-switcher'), $tab_login = $form_modal_tab
						.children('li').eq(0).children('a'), $tab_signup = $form_modal_tab
						.children('li').eq(1).children('a'), $forgot_password_link = $form_login
						.find('.cd-form-bottom-message a'), $back_to_login_link = $form_forgot_password
						.find('.cd-form-bottom-message a'), $main_nav = $('.main-nav');
						// on mobile close submenu
						$main_nav.children('ul').removeClass('is-visible');
						//show modal layer
						$form_modal.addClass('is-visible');
						//show the selected form
						$form_login.addClass('is-selected');
						$form_signup.removeClass('is-selected');
						$form_forgot_password.removeClass('is-selected');
						$tab_login.addClass('selected');
						$tab_signup.removeClass('selected');
					</script> 	 
			 </c:if>
			 </p>
				<p class="cd-form-bottom-message"><a href="#0">Forgot your password?</a></p>
				<a href="#0" class="cd-close-form">Close</a>
            </div> <!-- cd-login -->


	
		<div id="cd-reset-password"> <!-- reset password form -->
				<p class="cd-form-message">Forgot your password? Please enter your email address. You will receive a link to create a new password.</p>

				<form action="resetpassword" class="cd-form">
					<p class="fieldset">
						<label class="image-replace cd-email" for="reset-email">E-mail</label>
						<input class="full-width has-padding has-border" id="reset-email" type="email" placeholder="E-mail">
						<span class="cd-error-message">Error message here!</span>
					</p>

					<p class="fieldset">
						<input class="full-width has-padding" type="submit" value="Reset password">
					</p>
				</form>
				<form action="home" class="cd-form">

					<p class="fieldset">
						<input class="full-width has-padding" type="submit" value="Return to Home">
					</p>
				</form>

				<p class="cd-form-bottom-message"><a href="#0">Back to log-in</a></p>
			</div> <!-- cd-reset-password -->
			</div>
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