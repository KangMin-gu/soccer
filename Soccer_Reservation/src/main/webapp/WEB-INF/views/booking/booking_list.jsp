<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>예약목록</h3>
<table>
	<thead>
		<tr>
			<th>예약자</th>
			<th>예약장소</th>
			<th>예약시간</th>
			<th>일반전화</th>
			<th>휴대폰</th>
			<th>주소1</th>
			<th>주소2</th>
			<th>주소3</th>
			<th>예약인원</th>
			<th>단체명</th>
			<th>기타사항</th>
			<th>삭제</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="tmp" items="${list }">
			<tr>
				<td>${tmp.rUser }</td>
				<td>${tmp.rAddr }</td>
				<td>${tmp.rTime }</td>
				<td>${tmp.phone01 }</td>
				<td>${tmp.phone02 }</td>
				<td>${tmp.addr1 }</td>
				<td>${tmp.addr2 }</td>
				<td>${tmp.addr3 }</td>
				<td>${tmp.userNumber }</td>
				<td>${tmp.orgName }</td>
				<td>${tmp.etc }</td>
				<td><a href="booking/booking_delete.do?num=${tmp.rUser }">삭제</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<script>
</script>
</body>
</html>