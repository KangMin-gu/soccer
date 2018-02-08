<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin/adminupdateform.jsp</title>
</head>
<body>
<form action="adminupdate.do?id=${dto.id }" method="post">
	<label for="id">회원 아아디</label>
		${dto.id }<input type="hidden" name="id" value="${dto.id }" disabled /><br />
	<label for="name">회원 이름</label>
		${dto.name }<input type="hidden" value="${dto.name }" disabled/><br />
	<label for="email">회원 이메일</label>
		<input type="text" name="email" value="${dto.email }" /><br />
	<label for="addr">회원 주소</label>
		<input type="text" name="addr" value="${dto.addr }" /><br />
	<label for="detailaddr">상세주소</label>
		<input type="text" name="detailaddr" value="${dto.detailaddr }" /><br />
	<label for="phone">회원 전화번호</label>
		<input type="text" name="phone" value="${dto.phone }" /><br />
		<button type="submit">수정확인</button>
</form>
</body>
</html>