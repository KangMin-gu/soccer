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
			<th>위도</th>
			<th>경도</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="tmp" items="${position }">
			<tr>
				<td>${tmp.lng }</td>
				<td>${tmp.lat }</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>