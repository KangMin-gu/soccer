<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin/adminlist.jsp</title>
</head>
<body>
<h3>관리자페이지</h3>
<p>회원정보 수정 및 탈퇴처리 </p>
<p>예약 정보 확인 및 취소처리</p>
<table>
	<thead>
		<tr>
			<th>회원 아이디</th>
			<th>회원 이름</th>
			<th>회원 이메일</th>
			<th>회원 주소</th>
			<th>회원 전화번호</th>
			<th>회원정보수정</th>
			<th>회원정보 삭제</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach  var="tmp" items="${list }">
			<tr>
				<td>${tmp.id }</td>
				<td>${tmp.name }</td>
				<td>${tmp.email }</td>
				<td>${tmp.addr }${tmp.detailaddr }</td>
				<td>${tmp.phone }</td>
				<td><a href="adminupdateform.do">정보수정</a></td>
				<td><a href="admindelete.do">정보삭제</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>