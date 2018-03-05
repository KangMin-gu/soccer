<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin/adminlist.jsp</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" />
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
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/playlist.css" />
</head> 
<body>
<div class="header container">
		<!-- 세션에 id의 유무에따라 보여지는 loginView -->
		<c:choose>
			<c:when test="${not empty id }">
				<div>
					<ul class="nav navbar-nav" id="loginUl">
						<li class="loginLi"><a
							href="${pageContext.request.contextPath}/users/info.do">My
								info</a></li>
						<li class="loginLi"><a
							href="${pageContext.request.contextPath}/users/logout.do">Logout</a></li>
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
				<li class="selected"><a
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
	<!-- ============TOP============= -->

<div class="container">
	<div class="row">
		<div class="divider col-sm-12 col-xs-12 col-md-12">
			<div class="header-text">
				<span>관리자 페이지</span>
				<div class="container header-start text-center"></div>
			</div>
		</div>
	</div>
</div>
	<!-- ================ Main ============= -->
<div class="container">
	<div class="row">
		<div class=" col-md-12 text-center">
			<h3>회원목록</h3>
			<table class="table table-hover ">
				<thead>
					<tr>
						<th>회원 아이디</th>
						<th>회원 이름</th>
						<th>회원 이메일</th>
						<th>회원 주소</th>
						<th>회원 전화번호</th>
						<th>회원정보수정</th>
						<th>회원정보 삭제</th>
						<th>회원 예약정보</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach  var="tmp" items="${list }">
						<tr>
							<td>${tmp.id }</td>
							<td>${tmp.name }</td>
							<td>${tmp.email }</td>
							<td>${tmp.addr }${tmp.detailaddr }</td>
							<td>${tmp.phone }</td>
							<td><a class="btn btn-default btn-sm" href="adminupdateform.do?id=${tmp.id }">정보수정</a></td>
							<c:choose>
								<c:when test="${tmp.id eq 'admin' }">
								<td><strong class="btn btn-danger btn-sm">삭제불가</strong></td>
								</c:when>
								<c:otherwise>
								<td><a class="btn btn-warning btn-sm" href="admindel.do?id=${tmp.id}">정보삭제</a></td>
								</c:otherwise>
							</c:choose>
							<td><a class="btn btn-default btn-sm" onclick="window.open('adminrvlist.do?id=${tmp.id}', '예약정보관리','width=1000, height=500'); return false">예약정보관리</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<ul class="pagination">
				<c:choose>
					<c:when test="${startPageNum ne 1 }">
						<li>
							<a href="adminlist.do?pageNum=${startPageNum-1 }&condition=${condition}&keyword=${keyword}">&laquo;</a>
						</li>
					</c:when>
					<c:otherwise>
						<li class="disabled">
							<a href="javascript:">&laquo;</a>
						</li>
					</c:otherwise>
				</c:choose>
				<c:forEach var="i" begin="${startPageNum }" 
						end="${endPageNum }">	
					<c:choose>
						<c:when test="${i eq pageNum }">
							<li class="active"><a href="adminlist.do?pageNum=${i }&condition=${condition}&keyword=${keyword}">${i }</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="adminlist.do?pageNum=${i }&condition=${condition}&keyword=${keyword}">${i }</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:choose>
					<c:when test="${endPageNum lt totalPageCount }">
						<li>
							<a href="adminlist.do?pageNum=${endPageNum+1 }&condition=${condition}&keyword=${keyword}">&raquo;</a>
						</li>
					</c:when>
					<c:otherwise>
						<li class="disabled">
							<a href="javascript:">&raquo;</a>
						</li>
					</c:otherwise>
				</c:choose>
			</ul>
			<div class="row">
				<div class="col-xs-6">
					<!-- 검색어 관련 form -->
					<form action="adminlist.do" method="post">
						<input type="hidden" id="condition" value="${condition }" name="condition" />
				        <div class="input-group">
				          <div class="input-group-btn">
				            <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown">
				              <span id="conditionBtn">ID+이름</span>
				              <span class="caret"></span>
				            </button>
				            <ul class="dropdown-menu">
				              <li><a href="javascript:set('id')">ID</a>
				              </li>
				              <li><a href="javascript:set('name')">이름</a>
				              </li>
				            </ul>
				          </div>
				          <!-- /btn-group -->
				          <input type="text" id="keyword" name="keyword" value="${keyword }" class="form-control"/>
				          	<span class="input-group-btn">
					            <button class="btn btn-default" type="submit">
					              <span class="sr-only">검색</span>
					              <span class="glyphicon glyphicon-search"></span>
					            </button>
		          			</span>
				        </div>			
					</form>
				</div>
			</div><!-- /.row -->
			<a class="btn btn-default pull-right" href="${pageContext.request.contextPath}/">메인페이지바로가기</a>
			<hr />
		</div>
	</div><!-- /.row -->
</div><!-- /.container -->

<!-- ============FOOTER============= -->
<footer id="footer">
	<div class="footer-content container">
		<div class="footer-adress text-center col-xs-12 col-sm-4 col-md-4">
			<h4>Great love for humanity</h4>
			<ul class="footer-menus">
				<li>Home /</li>
				<li>About</li>
				<br />
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

<script
	src="${pageContext.request.contextPath }/resources/js/jquery-3.2.1.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
</body>
<script>
	set("${condition}");
	
	function set(condition){
		if(condition=="id" || condition==""){
			condition="id";
			$("#conditionBtn").text("ID");
		}else if(condition=="name"){
			$("#conditionBtn").text("이름");
		}
		
		$("#condition").val(condition);
	}
</script>
</html>