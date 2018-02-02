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

<h3>예약 현황</h3>
<form action="rv_form.do" method="POST">
<input type="hidden" id="field_name" name="field_name" value="${dto.field_name }" /><br/>
<label for="">날짜</label>
<select name="rv_date" id="rv_date" >
	<option value="">----날짜선택----</option>
	<option value="2017-2-10">2017-2-10</option>
	<option value="2017-2-11">2017-2-11</option>
</select>
<select name="rv_time" id="rv_time">
	<option value="">---타임선택---</option>
	<option value="${dto.field_morning}">오전</option>
	<option value="${dto.field_afternoon }">오후</option>
	<option value="${order.field_night }">저녁</option>
</select>
<button type="submit">예약하기</button>
</form>

<p>오전 시간 : <strong>${dto.field_morning }</strong></p>

 <c:choose>
<c:when test="${not empty order.field_m_tname }">
	<p>오전 대여팀 : <strong>${order.field_m_tname }</strong></p>	
</c:when>
<c:otherwise>
	<p><strong>오전 예약 가능</strong></p>
</c:otherwise>
</c:choose>
<br/>
<p>오후 시간 : <strong>${dto.field_afternoon }</strong></p>

<c:choose>
<c:when test="${not empty order.field_a_tname }">
	<p>오후 대여팀 : <strong>${order.field_a_tname }</strong></p>	
</c:when>
<c:otherwise>
	<p><strong>오후 예약 가능</strong></p>
</c:otherwise>
</c:choose>
<br/>
<p>저녁 시간 : <strong>${dto.field_night }</strong></p>

<c:choose>
<c:when test="${not empty order.field_n_tname }">
	<p>저녁 대여팀 : <strong>${order.field_n_tname }</strong></p>	
</c:when>
<c:otherwise>
	<p><strong>저녁 예약 가능</strong></p>
</c:otherwise>
</c:choose>

<br/>

<a href="${pageContext.request.contextPath}/users/fieldlist.do">등록 주소의 주변 운동장 보러가기</a>
<a href="${pageContext.request.contextPath}/">홈으로가기</a>

</body>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.js"></script>
<script>



$("#rv_date").change(function(){
	
	var date = $("#rv_date").val();
	
	$.ajax({
		url:"rvfieldinfo.do?field_name="+("${dto.field_name }")+"&field_date="+date,
		method:"GET",
		success:function(data){
			//console.log(data);
			if(data){
				console.log(data)
			}else{
				console.log("empty");
			}
		}
	});
	
});

</script>
</html>












