<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
</head>
<body>
<div class="container">

	<h3>관리자 페이지</h3>
	<p><strong>${id }</strong>(관리자) 접속중...</p>
	<p>예약 목록</p>
	<table class="table">
		<thead>
			<tr>
				<th>목록번호</th>
				<th>운동장 이름</th>
				<th>예약날짜</th>
				<th>예약시간</th>
				<th>팀명</th>
				<th>팀인원</th>
				<th>전화번호</th>
				<th>기타입력사항</th>
			</tr> 
		</thead>
		<tbody>
			<c:forEach var="tmp" items="${list }">
				<tr>
					<td>${tmp.num }</td>
					<td>${tmp.playgroundname }</td>
					<td>${tmp.field_rent }</td>
					<td>${tmp.rv_date}</td>
					<td>${tmp.teamname  }</td>
					<td>${tmp.teamnumber }</td>
					<td>${tmp.phone }</td>
					<td>${tmp.etc }</td>
					<c:if test="${ id eq 'admin' }">
						<td><a class="btn btn-info" href="b_updateform.do?num=${tmp.num }">예약정보수정</a></td>
						<td><a class="btn btn-warning" href="javascript:deleteCheck()">예약취소</a></td>
					</c:if>	
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<!-- 페이징 처리 -->
	<ul class="pagination">
		<c:choose>
			<c:when test="${startPageNum ne 1 }">
				<li>
					<a href="list.do?pageNum=${startPageNum-1 }&condition=${condition}&keyword=${keyword}">&laquo;</a>
				</li>
			</c:when>
			<c:otherwise>
				<li class="disabled">
					<a href="javascript:">&laquo;</a>
				</li>
			</c:otherwise>
		</c:choose>
		<c:forEach var="i" begin="${startPageNum }" 
				end="${endPageNum }">	
			<c:choose>
				<c:when test="${i eq pageNum }">
					<li class="active"><a href="list.do?pageNum=${i }&condition=${condition}&keyword=${keyword}">${i }</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="list.do?pageNum=${i }&condition=${condition}&keyword=${keyword}">${i }</a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:choose>
			<c:when test="${endPageNum lt totalPageCount }">
				<li>
					<a href="list.do?pageNum=${endPageNum+1 }&condition=${condition}&keyword=${keyword}">&raquo;</a>
				</li>
			</c:when>
			<c:otherwise>
				<li class="disabled">
					<a href="javascript:">&raquo;</a>
				</li>
			</c:otherwise>
		</c:choose>
	</ul>
	<div class="row">
		<div class="col-xs-6">
			<!-- 검색어 관련 form -->
			<form action="list.do" method="post">
				<input type="hidden" id="condition" value="${condition }" name="condition" />
		        <div class="input-group">
		          <div class="input-group-btn">
		            <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown">
		              <span id="conditionBtn">제목+파일명</span>
		              <span class="caret"></span>
		            </button>
		            <ul class="dropdown-menu">
		              <li><a href="javascript:set('titlecontent')">제목+파일명</a>
		              </li>
		              <li><a href="javascript:set('title')">제목</a>
		              </li>
		              <li><a href="javascript:set('writer')">작성자</a>
		              </li>
		            </ul>
		          </div>
		          <!-- /btn-group -->
		          <input type="text" id="keyword" name="keyword" value="${keyword }" class="form-control"/>
		          	<span class="input-group-btn">
			            <button class="btn btn-default" type="submit">
			              <span class="sr-only">검색</span>
			              <span class="glyphicon glyphicon-search"></span>
			            </button>
			            <a class="btn btn-primary" href="${pageContext.request.contextPath }/">Home 돌아가기</a>
          			</span>
		        </div>			
			</form>
		</div>
	</div><!-- /.row -->
</div>
<script>
	function deleteCheck(){
		var isDelete=confirm("예약 정보를 삭제 하시겠습니까?");
		if(isDelete){
			location.href="b_delete.do?num=${dto.num}";
		}
	}
</script>
</body>
</html>