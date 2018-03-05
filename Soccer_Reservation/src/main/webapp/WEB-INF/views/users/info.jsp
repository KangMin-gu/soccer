<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<!-- 현재 페이지에 적용할 style.css 파일을 여기에서 로딩한다 -->	
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/info.css" />
</head>
<body>
	<div class="header container">
	<!-- 세션에 id의 유무에따라 보여지는 loginView -->
	<c:choose>
		<c:when test="${not empty id }">
			<div>
				<ul class="nav navbar-nav" id="loginUl">
					<li class="loginLi"><a href="${pageContext.request.contextPath}/users/info.do">My info</a></li>
					<li class="loginLi"><a href="${pageContext.request.contextPath}/users/logout.do">Logout</a></li>
				</ul>	
			</div>			
		</c:when>
		<c:otherwise>
			<div>
				<ul class="nav navbar-nav" id="loginUl">
					<li class="loginLi"><a href="users/loginform.do">Login</a></li>
					<li class="loginLi"><a href="users/signupform.do">SignUp</a></li>
				</ul>
			</div>	
		</c:otherwise>
	</c:choose>
	
		<div
			class="visible-xs visible-sm col-xs-12 col-sm-12 text-center sm-logo">
			<a rel="home" href="${pageContext.request.contextPath}/home.do"> <img src="${pageContext.request.contextPath}/resources/img/soccer.png" width="200" alt="logo">
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
				<li class="selected"><a href="${pageContext.request.contextPath}/home.do">Home</a></li>
				<li><a href="${pageContext.request.contextPath}/home.do">Team</a></li>
				<li><a href="${pageContext.request.contextPath}/users/fieldlist.do">Near Playground</a></li>
				<li class="hidden-xs hidden-sm"><a rel="home" href="${pageContext.request.contextPath}/home.do"><img
						class="logo"
						src="${pageContext.request.contextPath}/resources/img/soccer.png"
						width="200" alt="logo"></a></li>
				<li><a href="${pageContext.request.contextPath}/playlist/playlist.do">playground List</a></li>
				<li><a href="${pageContext.request.contextPath}/review/list.do">Review</a></li>
				<li><a href="${pageContext.request.contextPath}/home.do">Question</a></li>
			</ul>
		</div>
	</div>
<!-- ============TOP============= -->
<!-- ===========소제목============ -->
<div class="container">
	<div class="row">
		<div class="divider col-sm-12 col-xs-12 col-md-12">
			<div class="header-text"> My <span>Information</span></div>
		</div>
	</div>
</div>

<!-- ============본문============== -->
<div class="container">
	<div class="row">
    	<div class="col-md-offset-2 col-md-8 text-center" >
			<table id="infoTable" class="table table-hover">
				<thead>
					<tr>
						<th class="cells" colspan="2"><h2>${dto.name }님의 회원 정보 입니다.</h2></th>
					</tr>
				</thead>	
				<tbody>
					<tr>
						<td class="cell">아이디 :</td>
						<td class="cell">${dto.id }</td>
					</tr>									
					<tr>
						<td class="cell">전화번호 :</td> 								
						<td class="cell">${dto.phone }</td>
					</tr> 						
					<tr>
						<td class="cell">주소 :</td>								
						<td class="cell">${dto.addr } &nbsp ${dto.detailaddr }</td>

					</tr>
					<tr>
						<td class="cell">가입하신 날짜 :</td>									
						<td class="cell">${dto.regdate }</td>
					</tr>						
				</tbody>
			</table>
			<div class="text-center">
				<ul class="list-unstyled list-inline list-social-sq-primary">
					<li><a class="btn btn-default" href="updateform.do">가입정보수정</a></li>
					<li><a class="btn btn-default" onclick="window.open('${pageContext.request.contextPath}/reser/myreser.do', '나의 예약정보 확인','width=1000, height=500'); return false">나의 예약정보 확인</a></li>
					<li><a class="btn btn-default" href="delete.do">회원탈퇴</a></li>
					<!-- 관리자로 접속시 회원관리 페이지이동 버튼 생성 -->
					<c:if test="${id eq 'admin' }">
					<hr /><li><a class="btn  btn-default" href="${pageContext.request.contextPath}/admin/adminlist.do">회원관리 및 예약관리</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
</div>
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
	