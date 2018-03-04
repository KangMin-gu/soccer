<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin/adminrvdel_result.jsp</title>
</head>
<body>


<script>
if(('${field_m_id}') != ""){
	alert("회원의  예약을 취소 완료 하였습니다.");
	location.href="${pageContext.request.contextPath}/admin/adminrvlist.do?id=${field_m_id}";
}else if(('${field_a_id}') != ""){
	alert("회원의  예약을 취소 완료 하였습니다.");
	location.href="${pageContext.request.contextPath}/admin/adminrvlist.do?id=${field_a_id}";
}else{
	alert("회원의 예약을 취소 완료 하였습니다.");
	location.href="${pageContext.request.contextPath}/admin/adminrvlist.do?id=${field_n_id}";
}
</script>
</body>
</html>