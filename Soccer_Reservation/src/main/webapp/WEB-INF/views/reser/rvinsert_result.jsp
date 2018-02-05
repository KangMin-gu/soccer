<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:choose>
	<c:when test="${not empty order.field_m_id }">
		<p><strong>${order.field_m_id }</strong>님의 예약이 완료 되었습니다.</p>
		<p> 다음은 예약하신 내용 입니다.</p>
	</c:when>
	<c:when test="${not empty order.field_a_id }">
		<p><strong>${order.field_a_id }</strong>님의 예약이 완료 되었습니다.</p>
		<p> 다음은 예약하신 내용 입니다.</p>
	</c:when>
	<c:otherwise>
		<p><strong>${order.field_n_id }</strong>님의 예약이 완료 되었습니다.</p>
		<p> 다음은 예약하신 내용 입니다.</p>
	</c:otherwise>
</c:choose>

<p>예약 한 운동장 :<strong>${order.field_name }</strong></p>
<p>예약 날짜 :<strong>${order.field_date }</strong></p>

<c:choose>
	<c:when test="${not empty order.field_m_tname }">
		<p>팀 이름 :<strong>${order.field_m_tname }</strong></p>
	</c:when>
	<c:when test="${not empty order.field_a_tname }">
		<p>팀 이름 :<strong>${order.field_a_tname }</strong></p>
	</c:when>
	<c:otherwise>
		<p>팀 이름 :<strong>${order.field_n_tname }</strong></p>
	</c:otherwise>
</c:choose>
<c:choose>
	<c:when test="${not empty order.field_m_phone }">
		<p>연락처 : <strong>${order.field_m_phone }</strong></p>
	</c:when>
	<c:when test="${not empty order.field_a_phone }">
		<p>연락처 : <strong>${order.field_a_phone }</strong></p>
	</c:when>
	<c:otherwise>
		<p>팀 이름 :<strong>${order.field_n_phone }</strong></p>
	</c:otherwise>
</c:choose>
<c:choose>
	<c:when test="${not empty order.field_m_teamNP }">
		<p>예약 인원 : <strong>${order.field_m_teamNP }</strong></p>
	</c:when>
	<c:when test="${not empty order.field_a_teamNP }">
		<p>예약 인원 : <strong>${order.field_a_teamNP }</strong></p>
	</c:when>
	<c:otherwise>
		<p>예약 인원 :<strong>${order.field_n_teamNP }</strong></p>
	</c:otherwise>
</c:choose>
<c:choose>
	<c:when test="${not empty order.field_m_etc }">
		<p>기타 사항 : <strong>${order.field_m_etc }</strong></p>
	</c:when>
	<c:when test="${not empty order.field_a_etc }">
		<p>기타 사항 : <strong>${order.field_a_etc }</strong></p>
	</c:when>
	<c:otherwise>
		<p>기타 사항 :<strong>${order.field_n_etc }</strong></p>
	</c:otherwise>
</c:choose>




<a href="${pageContext.request.contextPath}/">홈</a>
</body>
</html>