<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin/adminupdateform.jsp</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css">	
<link href="${pageContext.request.contextPath}/resources/css/styles.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/demo.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/testimonial.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link href='http://fonts.googleapis.com/css?family=Poiret+One'rel='stylesheet' type='text/css'>


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
					<li class="loginLi"><a href="${pageContext.request.contextPath}/users/loginform.do">Login</a></li>
					<li class="loginLi"><a href="signupform.do">SignUp</a></li>
				</ul>
			</div>
		</c:otherwise>
	</c:choose>

	<div
		class="visible-xs visible-sm col-xs-12 col-sm-12 text-center sm-logo">
		<a rel="home" href="home.do"> <img
			src="${pageContext.request.contextPath}/resources/img/soccer.png"
			width="200" alt="logo">
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
			<li><a
				href="${pageContext.request.contextPath}/home.do">Home</a></li>
			<li><a href="${pageContext.request.contextPath}/home.do">Team</a></li>
			<li><a
				href="${pageContext.request.contextPath}/users/fieldlist.do">Near
					Playground</a></li>
			<li class="hidden-xs hidden-sm"><a rel="home"
				href="${pageContext.request.contextPath}/home.do"><img
					class="logo"
					src="${pageContext.request.contextPath}/resources/img/soccer.png"
					width="200" alt="logo"></a></li>
			<li><a href="${pageContext.request.contextPath}/playlist/playlist.do">playground List</a></li>
			<li><a href="${pageContext.request.contextPath}/review/list.do">Review</a></li>
			<li><a href="${pageContext.request.contextPath}/home.do">Question</a></li>
		</ul>
	</div>
</div>
<div class="container">
	<div class="row">
		<div class="divider col-sm-12 col-xs-12 col-md-12">
			<div class="header-text">
			 <span>Member 정보수정</span>
			<div class="container header-start text-center">
					<h1 class="main-text">${dto.id }회원님</h1>
					<p class="text-center sub-text">
						<em class="first-line"></em>
							<em class="next-line">
							</em>
						</p>
					</div>	
				</div>
			</div>
		</div>
	</div>
<div class="container">
	<div class="row">
		<div class="col-md-offset-2 col-md-8 ">
			<div class="text-left">	
				<form action="adminupdate.do?id=${dto.id }" method="post" >
					<input class="form-control"  type="hidden" name="id" vlaue="${dto.id }" disabled/>
					<div class="form-group">
					<label for="id">회원 아아디</label>
						<input class="form-control"  type="text" name="id" value="${dto.id }" disabled/>
					</div>
					<div class="form-group">	
						<input type="hidden" name="name" vlaue="${dto.name }" disabled/>
					<label for="name">회원 이름</label>
						<input class="form-control"  type="text" value="${dto.name }" disabled/>
					</div>
					<div class="form-group">	
					<label  for="email">회원 이메일</label>
						<input class="form-control"  type="text" name="email" value="${dto.email }" />
					</div>
					<div class="form-group">	
					<label  for="addr">회원 주소</label>
						<input class="form-control"  type="text" name="addr" value="${dto.addr }" />
					</div>
					<div class="form-group">	
					<label for="detailaddr">상세주소</label>
						<input class="form-control"  type="text" name="detailaddr" value="${dto.detailaddr }" />
					</div>
					<div class="form-group">	
					<label  for="phone">회원 전화번호</label>
						<input class="form-control"  type="text" name="phone" value="${dto.phone }" />
					</div>	
						<button class="btn btn-default" type="submit" id="submit">수정</button>
				</form>
				<hr />
			</div>
		</div>
	</div>
</div>
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
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.2.1.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
		<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/nav-hover.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/main.js"></script>

</body>
</html>