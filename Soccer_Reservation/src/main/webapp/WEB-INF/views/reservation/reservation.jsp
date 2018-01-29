<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>reservation.jsp</title>
</head>
<body>
<h3>예약Form 페이지</h3>
<form action="reservation_result.do" method="post">
	<label for="id">아이디</label>
	<input type="text" name="id" id="id" /><br />
	<label for="pwd">비밀번호</label>
	<input type="password" name="pwd" id="pwd" /><br />
	<label for="email"></label>
</form>

</body>
</html>