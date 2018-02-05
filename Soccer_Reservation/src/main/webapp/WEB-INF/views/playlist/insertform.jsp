<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>users/signup_form.jsp</title>
</head>
<body>
<h3>회원가입 폼입니다.</h3>
<form action="insert.do" method="post" id="myForm">
	<label for="field_name">운동장이름</label>
	<input type="text" name="field_name" id="field_name" />
	<label for="field_addr">운동장주소</label>
	<input type="text" name="field_addr" id="field_addr" />
	<label for="field_morning">오전시간</label>
	<input type="text" name="field_morning" id="field_morning" />
	<label for="field_afternoon">오후시간</label>
	<input type="text" name="field_afternoon" id="field_afternoon" />
	<label for="field_night">저녁시간</label>
	<input type="text" name="field_night" id="field_night" />
	<br/>
	<button type="submit">추가</button>
	<button type="reset">취소</button>
</form>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.2.1.js"></script>

</body>
</html>











