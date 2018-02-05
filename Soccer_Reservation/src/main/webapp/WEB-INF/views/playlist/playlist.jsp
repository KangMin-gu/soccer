<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" />
</head>
<body>
	<h3>reservation 페이지</h3>
	<!--<button id="getList">버튼</button>  -->


	

	<div class="container">
		


		<table class="table table-bordered table-condensed">
			<thead>
				<tr>
					<th>번호</th>
					<th>운동장이름</th>
					<th>운동장주소</th>
					<th>오전시간</th>
					<th>오후시간</th>
					<th>저녁시간</th>
					<c:if test="${id eq 'admin' }">
					<th>삭제</th>
					<th>수정</th>
					</c:if>
				</tr>
			</thead>
			<c:if test="${id eq 'admin' }">
				<a class="btn btn-primary" href="insertform.do">운동장추가</a>
			</c:if>
			<tbody>
				<c:forEach var="tmp" items="${list}">
					<tr>
						<td>${tmp.num }</td>
						<td>${tmp.field_name }</td>
						<td><a href="detail.do?num=${tmp.num }">${tmp.field_addr }</a></td>
						<td>${tmp.field_morning }</td>
						<td>${tmp.field_afternoon }</td>
						<td>${tmp.field_night }</td>
						<c:if test="${id eq 'admin' }">
						<td><a class="btn btn-warning" href="javascript:deleteConfirm(${tmp.num })">삭제</a></td>
						<td><a class="btn btn-info" href="updateform.do?num=${tmp.num }">수정</a></td>
						</c:if>
					</tr>
				</c:forEach>

			</tbody>
		</table>

	
		<ul class="pagination">
			<c:choose>
				<c:when test="${startPageNum ne 1 }">
					<li><a
						href="playlist.do?pageNum=${startPageNum-1 }&condition=${condition}&keyword=${keyword}">&laquo;</a>
					</li>
				</c:when>
				<c:otherwise>
					<li class="disabled"><a href="javascript:">&laquo;</a></li>
				</c:otherwise>
			</c:choose>
			<c:forEach var="i" begin="${startPageNum }" end="${endPageNum }">
				<c:choose>
					<c:when test="${i eq pageNum }">
						<li class="active"><a
							href="playlist.do?pageNum=${i }&condition=${condition}&keyword=${keyword}">${i }</a></li>
					</c:when>
					<c:otherwise>
						<li><a
							href="playlist.do?pageNum=${i }&condition=${condition}&keyword=${keyword}">${i }</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:choose>
				<c:when test="${endPageNum lt totalPageCount }">
					<li><a
						href="playlist.do?pageNum=${endPageNum+1 }&condition=${condition}&keyword=${keyword}">&raquo;</a>
					</li>
				</c:when>
				<c:otherwise>
					<li class="disabled"><a href="javascript:">&raquo;</a></li>
				</c:otherwise>
			</c:choose>
		</ul>

		<div class="row">
			<div class="col-xs-6">
				<!-- 검색어 관련 form -->
				<form action="playlist.do" method="post">
					<input type="hidden" id="condition" value="${condition }"
						name="condition" />
					<div class="input-group">
						<div class="input-group-btn">
							<button type="button" class="btn btn-success dropdown-toggle"
								data-toggle="dropdown">
								<span id="conditionBtn">검색메뉴</span> <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="javascript:set('field_name')">운동장</a></li>
								<li><a href="javascript:set('field_addr')">운동장주소</a></li>
							</ul>
						</div>
						<!-- /btn-group -->
						<input type="text" id="keyword" name="keyword" value="${keyword }"
							class="form-control" /> <span class="input-group-btn">
							<button class="btn btn-default" type="submit">
								<span class="sr-only">검색</span> <span
									class="glyphicon glyphicon-search"></span>
							</button>
						</span>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery-3.2.1.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>



	<script>
		set("${condition}");

		function set(condition) {
			console.log("검색검색검색")
			if (condition == "field_name") {
				console.log("신청인검색")
				$("#conditionBtn").text("운동장");
			} else if (condition == "field_addr") {
				console.log("운동장검색")
				$("#conditionBtn").text("운동장주소");
			}
			
			$("#condition").val(condition);
		}
		
		function deleteConfirm(num){
			var result=confirm(num+" 번 파일을 삭제 하시겠습니까?");
			if(result){
				location.href="delete.do?num="+num;
			}
		}

		/*
		ajax로 list 뿌려주는거
			$.ajax({
				
				url:"getList.do",
				method:"GET",
				success:function(data){
					console.log(data);
					for(var i=0; i<data.length; i++){
						var tmp= data[i]
						console.log(data);
						var td1=$("<td/>").text(data[i].rUser);
						var td2=$("<td/>").text(data[i].rAddr);
						var td3=$("<td/>").text(data[i].rTime);
						
						$("<tr/>").append(td1).append(td2).append(td3).appendTo("tbody");
					}
				}
			});
		 */
	</script>

</body>
</html>
