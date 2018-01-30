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
<!-- 
	예약구장
	예약일자
	예약시간
	예약금액
	입금자

	신청자
	일반전화
	핸드폰번호
	주소
	이용인원
	단체명
	기타입력사항
	예약일자
	
 -->
<table class="table">
	<caption class="cp_no">예약시간 목록, 예약금액 목록</caption>
	<colgroup>
		<col width="20%" />
		<col />
	</colgroup>
	<tbody>
	<tr>
		<th scope="row"></th>
		<td></td>
	</tr>
	<tr>
		<th scope="row"></th>
		<td></td>
	</tr>
	<tr>
		<th scope="row"></th>
		<td><br />			
		</td>
	</tr>
	<tr>
		<th scope="row"></th>
		<td></td>
	</tr>
	</tbody>
</table>

<table class="table">
	<caption class="cp_no">사용예약 신청서</caption>
	<colgroup>
		<col width="20%" />
		<col />
	</colgroup>
	<tbody>
	<tr>
		<th scope="row">신청자</th>
		<td></td>
	</tr>
	<tr>
		<th scope="row"><label for="rsv_tel0">일반전화</label></th>
		<td>
			<input type="text" style="width:40px;" id="rsv_tel0" name="rsv_tel0" class="txt2" maxlength="4" value="" title="일반전화 지역번호" />
			- <input type="text" style="width:40px;" id="rsv_tel1" name="rsv_tel1" class="txt2" maxlength="4" value="" title="일반전화 국번입력" />
			- <input type="text" style="width:40px;" id="rsv_tel2" name="rsv_tel2" class="txt2" maxlength="4" value="" title="일반전화 뒷자리입력" />
		</td>
	</tr>
	<tr>
		<th scope="row"><label for="rsv_cel0">핸드폰번호</label></th>
		<td>
			<input type="text" style="width:40px;" id="rsv_cel0" name="rsv_cel0" class="txt2" maxlength="4" value="" title="휴대전화 맨앞자리 입력" />
			- <input type="text" style="width:40px;" id="rsv_cel1" name="rsv_cel1" class="txt2" maxlength="4" value="" title="휴대전화 중간번호 입력" />
			- <input type="text" style="width:40px;" id="rsv_cel2" name="rsv_cel2" class="txt2" maxlength="4" value="" title="휴대전화 맨뒷번호 입력" />
		</td>
	</tr>
	<tr>
		<th scope="row"><label for="rsv_zipcode0">주소</label></th>
		<td>
			<input type="text" style="width:140px;" id="rsv_zipcode0" name="rsv_zipcode0" class="textbox_soc1" maxlength="10" value="" title="우편번호 찾기를 선택해주세요" /><button type="button" id="rsv_zipcode0_select" onclick="goPopup();return false;" title="우편번호찾기 새창"><img src="./img/member/bt_zip.gif" alt="우편번호찾기" /></button>
			<input type="hidden" id="rsv_zipcode1" name="rsv_zipcode1" />
			<p class="p_txt">
				<input type="text" id="rsv_address1" name="rsv_address1" class="txt2" style="width:280px;" maxlength="100" value="" title="우편주소 입력" /><br />
				<input type="text" id="rsv_address2" name="rsv_address2" class="txt2" style="width:280px;" maxlength="100" value="" title="상세주소 입력" />
			</p>
		</td>
	</tr>
	<tr>
		<th scope="row"><label for="rsv_userNumber">이용인원</label></th>
		<td>
			<input type="text" style="width:30px;" id="rsv_userNumber" name="rsv_userNumber" class="txt2" maxlength="5" value="" title="이용인원입력" /> 명
		</td>
	</tr>
	<tr>
		<th scope="row"><label for="rsv_orgName">단체명</label></th>
		<td>
			<input type="text" style="width:100px;" id="rsv_orgName" name="rsv_orgName" class="txt2" maxlength="64" value="" title="단체명 입력" />
		</td>
	</tr>
	<tr>
		<th scope="row"><label for="rsv_etc">기타입력사항</label></th>
		<td>
			<textarea id="rsv_etc" name="rsv_etc" cols="90" rows="5" title="기타입력사항 입력" class="f12"></textarea>
		</td>
	</tr>
	<tr>
		<th scope="row">예약일자</th>
		<td></td>
	</tr>
	<tr>
		<th scope="row">예약금액</th>
		<td></td>
	</tr>
	<tr>
		<th scope="row"><label for="rsv_payName">입금자</label></th>
		<td>
			<input type="text" style="width:100px;" id="rsv_payName" name="rsv_payName" class="txt2" maxlength="64" value="EL 입력하기" title="입금자 입력" />
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