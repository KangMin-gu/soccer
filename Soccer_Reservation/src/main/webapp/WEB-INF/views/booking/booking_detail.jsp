<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>booking_detail.jsp</title>
</head>
<body>
<h3>예약자 정보</h3>
<table>
	<thead>
		<tr>
			<th>예약자</th>
			<th>일반전화</th>
			<th>휴대폰</th>
			<th>예약자주소</th>
			<th>기타입력사항</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="tmp" items="${list }">
			<tr>
				<td>${tmp.rUser }</td>
				<td>${tmp.phone01 }</td>
				<td>${tmp.phone02 }</td>
				<td>${tmp.addr1 }${tmp.addr2 }${tmp.addr3 }</td>
				<td>${tmp.etc}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>