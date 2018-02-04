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
<form action="rv_form.do?num=${dto.num}" method="POST" id="reservationform">
<input type="hidden" id="field_name" name="field_name" value="${dto.field_name }" /><br/>
<label for="">날짜</label>
<select name="rv_date" id="rv_date" >
	<option value="">----날짜선택----</option>
	<option value="2017-2-10">2017-2-10</option>
	<option value="2017-2-11">2017-2-11</option>
</select>
<select name="rv_time" id="rv_time">
	<option value="">---타임선택---</option>
	<option id="morninga" value="${dto.field_morning}" disabled="disabled">오전 : ${dto.field_morning}</option>
	<option id="afternoona" value="${dto.field_afternoon }" disabled="disabled">오후 : ${dto.field_afternoon }</option>
	<option id="nighta" value="${dto.field_night }" disabled="disabled">저녁 : ${dto.field_night }</option>
</select>
<button id="submit" type="submit">예약하기</button>
</form>

<p>오전 시간 : <strong>${dto.field_morning }</strong></p>

<strong id="morning"></strong>

<br/>
<p>오후 시간 : <strong>${dto.field_afternoon }</strong></p>

<strong id="afternoon"></strong>
<br/>
<p>저녁 시간 : <strong>${dto.field_night }</strong></p>

<strong id="night"></strong>
<br/>

<a href="${pageContext.request.contextPath}/users/fieldlist.do">등록 주소의 주변 운동장 보러가기</a>
<a href="${pageContext.request.contextPath}/">홈으로가기</a>

</body>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.js"></script>
<script>



$("#rv_date, rv_time").change(function(){
	
	var date = $("#rv_date").val();
	
	$.ajax({
		url:"rvfieldinfo.do?field_name="+("${dto.field_name }")+"&field_date="+date,
		method:"GET",
		success:function(data){
			console.log(data);
		
				if(data){
					
					if(data.field_m_tname != null){
						$("#morning").text(data.field_m_tname);
						$("#morninga").attr('disabled', 'disabled');
					
					}else{
						$("#morning").text("예약가능합니다.");
						$("#morninga").removeAttr('disabled');
					
					}
					
					if(data.field_a_tname != null){
						$("#afternoon").text(data.field_a_tname);
						$("#afternoona").attr('disabled', 'disabled');
					}else{
						$("#afternoon").text("예약가능합니다.");
						$("#afternoona").removeAttr('disabled');	
					}
					
					if(data.field_n_tname != null){
						$("#night").text(data.field_n_tname);
						$("#nighta").attr('disabled', 'disabled');
						
					}else{
						$("#night").text("예약가능합니다.");
						$("#nighta").removeAttr('disabled');
					
					}
					
				}else{
					console.log("empty");
					$("#morning").text("예약가능합니다.");
					$("#morninga").removeAttr('disabled');
					$("#afternoon").text("예약가능합니다.");
					$("#afternoona").removeAttr('disabled');
					$("#night").text("예약가능합니다.");
					$("#nighta").removeAttr('disabled');
					
				}
		}
	});
	
});

$("#reservationform").submit(function(){
	console.log($("#rv_time").val());
	if($("#rv_date").val() == ""){
			alert("예약 날짜를 선택하여 조회하세요.");
			$("#rv_date").focus();
			return false;
	}else if($("#rv_time").val() == ""){
		alert("예약 가능한 시간을 선택하여 주세요.");
		$("#rv_time").focus();
		return false;
	}else{
		return true;
	}
});

</script>
</html>












