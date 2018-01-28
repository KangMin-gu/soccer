<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>users/updateform.do</title>
</head>
<body>
<h3>업데이트 폼입니다.</h3>
<form action="update.do" method="post">
<input type="hidden" name="id" value="${dto.name }"/>
<input type="hidden" name="name" value="${dto.id }"/>
<label for="name">이름</label>
<input type="text" name="name" id="name" value="${dto.name }" disabled /><br/>
<label for="id">아이디</label>
<input type="text" name="id" id="id" value="${dto.id }" disabled /><br/>
<label for="email">이메일</label>
<input type="text" name="email" id="email" value="${dto.email }" /><br/>
<label for="phone">전화번호</label>
<input type="text" name="phone" id="phone" value="${dto.phone }" /><br/>
<label for="addr">주소</label>
<input type="text" name="addr" id="addr" value="${dto.addr }" /><br/>
<button type="submit">수정하기</button>
</form>
</body>
</html>