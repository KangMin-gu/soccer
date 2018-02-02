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
	<label for="num">목록번호</label>
		<input type="hidden" name="num"  value="${dto.num }"/><strong>${dto.num }</strong><br />
	<label for="playgroundname">운동장 이름</label>
		<input type="hidden" name="playgroundname"  value="${dto.playgroundname }"><strong>${dto.playgroundname }</strong><br />
	<label for="field_rent">예약날짜</label>
		<input type="hidden" name="field_rent"  value="${dto.field_rent}"><strong>${dto.field_rent}</strong><br />
	<label for="rv_date">예약시간</label>
		<input type="hidden" name="rv_date"  value="${dto.rv_date }"><strong>${dto.rv_date }</strong><br />
	<label for="teamname">팀명</label>
		<input type="text" name="teamname" value="${dto.teamname }"><br />
	<label for="teamnumber">팀인원</label>
		<input type="text" name="teamnumber"  value="${dto.teamnumber }"><br />
	<label for="phone">전화번호</label>
		<input type="text" name="phone" value="${dto.phone }"><br />
	<label for="etc">기타입력사항</label>
		<input type="text" name="etc" value="${dto.etc }"><br />
		<button type="submit">수정확인</button>
</form>
</body>
</html>