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
<h3>예약 폼 입니다.</h3>
<form action="rvinsert.do?num=${dto.num }" method="POST">
<label for="field_name">운동장 이름</label>
<input type="hidden" id="field_name" name="field_name" value="${field_name }"/>
<input type="text" id="field_name" name="field_name" value="${field_name }" disabled /><br/>
<label for="field_date">예약 날짜</label>
<input type="hidden" id="field_date" name="field_date" value="${field_date }"/>
<input type="text" id="field_date" name="field_date" value="${field_date }" disabled/><br/>
<label for="rv_time">예약할시간대</label>
<input type="text" id="rv_time" name="rv_time" value="${rv_time }"/><br/>
<label for="id">예약자 ID</label>
<input type="text" id="id" name="id" value="${id}"/><br/>
<label for="team">예약팀명</label>
<input type="text" id="team" name="team" /><br/>
<label for="phone">예약자 전화번호</label>
<input type="text" id="phone" name="phone" value="${phone }"/><br/>
<label for="teamNP">예약팀인원수</label>
<select name="teamNP" id="teamNP">
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>
	<option value="6">6</option>
	<option value="7">7</option>
	<option value="8">8</option>
	<option value="9">9</option>
	<option value="10">10</option>
	<option value="11">11</option>	
</select><br/>
<label for="etc">기타입력사항</label><br/>
<textarea rows="5" cols="50" id="etc" name="etc"></textarea>
<button type="submit">예약하기</button>
</form>
</body>
</html>