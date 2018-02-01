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
	<h3>관리자 페이지</h3>
	<p>${id }</p>
	<p>예약 목록</p>
	<table class="table">
		<thead>
			<tr>
				<th>목록번호</th>
				<th>운동장 이름</th>
				<th>예약날짜</th>
				<th>예약시간</th>
				<th>팀명</th>
				<th>팀인원</th>
				<th>전화번호</th>
				<th>기타입력사항</th>
				<th>수정</th>
				<th>삭제</th>
			</tr> 
		</thead>
		<tbody>
			<c:forEach var="tmp" items="${list }">
				<tr>
					<td>${tmp.num }</td>
					<td>${tmp.playgroundname }</td>
					<td>${tmp.field_rent }</td>
					<td>${tmp.rv_date}</td>
					<td>${tmp.teamname  }</td>
					<td>${tmp.teamnumber }</td>
					<td>${tmp.phone }</td>
					<td>${tmp.etc }</td>
					<c:if test="${ id eq 'admin' }">
						<td><a class="btn btn-info" href="booking_updateform?num=${tmp.num }">수정</a></td>
						<td><a class="btn btn-warning" href="javascript:deleteCheck()">삭제</a></td>
					</c:if>	
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a class="btn btn-primary" href="${pageContext.request.contextPath }/">Home 돌아가기</a>
</div>
<script>
	function deleteCheck(){
		var isDelete = confirm("${num} 정보를 삭제하시겠습니까?");
		if(isDelete){
			location.href="b_delete.do?num=${tmp.num }";
		}
	}
</script>
</body>
</html>