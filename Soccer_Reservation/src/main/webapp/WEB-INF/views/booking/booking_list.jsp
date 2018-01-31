<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
</head>
<body>
<div class="container">
	<h3>예약목록</h3>
	<table class="table">
		<thead>
			<tr>
				<th>예약자</th>
				<th>예약장소</th>
				<th>예약시간</th>
				<th>예약인원</th>
				<th>단체명</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="tmp" items="${list }">
				<tr>
					<td>${tmp.rUser }</td>
					<td><a href="booking_detail.do?num=${tmp.rUser }">${tmp.rAddr }</a></td>
					<td>${tmp.rTime }</td>
					<td>${tmp.userNumber }</td>
					<td>${tmp.orgName }</td>
					<td><a href="booking_delete.do?num=${tmp.rUser }">삭제</a></td>
					<td><a href="booking_updateform?num=${tmp.rUser }">수정</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<script>
</script>
</body>
</html>