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

<table>
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
				<td>${tmp.num }</td>
				<td>${tmp.field_name }</td>
				<td>${tmp.field_date }</td>
	
			<c:choose>
				<c:when test="${not empty tmp.field_m_tname  }">
				<td>10-12</td>
					<td>${tmp.field_m_tname }</td>
				</c:when>
				<c:when test="${not empty tmp.field_a_tname }">
				<td>13-15</td>
					<td>${tmp.field_a_tname }</td>
				</c:when>
				<c:otherwise>
				<td>16-18</td>
					<td>${tmp.field_n_tname }</td>
				</c:otherwise>
			</c:choose>	
			<c:choose>
				<c:when test="${not empty tmp.field_m_teamNP }">
					<td>${tmp.field_m_teamNP }</td>
				</c:when>
				<c:when test="${not empty tmp.field_a_teamNP }">
					<td>${tmp.field_a_teamNP }</td>
				</c:when>	
				<c:otherwise>
					<td>${tmp.field_n_teamNP }</td>
				</c:otherwise>			
			</c:choose>
			<c:choose>
				<c:when test="${not empty tmp.field_m_phone }">
					<td>${tmp.field_m_phone }</td>
				</c:when>
				<c:when test="${not empty tmp.field_a_phone }">
					<td>${tmp.field_a_phone }</td>
				</c:when>	
				<c:otherwise>
					<td>${tmp.field_n_phone }</td>
				</c:otherwise>			
			</c:choose>
			<c:choose>
				<c:when test="${not empty tmp.field_m_etc }">
					<td>${tmp.field_m_etc }</td>
				</c:when>
				<c:when test="${not empty tmp.field_a_etc }">
					<td>${tmp.field_a_etc }</td>
				</c:when>	
				<c:otherwise>
					<td>${tmp.field_n_etc }</td>
				</c:otherwise>			
			</c:choose>
				<td><a href="myrvcancel.do?">취소</a></td>
			</tr>
		</c:forEach>	
	</tbody>
</table>


</body>
</html>