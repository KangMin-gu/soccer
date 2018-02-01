<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>booking_updateform.jsp</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
</head>
<body>
<div class="container">
	<h3>예약 폼</h3>
	<form action="b_insert.do" method="post">
		<table class="table">
			<caption>예약시간 목록, 예약금액 목록</caption>
			<colgroup>
				<col width="20%" />
				<col />
			</colgroup>
			<tbody>
			<tr>
				<th scope="row"><label for="playgroundname">운동장이름</label></th>
				<td><input type="text" name="playgroundname" id="playgroundname" /></td>
			</tr>
			<tr>
				<th scope="row"><label for="field_m_tname">운동장 대여시간 (아침)</label></th>
				<td><input type="text" name="field_m_tname" id="field_m_tname" /></td>
			</tr>
			<tr>
				<th scope="row"><label for="field_a_tname">운동장 대여시간 (점심)</label></th>
				<td><input type="text" name="field_a_tname" id="field_a_tname"/></td>
			</tr>
			<tr>
				<th scope="row"><label for="field_n_tname">운동장 대여시간 (저녁)</label></th>
				<td><input type="text" name="field_n_tname" id="field_n_tname"/></td>
			</tr>
			<tr>
				<th scope="row"><label for="rv_date">대여시간</label></th>
				<td><input type="text" name="rv_date" id="rv_date" /></td>
			</tr>
			</tbody>
		</table>
		<table>
			<tr>
				<th><label for="teamname">팀명</label></th>
				<td><input type="text" name="teamname" id="teamname" /><td>
			</tr>
			<tr>
				<th><label for=" teamnumber">팀인원수</label></th>
				<td><input type="text" name="teamnumber" id="teamnumber" />명<td>
			</tr>
			<tr>
				<th><label for="phone">전화번호</label></th>
				<td><input type="text" name="phone" id="phone" /></td>
			</tr>
			<tr>
				<th><label for="etc">기타입력사항</label></th>
				<td><textarea id="etc" name="etc"  cols="90" rows="5"></textarea></td>
			</tr>
		</table>	
			<button class="btn btn-info" type="reset">취소</button>
			<button class="btn btn-primary" type="submit">신청</button>
	</form>	
</div>		
</body>
</html>