<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>users/signupform.do</title>
</head>
<body>
<h3>회원가입폼입니다.</h3>
<form action="signup.do" method="post" id="myform">
	<label for="id">아이디</label>
	<input type="text" name="id" id="id" />
	<button id="checkBtn">중복확인</button>
	<span class="regExp"></span>
	<span id="checkResult"></span><br/>
	<label for="pwd">비밀번호</label>
	<input type="password" name="pwd" id="pwd"/><br/>
	<label for="pwd2">비밀번호 확인</label>
	<input type="password" name="pwd2" id="pwd2" /><br/>
	<label for="findQuestion">비밀번호 찾기 질문 선택</label>
	<select name="findQuestion" id="findQuestion">
		<option value="나의 초등학교 이름은?">나의 초등학교 이름은?</option>
		<option value="나의 중학교 이름은?">나의 중학교 이름은?</option>
		<option value="나의 고등학교 이름은?">나의 고등학교 이름은?</option>
		<option value="나의 대학교 이름은?">나의 대학교 이름은?</option>
	</select><br/>
	<label for="findAnswer">비밀번호 찾기 질문 답변</label>
	<input type="text" name="findAnswer" id="findAnswer" /><br/>
	<label for="name">이름</label>
	<input type="text" name="name" id="name" /><br/>
	<label for="email">이메일</label>
	<input type="text" name="email" id="email" /><br/>
	<label for="phone">전화번호</label>
	<input type="text" name="phone" id="phone" /><br/>
	<label for="addr">주소</label>
	<input type="text" name="addr" id="addr" /><br/>
	<label for="detailaddr">상세주소</label>
	<input type="text" name="detailaddr" id="detailaddr" />
	<button type="submit" id="submit">가입하기</button>
</form>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.2.1.js"></script>
<script>
$(function(){

	var idValid=false;

		
	$("#checkBtn").click(function(){
	
		var inputId=$("#id").val();
		
		$.ajax({
			url:"checkid.do", 
			method:"GET",
			data: {"inputId":inputId},
			success:function(data){  
				if(data.canUse){
					$("#checkResult").text("사용가능").css("color", "green");
					idValid = true;
				}else{
					$("#checkResult").text("사용불가").css("color", "red");
					idValid = false;
				}
			}
		});
		return false; 
	});
	

 	$("#myform").submit(function(){
		if(idValid==false){
			alert("아이디 중복 확인을 하세요.");
			$("#id").focus();
			return false; 
		}
		
	}); 
	

	$("#id").keydown(function(){
		idValid=false;
		$("#checkResult").text("");
	});

	
});
	
	
	$("#myform").submit(function(){
		
		var regId=/^[a-zA-Z][a-zA-Z0-9]{4,9}$/; //아이디 
		var regPwd=/^[^가-힝ㄱ-ㅎ]{5,10}$/; //비밀번호 
		var regEmail = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i; //이메일유효성검사식 
		var regName=/^[가-힣]{2,15}|[a-zA-Z]{2,15}\s[a-zA-Z]{2,15}$/;	// 이름 유효성 검사식
		var regPhone = /^((01[1|6|7|8|9])[1-9]+[0-9]{6,7})|(010[1-9][0-9]{7})$/;	// 핸드폰번호 유효성 검사식
		
		if($("#id").val() == ""){
			alert("아이디를 입력하세요.");
			$("#id").focus();
			return false;
		}else if(regId.test($("#id").val())==false){
			alert("아이디는 영문자로만 최소 5-10글자로 입력하세요.");
			$("#id").focus();
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
		}else if($("#name").val() == ""){
			alert("이름을 입력 하세요.");
			$("#name").focus();
			return false;
		}else if(regName.test($("#name").val())==false){
			alert("이름은 한글, 영문 대소문자만 사용 가능 합니다.");
			$("#name").focus();
			return false;			
		}else if($("#email").val() == ""){
			alert("이메일을 입력하세요.");
			$("#email").focus();
			return false;
		}else if(regEmail.test($("#email").val())==false){
			alert("이메일형식을 다시 한번 확인해 주세요.");
			$("#email").focus();
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
	

</script>
</body>
</html>










