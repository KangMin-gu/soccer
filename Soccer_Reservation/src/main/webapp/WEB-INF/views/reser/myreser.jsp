<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
</head>
<body>


	<table class="table table-bordered">
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
					<td><a href="rvdelete.do?fieldname=${tmp.field_name}&fielddate=${tmp.field_date}&fieldmornig=${tmp.field_m_time}&fieldafternoon=${tmp.field_a_time}&fieldnight=${tmp.field_n_time}">예약취소</a></td>
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
					<td><a href="rvdelete.do?fieldname=${tmp.field_name}&fielddate=${tmp.field_date}&fieldmornig=${tmp.field_m_time}&fieldafternoon=${tmp.field_a_time}&fieldnight=${tmp.field_n_time}">예약취소</a></td>
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
					<td><a href="rvdelete.do?fieldname=${tmp.field_name}&fielddate=${tmp.field_date}&fieldmornig=${tmp.field_m_time}&fieldafternoon=${tmp.field_a_time}&fieldnight=${tmp.field_n_time}">예약취소</a></td>
		</c:if>
		</tr>
			</c:forEach>
		</tbody>
</table>	

	

<a href="${pageContext.request.contextPath}/">홈</a>

<script src="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"></script>
<script>

</script>
</body>
</html>