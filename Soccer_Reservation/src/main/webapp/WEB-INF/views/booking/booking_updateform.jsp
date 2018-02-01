<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>booking_updateform.jsp</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
</head>
<body>
<h3>예약 정보 수정</h3>
<form action="booking_update.do" method="post">	
		<table class="table">
			<caption>예약 기본정보</caption> 
			<colgroup>
				<col width="20%" />  
				<col />
			</colgroup>
			<tbody>
			<tr>
				<th>예약 목록 번호</th>
				<td>${dto.num }</td>
			</tr>
			<tr>
				<th scope="row"><label for="rAddr">예약장소</label></th>
				<td><input type="text" id="rAddr" name="rAddr" value="${dto.rAddr }" /></td>
			</tr> 
			<tr>
				<th scope="row"><label for="rTime">예약시간</label></th>
				<td><input type="text" id="rTime" name="rTime" value="${dto.rTime }" /></td>
			</tr>
			</tbody>
		</table>
		<table class="table">
			<caption>사용예약 신청서</caption>
			<colgroup>
				<col width="20%" />
				<col />
			</colgroup>
			<tbody>
			<tr>
				<th scope="row"><label for="rUser">신청자</label></th>
				<td><input type="hidden" id="rUser" name="rUser" value="${dto.rUser }" disabled/></td>
			</tr>
			<tr>
				<th scope="row"><label for="phone01">일반전화</label></th>
				<td>
					<input type="text" id="phone01" name="phone01" value="${dto.phone01 }"/>
				</td>
			</tr>
			<tr>
				<th scope="row"><label for="phone02">핸드폰번호</label></th>
				<td>
					<input type="text" id="phone02" name="phone02" value="${dto.phone02 }"/>
				</td>
			</tr>
			<tr>
				<th scope="row"><label for="addr">주소</label></th>  
				<td>
					<!-- 주소와 우편번호를 입력할 <input>들을 생성하고 적당한 name과 class를 부여한다 -->
					<input type="text" name="" class="postcodify_postcode5"/>
					<button type="button" id="postcodify_search_button">검색</button><br/>
					<input type="text" name="addr1" id="addr1" value="${dto.addr1 }" class="postcodify_address" /><br/>  
					<input type="text" name="addr2" id="addr2" value="${dto.addr2 }" class="postcodify_details"/><br/>
					<input type="text" name="addr3" id="addr3" value="${dto.addr3 }" class="postcodify_extra_info"/><br/> 
					<!-- jQuery와 Postcodify를 로딩한다 -->
					<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
					<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
					
					<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
					<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
				</td>
			</tr>
			<tr>
				<th scope="row"><label for="userNumber">이용인원</label></th>
				<td>
					<input type="text" style="width:30px;" id="userNumber" name="userNumber" value="${dto.userNumber }"/> 명
				</td>
			</tr>
			<tr>
				<th scope="row"><label for="orgName">단체명</label></th>
				<td>
					<input type="text" style="width:100px;" id="orgName" name="orgName"  value="${dto.orgName }" maxlength="64"/>
				</td>
			</tr>
			<tr>
				<th scope="row"><label for="etc">기타입력사항</label></th>
				<td>
					<textarea id="etc" name="etc" value="${dto.etc }" cols="90" rows="5"></textarea>
				</td>
			</tr>
			</tbody>
		</table>
		<button class="btn btn-primary" type="submit">수정확인</button>
	</form>
</body>
</html>