<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/dynamictable.css" />	
</head>
<!-- ============TOP============= -->
</head>
<body>
<br />
<div class="container">
	<div class="row">
		<div class="divider col-sm-12 col-xs-12 col-md-12">
			<div class="header-text">
				My<span>예약정보 페이지</span>
				<div class="container header-start text-center"></div>
			</div>
		</div>
	</div>
</div>
<!-- ================ Main ============= -->
<div class="container">
	<div class="row">
		<div class=" col-md-12 text-center ">
			<div style="float:left;">	
				<h3>예약목록</h3>
				<table style="margin-right:200px;" class="table table-hover">
				<thead>
					<tr>
						<th>예약 번호</th>
						<th>운동장 이름</th>
						<th>예약 날짜</th>
						<th>신청시간</th>
						<th>팀 이름</th>
						<th>운동장 인원 수</th>
						<th>연락처</th>
						<th>기타 요청 사항</th>
						<th>취소</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="tmp" items="${list }">
					<tr>	
					<c:if test="${tmp.field_m_id eq id }">
								<td>${tmp.num }</td>
								<td>${tmp.field_name }</td>
								<td>${tmp.field_date }</td>
								<td>${tmp.field_m_time }</td>
								<td>${tmp.field_m_tname }</td>
								<td>${tmp.field_m_teamNP }</td>
								<td>${tmp.field_m_phone }</td>
								<td>${tmp.field_m_etc }</td>
								<td><a class="btn btn-danger btn-sm" href="rvdelete.do?fieldname=${tmp.field_name}&fielddate=${tmp.field_date}&fieldmornig=${tmp.field_m_time}&fieldafternoon=${tmp.field_a_time}&fieldnight=${tmp.field_n_time}">예약취소</a></td>
					</c:if>
					</tr>
					<tr>
							<c:if test="${tmp.field_a_id eq id }">
								<td>${tmp.num }</td>
								<td>${tmp.field_name }</td>
								<td>${tmp.field_date }</td>
								<td>${tmp.field_a_time }</td>
								<td>${tmp.field_a_tname }</td>
								<td>${tmp.field_a_teamNP }</td>
								<td>${tmp.field_a_phone }</td>
								<td>${tmp.field_a_etc }</td>
								<td><a class="btn btn-danger btn-sm" href="rvdelete.do?fieldname=${tmp.field_name}&fielddate=${tmp.field_date}&fieldmornig=${tmp.field_m_time}&fieldafternoon=${tmp.field_a_time}&fieldnight=${tmp.field_n_time}">예약취소</a></td>
					</c:if>
					</tr>
					<tr>
							<c:if test="${tmp.field_n_id eq id }">
								<td>${tmp.num }</td>
								<td>${tmp.field_name }</td>
								<td>${tmp.field_date }</td>
								<td>${tmp.field_n_time }</td>
								<td>${tmp.field_n_tname }</td>
								<td>${tmp.field_n_teamNP }</td>
								<td>${tmp.field_n_phone }</td>
								<td>${tmp.field_n_etc }</td>
								<td><a class="btn btn-danger btn-sm" href="rvdelete.do?fieldname=${tmp.field_name}&fielddate=${tmp.field_date}&fieldmornig=${tmp.field_m_time}&fieldafternoon=${tmp.field_a_time}&fieldnight=${tmp.field_n_time}">예약취소</a></td>
					</c:if>
					</tr>
						</c:forEach>
					</tbody>
				</table>	
				<a class="btn btn-default btn-sm pull-right" href="${pageContext.request.contextPath}/">홈 바로가기</a>
				</div>
			</div>
		</div>
	</div>
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
<script>
</script>
</body>
</html>