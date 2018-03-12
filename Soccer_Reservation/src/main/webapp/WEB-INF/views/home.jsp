<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>SoccerBooking</title>
<meta name="generator" content="Bootply" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
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
			<ul  class="nav navbar-nav" id="loginUl">
				<li class="loginLi"><a href="users/info.do">My info</a></li>
				<li class="loginLi"><a href="users/logout.do">Logout</a></li>
			</ul>	
		</div>			
	</c:when>
	<c:otherwise>
		<div>
			<ul  class="nav navbar-nav" id="loginUl">
				<li class="loginLi"><a href="users/loginform.do">Login</a></li>
				<li class="loginLi"><a href="users/signupform.do">SignUp</a></li>
			</ul>
		</div>	
	</c:otherwise>
</c:choose>
</div>

	<div
		class="visible-xs visible-sm col-xs-12 col-sm-12 text-center sm-logo">
		<a rel="home" href="${pageContext.request.contextPath}/"> <img src="${pageContext.request.contextPath}/resources/img/soccer.png" width="200" alt="logo">
		</a>
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
			<li><a href="#" id="close">Team</a></li>
			<li><a href="${pageContext.request.contextPath}/users/fieldlist.do">Near Playground</a></li>
			<li class="hidden-xs hidden-sm"><a rel="home" href="home.do"><img
					class="logo"
					src="${pageContext.request.contextPath}/resources/img/soccer.png"
					width="200" alt="logo"></a></li>
			<li><a href="${pageContext.request.contextPath}/playlist/playlist.do">playground List</a></li>
			<li><a href="${pageContext.request.contextPath}/review/list.do">Review</a></li>
			<li><a href="#" id="close2">Question</a></li>
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
			<div class="carousel-caption">어디서든지 우리동네 축구장을 조회하여</div>
		</div>
		<div class="item">
			<img
				src="${pageContext.request.contextPath}/resources/img/slide2.jpg"
				alt="">
			<div class="carousel-caption">넓은 필드를 동료들과 함께!</div>
		</div>
		<div class="item">
			<img
				src="${pageContext.request.contextPath}/resources/img/slide1.jpg"
				alt="">
			<div class="carousel-caption">최고의 팀웍과 우정을 나누세요!</div>
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
		<img src="${pageContext.request.contextPath}/resources/images/soccerfield.png" alt="" />
	</div>
	<h1 class="main-text">언제, 어디든지 원하는 곳의 축구장을 이용하세요!</h1>
	<p class="text-center sub-text">
		<em class="first-line">이제는 무료로 운동장을 예약하여 넓은 필드를 동료들과 함께 누려보세요!</em></p>
</div>

  <div class="divider col-sm-12 col-xs-12 col-md-12">
     <div class="header-text">
        <span>Review</span> News
     </div>
  </div>
<c:forEach var="tmp" begin="0" end="1" step="1"  items="${list}">
  <div class="col-md-6 col-sm-6 wow animated-longer-delay-3 fadeInDown ">
    <div class="panel">
        <div class="panel-body">
                <div class="col-xs-12">
                  <div class="avatar-team-member">
                      <img src="${pageContext.request.contextPath }/resources/images/1.jpg" >
                  </div>
                </div>
            <div class="text-center"> 
				<h3>${tmp.title }</h3>
				<p><strong>내용:</strong>${tmp.content }</p>
				<p><strong>작성일:</strong>${tmp.regdate }</p> 
                <ul class="list-unstyled list-inline list-social-sq-primary">
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-google"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                </ul>
            </div>
          </div>
      </div>
  </div>
 </c:forEach>
<!-- ============FOOTER============= -->
<footer id="footer">
	<div class="footer-content container">
		<div class="footer-adress text-center col-xs-12 col-sm-4 col-md-4">
			<h4>Soccer Field</h4>
			<ul class="footer-menus">
				<li>Home /</li>
				<li>Team</li>
				<br/>
				<li>Near Playground/</li>
				<li>playground List /</li>
				<li>Review</li>
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
			<p class="text-center footer-text1">010 5012 4762</p>
			<p class="text-center footer-text">byeol4762@gmail.com</p>
		</div>
		<div class="footer-third col-xs-12 col-sm-4 col-md-4">
			<div class="copyright">
				<span>Copyright 2018 Theme</span><br> <span>All Rights
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
	
	$("#close").click(function(){
		alert("준비중입니다...");
	});
	$("#close2").click(function(){
		alert("준비중입니다...");
	});

</script>
</body>
</html>