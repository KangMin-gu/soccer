<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>b_updateform.jsp</title>
</head>
<body>
<h3>예약목록 수정</h3>
<form action="b_update.do" method="post">
	<label for="">목록번호</label>
		<input type="text" value="${dto.num }"/><br />
	<label for="">운동장 이름</label>
		<input type="text" value="${dto.playgroundname }"><br />
	<label for="">예약날짜</label>
		<input type="text" value="${dto.field_rent}"><br />
	<label for="">예약시간</label>
		<input type="text" value="${dto.rv_date }"><br />
	<label for="">팀명</label>
		<input type="text" value="${dto.teamname }"><br />
	<label for="">팀인원</label>
		<input type="text" value="${dto.teamnumber }"><br />
	<label for="">전화번호</label>
		<input type="text" value="${dto.phone }"><br />
	<label for="">기타입력사항</label>
		<input type="text" value="${dto.etc }"><br />
		<button type="submit">수정확인</button>
</form>
</body>
</html>