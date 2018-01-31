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
<h3>해당 운동장의 자세히보기페이지입니다.</h3>
<p>운동장 이름: <strong>${dto.field_name }</strong></p>
<p>운동장 주소: <strong>${dto.field_addr }</strong></p>
<p>대여 가능 시간</p>
<p>오전: <strong>${dto.field_morning }</strong></p>
<p>오후: <strong>${dto.field_afternoon }</strong></p>
<p>저녁: <strong>${dto.field_night }</strong></p>
<a href="${pageContext.request.contextPath}/users/fieldlist.do">등록 주소의 주변 운동장 보러가기</a>
<a href="${pageContext.request.contextPath}/">홈으로가기</a>
</body>
</html>