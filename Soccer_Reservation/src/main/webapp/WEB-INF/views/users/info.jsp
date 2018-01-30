<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>users/info.do</title>
</head>
<body>
<p>아이디 :<strong>${dto.id}</strong></p>
<p>이름 : <strong>${dto.name }</strong></p>
<p>이메일 : <strong>${dto.email }</strong></p>
<p>전화번호 : <strong>${dto.phone }</strong></p>
<p>주소 : <strong>${dto.addr }</strong></p>
<p>가입날짜 : <strong>${dto.regdate }</strong></p>
<a href="updateform.do">가입정보수정</a>
<a href="delete.do">회원탈퇴</a>
<a href="mymap.do">내 위치 찾기</a>
<a href="fieldlist.do">운동장리스트</a>
<a href="testmap.do">현재내위치맵</a>
<a href="testmap2.do">내위치와 운동장리스트</a>
<a href="${pageContext.request.contextPath}/">인덱스가기</a>
</body>
</html>