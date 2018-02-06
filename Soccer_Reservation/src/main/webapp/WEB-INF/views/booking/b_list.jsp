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
<a class="btn btn-info" href="${pageContext.request.contextPath}/">홈</a>
	<c:forEach var="tmp" items="${list }">
	<p>목록번호: <strong>${tmp.num}</strong></p>
		<c:choose>
	<c:when test="${not empty tmp.field_m_id }">
		<p><strong>${tmp.field_m_id }</strong>님의 예약목록</p>
		<p> 다음은 예약하신 내용 입니다.</p>
	</c:when>
	<c:when test="${not empty tmp.field_a_id }">
		<p><strong>${tmp.field_a_id }</strong>님의 예약목록</p>
		<p> 다음은 예약하신 내용 입니다.</p>
	</c:when>
	<c:otherwise>
		<p><strong>${tmp.field_n_id }</strong>님의 예약목록</p>
		<p> 다음은 예약하신 내용 입니다.</p>
	</c:otherwise>
</c:choose>

<p>예약 한 운동장 :<strong>${tmp.field_name }</strong></p>
<p>예약 날짜 :<strong>${tmp.field_date }</strong></p>

<c:choose>
	<c:when test="${not empty tmp.field_m_tname }">
		<p>팀 이름 :<strong>${tmp.field_m_tname }</strong></p>
	</c:when>
	<c:when test="${not empty tmp.field_a_tname }">
		<p>팀 이름 :<strong>${tmp.field_a_tname }</strong></p>
	</c:when>
	<c:otherwise>
		<p>팀 이름 :<strong>${tmp.field_n_tname }</strong></p>
	</c:otherwise>
</c:choose>
<c:choose>
	<c:when test="${not empty tmp.field_m_phone }">
		<p>연락처 : <strong>${tmp.field_m_phone }</strong></p>
	</c:when>
	<c:when test="${not empty tmp.field_a_phone }">
		<p>연락처 : <strong>${tmp.field_a_phone }</strong></p>
	</c:when>
	<c:otherwise>
		<p>연락처 :<strong>${tmp.field_n_phone }</strong></p>
	</c:otherwise>
</c:choose>
<c:choose>
	<c:when test="${not empty tmp.field_m_teamNP }">
		<p>예약 인원 : <strong>${tmp.field_m_teamNP }</strong></p>
	</c:when>
	<c:when test="${not empty tmp.field_a_teamNP }">
		<p>예약 인원 : <strong>${tmp.field_a_teamNP }</strong></p>
	</c:when>
	<c:otherwise>
		<p>예약 인원 :<strong>${tmp.field_n_teamNP }</strong></p>
	</c:otherwise>
</c:choose>
<c:choose>
	<c:when test="${not empty tmp.field_m_etc }">
		<p>기타 사항 : <strong>${tmp.field_m_etc }</strong></p>
	</c:when>
	<c:when test="${not empty tmp.field_a_etc }">
		<p>기타 사항 : <strong>${tmp.field_a_etc }</strong></p>
	</c:when>
	<c:otherwise>
		<p>기타 사항 :<strong>${tmp.field_n_etc }</strong></p>
	</c:otherwise>
</c:choose>

<a class="btn btn-info" href="b_updateform.do?num=${tmp.num }">예약정보수정</a>
<a class="btn btn-warning" href="javascript:deleteConfirm(${tmp.num})">예약취소</a>
	</c:forEach>

</div>
<script>
	function deleteConfirm(num){
		var result=confirm(num + "번 예약 정보를 수정 하시겠습니까?");
		if(result){
			location.href="b_delete.do?num="+num;
		}
	}
</script>
</body>
</html>