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
<h3>해당 운동장의 정보 자세히보기 페이지입니다.</h3>
<p>운동장 이름: <strong>${dto.field_name }</strong></p>
<p>운동장 주소: <strong>${dto.field_addr }</strong></p>
<p>입장 가능 시간</p>
<p>오전: <strong>${dto.field_morning }</strong></p>
<p>오전 대여팀 : <strong></strong></p>
<p>오후: <strong>${dto.field_afternoon }</strong></p>
<p>오 대여팀 : <strong></strong></p>
<p>저녁: <strong>${dto.field_night }</strong></p>
<p>저녁 대여 팀 : <strong></strong></p>
<a href="${pageContext.request.contextPath}/users/fieldlist.do">등록 주소의 주변 운동장 보러가기</a>
<a href="${pageContext.request.contextPath}/">홈으로가기</a>
<p> 
오더테이블에서 해당 운동장 이름을 조인해서 해당 오더 정보를 가져온다.
날짜별로선택 할때마다 대여팀이름이 바뀌어서 출력되어야한다. 

내일 할일은 여기페이지에 날짜 선택 셀렉옵션폼을 만들고  아작스로 해당날짜를 선택할때마다 대여팀이 바뀌게쿼리를짜서 출력한다.
오전과 대여팀은 if문을 활용해서 만약 날짜가 맞다면 출력 아니면 대여가능이라 표시한다. 일단 여기까지 머리굴림....
</p>
</body>
</html>