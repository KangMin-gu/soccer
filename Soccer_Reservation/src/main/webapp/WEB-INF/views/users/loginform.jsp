<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>users/loginform.do</title>
</head>
<body>
<h3>로그인 폼 입니다.</h3>
<form action="login.do" method="post">
	<input type="hidden" name="url" value="${url }"/>
	<label for="id">아이디</label>
	<input type="text" id="id" name="id" /><br/>
	<label for="pwd">패쓰워드</label>
	<input type="password" id="pwd" name="pwd" />
	<button type="submit">로그인하기</button>
</form>
</body>
</html>