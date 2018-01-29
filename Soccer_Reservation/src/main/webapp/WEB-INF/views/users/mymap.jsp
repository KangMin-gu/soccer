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
<h3>가입 등록 주소를 기준으로 맵을 표현합니다.</h3>
<p>주소: <strong>${addr }</strong></p>
<p>주소의 좌표는 다음과 같습니다.</p>
<p>lat: <strong>${lat }</strong></p>
<p>lng: <strong>${lng }</strong></p>
<a href="info.do">나의 정보 보러가기</a>
</body>
</html>