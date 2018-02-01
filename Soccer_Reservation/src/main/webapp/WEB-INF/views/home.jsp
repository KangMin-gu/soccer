<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Humanity</title>
<meta name="generator" content="Bootply" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
<link href="${pageContext.request.contextPath}/resources/css/styles.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/demo.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/testimonial.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link href='http://fonts.googleapis.com/css?family=Poiret+One'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/my.css" />
</head>
<body>
	<div class="header container">
	<!-- 세션에 id의 유무에따라 보여지는 loginView -->
	<c:choose>
		<c:when test="${not empty id }">
			<div>
				<ul id="loginUl">
					<li class="loginLi"><a href="users/info.do">My info</a></li>
					<li class="loginLi"><a href="users/logout.do">Logout</a></li>
				</ul>	
			</div>			
		</c:when>
		<c:otherwise>
			<div>
				<ul id="loginUl">
					<li class="loginLi"><a href="users/loginform.do">Login</a></li>
					<li class="loginLi"><a href="users/signupform.do">SignUp</a></li>
				</ul>
			</div>	
		</c:otherwise>
	</c:choose>
	
		<div
			class="visible-xs visible-sm col-xs-12 col-sm-12 text-center sm-logo">
			<a rel="home" href="home.do"> <img src="${pageContext.request.contextPath}/resources/img/soccer.png" width="200" alt="logo">
			</a>
		</div>
	</div>
	<div class="navbar" role="navigation">

		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="selected"><a href="home.do">Home</a></li>
				<li><a href="service.html">Team</a></li>
				<li><a href="gallery.html">Gallery</a></li>
				<li class="hidden-xs hidden-sm"><a rel="home" href="home.do"><img
						class="logo"
						src="${pageContext.request.contextPath}/resources/img/soccer.png"
						width="200" alt="logo"></a></li>
				<li><a href="reservation/reservation.do">Reservation</a></li>
				<li><a href="donate.html">Review</a></li>
				<li><a href="contact.html">Question</a></li>
			</ul>
		</div>
	</div>
	<div id="carousel-example-generic" class="carousel slide"
		data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img
					src="${pageContext.request.contextPath}/resources/img/slide3.jpg"
					alt="">
				<div class="carousel-caption">Make Donation</div>
			</div>
			<div class="item">
				<img
					src="${pageContext.request.contextPath}/resources/img/slide2.jpg"
					alt="">
				<div class="carousel-caption">Be a Donator</div>
			</div>
			<div class="item">
				<img
					src="${pageContext.request.contextPath}/resources/img/slide1.jpg"
					alt="">
				<div class="carousel-caption">Be a volunteer</div>
			</div>
		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic"
			role="button" data-slide="prev"> <span
			class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#carousel-example-generic"
			role="button" data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<div class="container header-start text-center">
		<div class="heading-icon">
			<i class="fa fa-3x fa-heart"></i>
		</div>
		<h1 class="main-text">You can book a football field at any time.</h1>
		<p class="text-center sub-text">
			<em class="first-line">Lorem ipsum dolor sit amet, consectetur
				adipisiciSng elit, sed do eiusmod tempor </em><em class="next-line">
				incididunt ut labore et dolore magna aliqua.A sed do eiusmod tempor
				incididunt ut labore et dolore magna.</em>
		</p>
	</div>

	<div class="divider col-sm-12 col-xs-12 col-md-12">
		<div class="header-text">
			<span>Review</span> News
		</div>
	</div>

	<section class="blog">
		<div class="item col-md-4">
			<div class="blok-read-sm">
				<a href="single1.html" class="hover-image"> <img
					src="${pageContext.request.contextPath}/resources/img/sea1.jpg"
					alt="image"> <span class="layer-block"></span>
				</a>
				<div class="editor-choice">
					<i class="fa fa-star"></i> <a href="#">Editor’s Choice</a>
				</div>
				<div class="content-block">
					<span class="point-caption bg-blue-point"></span> <span
						class="bottom-line bg-blue-point"></span>
					<h4>Discovering OM: A visit back to The Vedas</h4>
					<p>Gregor then turned to look out the window at the dull
						weather. Drops of rain could pane,which made..</p>
					<div class="button-main bg-fio-point">read more</div>
					<div class="like-wrap">
						<a href="#"><i class="fa fa-heart col-red"></i></a><span>224</span>
						<a href="#"><i class="fa fa-comment col-green"></i></a><span>89</span>
					</div>
				</div>
			</div>
		</div>
		<div class="item col-md-4">
			<div class="blok-read-sm">
				<a href="single1.html" class="hover-image"> <img
					src="${pageContext.request.contextPath}/resources/img/sea2.jpg"
					alt="image"> <span class="layer-block"></span>
				</a>
				<div class="editor-choice">
					<i class="fa fa-star"></i> <a href="#">Editor’s Choice</a>
				</div>
				<div class="content-block">
					<span class="point-caption bg-blue-point"></span> <span
						class="bottom-line bg-blue-point"></span>
					<h4>Discovering OM: A visit back to The Vedas</h4>
					<p>Gregor then turned to look out the window at the dull
						weather. Drops of rain could pane,which made..</p>
					<div class="button-main bg-fio-point">read more</div>
					<div class="like-wrap">
						<a href="#"><i class="fa fa-heart col-red"></i></a><span>224</span>
						<a href="#"><i class="fa fa-comment col-green"></i></a><span>89</span>
					</div>
				</div>
			</div>
		</div>
		<div class="item col-md-4">
			<div class="blok-read-sm">
				<a href="single1.html" class="hover-image"> <img
					src="${pageContext.request.contextPath}/resources/img/sea3.jpg"
					alt="image"> <span class="layer-block"></span>
				</a>
				<div class="editor-choice">
					<i class="fa fa-star"></i> <a href="#">Editor’s Choice</a>
				</div>
				<div class="content-block">
					<span class="point-caption bg-blue-point"></span> <span
						class="bottom-line bg-blue-point"></span>
					<h4>Discovering OM: A visit back to The Vedas</h4>
					<p>Gregor then turned to look out the window at the dull
						weather. Drops of rain could pane,which made..</p>
					<div class="button-main bg-fio-point">read more</div>
					<div class="like-wrap">
						<a href="#"><i class="fa fa-heart col-red"></i></a><span>224</span>
						<a href="#"><i class="fa fa-comment col-green"></i></a><span>89</span>
					</div>
				</div>
			</div>
		</div>
	</section>


	<div class="divider col-sm-12 col-xs-12 col-md-12">
		<div class="header-text">
			Our <span>Testimonials</span>
		</div>
	</div>

	<section class="testimonial">
		<div class="col-md-7 testimonial-blog">
			<div id="wrapper">
				<!-- DEMO -->
				<div class="testimonials-slider">
					<div class="slide">
						<div class="testimonials-carousel-thumbnail">
							<img width="120" alt=""
								src="${pageContext.request.contextPath}/resources/images/team1.jpg">
						</div>
						<div class="testimonials-carousel-context">
							<div class="testimonials-name">
								Rub elvi <span>shuvohabib.com</span>
							</div>
							<div class="testimonials-carousel-content">
								<p>Sed posuere consectetur est at lobortis. Fusce dapibus,
									tellus ac cursus commodo.Cras mattis consectetur purus sit amet
									fermentum. Sed posuere consectetur est at lobortis. Fusce
									dapibus, tellus ac cursus commodo.</p>
							</div>
						</div>
					</div>

					<div class="slide">
						<div class="testimonials-carousel-thumbnail">
							<img width="120" alt="" src="${pageContext.request.contextPath}/resources/images/team2.jpg">
						</div>
						<div class="testimonials-carousel-context">
							<div class="testimonials-name">
								Jewel Jahan <span>technextit.com</span>
							</div>
							<div class="testimonials-carousel-content">
								<p>Cras mattis consectetur purus sit amet fermentum. Sed
									posuere consectetur est at lobortis. Fusce dapibus, tellus ac
									cursus commodo.</p>
							</div>
						</div>
					</div>

					<div class="slide">
						<div class="testimonials-carousel-thumbnail">
							<img width="120" alt=""
								src="${pageContext.request.contextPath}/resources/images/team3.jpg">
						</div>
						<div class="testimonials-carousel-context">
							<div class="testimonials-name">
								Mark Zuckerberg<span>www.Facebook.com</span>
							</div>
							<div class="testimonials-carousel-content">
								<p>It is a long established fact that a reader will be
									distracted by the readable content of a page when looking at
									its layout. The point of using Lorem Ipsum is that it has a
									more-or-less normal..</p>
							</div>
						</div>
					</div>
				</div>
				<!-- END DEMO -->
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="col-md-4 subscribe-form">
			<div class="subscribe">
				<h4>Subscribe to Newsletter</h4>
				<div class="email-field">
					<form action="http://demo.nrgthemes.com/">
						<div class="email-input">
							<input type="email" placeholder="Enter your email..." required>
							<i class="fa fa-check col-green"></i>
						</div>
						<button type="submit" class="button-main bg-green">Submit</button>
					</form>
					<span>We never spam :)</span>
				</div>
			</div>
		</div>
	</section>

	<!-- ============FOOTER============= -->
	<footer id="footer">
		<div class="footer-content container">
			<div class="footer-adress text-center col-xs-12 col-sm-4 col-md-4">
				<h4>Great love for humanity</h4>
				<ul class="footer-menus">
					<li>Home /</li>
					<li>About</li>
					<br/>
					<li>Service /</li>
					<li>Gallery /</li>
					<li>Contact</li>
				</ul>
			</div>
			<div class="footer-second col-xs-12 col-sm-4 col-md-4">
				<div class="social-block text-center">
					<div class="social-share">
						<i class="fa fa-2x fa-facebook"></i> <i
							class="fa fa-2x  fa-twitter"></i> <i
							class="fa fa-2x  fa-google-plus"></i> <i
							class="fa fa-2x  fa-instagram"></i>
					</div>
				</div>
				<p class="text-center footer-text1">123 456 7890</p>
				<p class="text-center footer-text">humanity@shuvohabib.com</p>
			</div>
			<div class="footer-third col-xs-12 col-sm-4 col-md-4">
				<div class="copyright">
					<span>Copyright 2014 Theme</span><br> <span>All Rights
						Reserved</span>
				</div>
			</div>
		</div>
		<div class="move-top-page"></div>
	</footer>

	<!-- script references -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/nav-hover.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/jquery.bxslider.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	<!-- Place in the <head>, after the three links -->
	<script>
		$('.testimonials-slider').bxSlider({
			slideWidth : 800,
			minSlides : 1,
			maxSlides : 1,
			slideMargin : 32,
			auto : true,
			autoControls : true
		});
	</script>
	<script type="text/javascript">
		
	</script>
</body>
</html>
