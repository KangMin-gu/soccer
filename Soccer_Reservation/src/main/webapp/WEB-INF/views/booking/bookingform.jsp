<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>reservation.jsp</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
</head>
<body>
<div class="container">
	<h3>예약Form 페이지</h3>
	<table class="table">
		<caption>예약 기본정보</caption> 
		<colgroup>
			<col width="20%" />  
			<col />
		</colgroup>
		<tbody>
		<tr>
			<th scope="row">예약장소</th>
			<td>${rAddr }</td>
		</tr>
		<tr>
			<th scope="row">예약시간</th>
			<td>${rTime }</td>
		</tr>
		<tr>
			<th scope="row">예약금액</th>
			<td>${rPrice }<br />			
			</td>
		</tr>
		</tbody>
	</table>
	
	<form action="booking/bookingSignup" method="post">
		<table class="table">
			<caption class="cp_no">사용예약 신청서</caption>
			<colgroup>
				<col width="20%" />
				<col />
			</colgroup>
			<tbody>
			<tr>
				<th scope="row">신청자</th>
				<td>${rUser }</td>
			</tr>
			<tr>
				<th scope="row"><label>일반전화</label></th>
				<td>
					<input type="text" id="phone01" name="phone01" class="txt2"title="일반전화 지역번호" />
				</td>
			</tr>
			<tr>
				<th scope="row"><label>핸드폰번호</label></th>
				<td>
					<input type="text" id="phone02" name="phone02"  title="휴대전화 맨앞자리 입력" />
				</td>
			</tr>
			<tr>
				<th scope="row"><label>주소</label></th>  
				<td>
					<!-- 주소와 우편번호를 입력할 <input>들을 생성하고 적당한 name과 class를 부여한다 -->
					<input type="text" name="" class="postcodify_postcode5" value="" />
					<button type="button" id="postcodify_search_button">검색</button><br/>
					<input type="text" name="addr1" id="addr1" class="postcodify_address" value="" /><br/>  
					<input type="text" name="addr2" id="addr2" class="postcodify_details"  value="" /><br/>
					<input type="text" name="addr3" id="addr3" class="postcodify_extra_info"  value="" /><br/> 
					<!-- jQuery와 Postcodify를 로딩한다 -->
					<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
					<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
					
					<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
					<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
				</td>
			</tr>
			<tr>
				<th scope="row"><label>이용인원</label></th>
				<td>
					<input type="text" style="width:30px;" id="userNumber" name="userNumber" title="이용인원입력" /> 명
				</td>
			</tr>
			<tr>
				<th scope="row"><label>단체명</label></th>
				<td>
					<input type="text" style="width:100px;" id="orgName" name="orgName" maxlength="64" value="" title="단체명 입력" />
				</td>
			</tr>
			<tr>
				<th scope="row"><label>기타입력사항</label></th>
				<td>
					<textarea id="etc" name="etc" cols="90" rows="5" title="기타입력사항 입력"></textarea>
				</td>
			</tr>
			<tr>
				<th scope="row">예약일자</th>
				<td>${reservationTime }</td>
			</tr>
			<tr>
				<th scope="row">예약금액</th>
				<td>${reservationPrice }</td>
			</tr>
			<tr>
				<th scope="row"><label for="payName">입금자</label></th>
				<td>
					<input type="text" style="width:100px;" maxlength="64" value="${rUser }" title="입금자 입력" />
				</td>
			</tr>
			</tbody>
		</table>
		<!--개인정보-->
		<div class="p_information">
			<strong>개인정보 수집 및 이용에 대한 안내 </strong>
			<textarea name="textarea" id="textarea" rows="10" cols="60" title="개인정보수집">
		대구광역시 동구는 「민원사무처리에 관한 법률」, 동법 시행령, 동법 시행규칙에 의거하여 민원인의 고충, 진정, 건의 등 상담민원 처리를 위한 시스템으로 개인정보보호법 제 30조에 따라 정보주체의 개인정보 보호 및 권익을 보호하고 개인정보와 관련한 이용자의 고충을 원활하게 처리할 수 있도록 아래와 같이 개인정보를 수집하고 있습니다.
		
		1. 개인정보의 처리 목적 
		
		대구광역시 동구는 개인정보를 다음의 목적을 위해 처리합니다. 처리한 개인정보는 다음의 목적 이외의 용도로는 사용되지 않으며 이용 목적이 변경될 시에는 사전 동의를 구할 예정입니다.
		가. 민원사무 처리
		민원인의 신원 확인, 민원사항 확인, 사실조사를 위한 연락·통지, 처리결과 통보 등을 목적으로 개인정보를 처리합니다.
		
		
		2. 개인정보 파일 현황
		
		대구광역시 동구가 개인정보 보호법 제32조에 따라 등록?공개하는 개인정보파일의 처리목적은 다음과 같습니다.
		- 개인정보 파일명 : 상담민원대장
		- 개인정보 항목
		[필수항목] 성명, 전화번호, 주소, 접속IP, 접속 로그 
		[선택항목] 이메일, 휴대전화번호
		- 수집방법 : 홈페이지
		- 보유근거 :  민원사무처리에 관한 법률에 의해 민원의 접수 및 처리(민원 이송 포함)와 통신비밀보호법 제15조의2(전기통신사업자의 협조의무)에 의거하여 정보시스템의 접속정보 관리
		- 보유기간 : 준영구
		- 관련법령 : 민원사무처리에관한법률, 통신비밀보호법
		
		
		3. 개인정보의 처리 및 보유 기간
		
		① 대구광역시 동구는 법령에 따른 개인정보 보유·이용기간 또는 정보주체로부터 개인정보를 수집시에 동의 받은 개인정보 보유, 이용기간 내에서 개인정보를 처리, 보유합니다.
		② 개인정보 처리 및 보유 기간은 다음과 같습니다
		- 보유근거 : 민원사무처리에 관한 법률에 의해 민원의 접수 및 처리(민원 이송 포함)
		- 관련법령 : 민원사무처리에관한법률
			</textarea>
			<br />
			<p><input type="checkbox" id="agreeCheck" name="agreeCheck" title="개인정보수집 동의" /> <label for="agreeCheck">위의 "개인정보 수집 및 이용"에 동의합니다.</label></p>
			<p class="p_r_mark">* 「개인정보보호법」 제15조 2항 4호(동의를 거부할 권리가 있다는 사실 및 동의 거부에 따른 불이익이 있는 경우에는 그 불이익의 내용)에 따라서 동의를 거부할 수 있으나 거부할 경우 민원 신청 및 민원 처리결과 통지 등 서비스 이용에 제한이 있습니다.</p>
		</div>
		<!--//개인정보-->
		
		<div class="">
			<a href="/main/page.htm?mnu_siteid=dongu_k&amp;mnu_uid=3298&amp;fld_uid=1&amp;cmd=step01&amp;viewDate=2018-02-03&amp;rsv_uid=0"><img src="./img/football/foot_btn8.gif" alt="뒤로이동" /></a><input type="image" src="./img/football/foot_btn3.gif" alt="예약신청" /><a href="/main/page.htm?mnu_siteid=dongu_k&amp;mnu_uid=3298&amp;fld_uid=1&amp;cmd=list"><img src="./img/football/foot_btn6.gif" alt="예약취소" /></a>
		</div>
	</form>
</div>
</body>
</html>