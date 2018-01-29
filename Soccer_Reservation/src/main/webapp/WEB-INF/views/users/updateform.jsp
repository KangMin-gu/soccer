<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>users/updateform.do</title>
</head>
<body>
<h3>업데이트 폼입니다.</h3>
<form action="update.do" method="post" id="myform">
<input type="hidden" name="id" value="${dto.id }"/>
<input type="hidden" name="name" value="${dto.name }"/>
<label for="name">이름</label>
<input type="text" name="name" id="name" value="${dto.name }" disabled /><br/>
<label for="id">아이디</label>
<input type="text" name="id" id="id" value="${dto.id }" disabled /><br/>
<label for="pwd">비밀번호</label>
<input type="password" name="pwd" id="pwd" value="${dto.pwd }"/><br/>
<label for="pwd2">비밀번호 확인</label>
<input type="password" name="pwd2" id="pwd2" value="${dto.pwd }" /><br/>
<label for="email">이메일</label>
<input type="text" name="email" id="email" value="${dto.email }" /><br/>
<label for="phone">전화번호</label>
<input type="text" name="phone" id="phone" value="${dto.phone }" /><br/>
<label for="addr">주소</label>
<input type="text" name="addr" id="addr" value="${dto.addr }" /><br/>
<button type="submit" id="submit">수정하기</button>
</form>
</body>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.2.1.js"></script>
<script>
$(function(){
	
	$("#myform").submit(function(){
		
		var regId=/^[a-zA-Z][a-zA-Z0-9]{4,9}$/; //아이디 
		var regPwd=/^[^가-힝ㄱ-ㅎ]{5,10}$/; //비밀번호 
		var regEmail = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i; //이메일유효성검사식 
		var regName=/^[가-힣]{2,15}|[a-zA-Z]{2,15}\s[a-zA-Z]{2,15}$/;	// 이름 유효성 검사식
		var regPhone = /^((01[1|6|7|8|9])[1-9]+[0-9]{6,7})|(010[1-9][0-9]{7})$/;	// 핸드폰번호 유효성 검사식
		
		
		if($("#email").val() == ""){
			alert("이메일을 입력하세요.");
			$("#email").focus();
			return false;
		}else if(regEmail.test($("#email").val())==false){
			alert("이메일형식을 다시 한번 확인해 주세요.");
			$("#email").focus();
			return false;	
		}else if($("#pwd").val() == ""){
			alert("비밀번호를 입력하세요.");
			$("#pwd").focus();
			return false;
		}else if(regPwd.test($("#pwd").val())==false){	
			alert("비밀번호는 6-10글자, 특수문자를 최소 하나 포함 해 주세요.");
			$("#pwd").focus();
			return false;
		}else if($("#pwd").val() != $("#pwd2").val()){
			alert("비밀번호와 비밀번호 확인이 맞지 않습니다.");
			$("#pwd").focus();
			return false;
		}else if($("#findAnswer").val() == ""){
			alert("비밀번호 찾기 답변을 입력하세요.");
			$("#findAnswer").focus();
			return false;	
		}else if($("#phone").val() == ""){
			alert("전화번호는 입력해주세요.");
			$("#phone").focus();
			return false;
		}else if(regPhone.test($("#phone").val())==false){
			alert("전화번호에 -를 빼고 숫자만 입력해주세요.");
			$("#phone").focus();
			return false;			
		}else if($("#addr").val()==""){
			alert("주소를 입력하세요.");
			$("#addr").focus();
			return false;
		}else{
			return true;
		}
	});

});	
	

</script>
</html>