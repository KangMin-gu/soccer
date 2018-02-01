<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>booking_detail.jsp</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
</head>
<body>
<div class="container">
	<h3>예약자 정보</h3>
	<table class="table">
		<thead>
			<tr>
				<th>예약번호</th>
				<th>예약자</th>
				<th>일반전화</th>
				<th>휴대폰</th>
				<th>예약자주소</th>
				<th>기타입력사항</th>
			</tr>
		</thead>
		<tbody>
				<tr>
					<td>${dto.num }</td>
					<td>${dto.rUser }</td>
					<td>${dto.phone01 }</td>
					<td>${dto.phone02 }</td>
					<td>${dto.addr1 }${dto.addr2 }${dto.addr3 }</td>
					<td>${dto.etc}</td>
				</tr>
		</tbody>
	</table>
	<c:if test="${not empty id }">
	<a class="btn btn-info" href="booking_updateform?num=${tmp.num }">수정</a>
	<a class="btn btn-warning" href="javascript:deleteCheck()">삭제</a>
	<a class="btn btn-primary" href="${pageContext.request.contextPath }/">Home 돌아가기</a>
</c:if>
</div>
<script>
	function deleteCheck(){
		var isDelete = confirm("${rUser} 정보를 삭제하시겠습니까?");
		if(isDelete){
			location.href="booking_delete.do?num=${tmp.num }";
		}
	}
</script>
</body>
</html>