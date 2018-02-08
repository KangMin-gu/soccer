<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	alert("일시적으로 오류가 발생되어 페이지를 새로고침 하겠습니다. ");
	location.href="${pageContext.request.contextPath}//users/fieldlist.do";
</script>
</body>
</html>