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
					<th scope="row"><label for="field_rent">운동장 예약날짜</label></th>
					<td><input type="text" name="field_rent" id="field_rent" /></td>
				</tr>
				<tr>
					<th scope="row"><label for="rv_date">운동장 예약시간</label></th>
					<td><input type="text" name="rv_date" id="rv_date" /></td>
				</tr>
				<tr>
					<th scope="row"><label for="teamname">팀명</label></th>
					<td><input type="text" name="teamname" id="teamname" value=""/><td>
				</tr>
				<tr>
					<th scope="row"><label for=" teamnumber">팀인원수</label></th>
					<td><input type="text" name="teamnumber" id="teamnumber" />명<td>
				</tr>
				<tr>
					<th scope="row"><label for="phone">전화번호</label></th>
					<td><input type="text" name="phone" id="phone" value="${dto.phone }"/></td>
				</tr>
				<tr>
					<th scope="row"><label for="etc">기타입력사항</label></th>
					<td><textarea id="etc" name="etc"  cols="90" rows="5"></textarea></td>
				</tr>
			</tbody>
		</table>	
			<button class="btn btn-info" type="reset">취소</button>
			<button class="btn btn-primary" type="submit">신청</button>
	</form>	
</div>		
</body>
</html>