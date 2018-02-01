<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>reservation 페이지</h3>
<!--<button id="getList">버튼</button>  -->


<div class="container">
<table class="table table-bordered table-condensed">
	<thead>
		<tr>
			<th>번호</th>
			<th>사용자</th>
			<th>축구장</th>
			<th>시간</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="tmp" items="${list}">
			<tr>
				<td>${tmp.num }</td>
				<td>${tmp.rUser }</td>
				<td><a href="detail.do?num=${tmp.num }">${tmp.rAddr }</a></td>
				<td>${tmp.rTime}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<ul class="pagination">
		<c:choose>
			<c:when test="${startPageNum ne 1 }">
				<li>
					<a href="reservation.do?pageNum=${startPageNum-1 }&condition=${condition}&keyword=${keyword}">&laquo;</a>
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
					<li class="active"><a href="reservation.do?pageNum=${i }&condition=${condition}&keyword=${keyword}">${i }</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="reservation.do?pageNum=${i }&condition=${condition}&keyword=${keyword}">${i }</a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:choose>
			<c:when test="${endPageNum lt totalPageCount }">
				<li>
					<a href="reservation.do?pageNum=${endPageNum+1 }&condition=${condition}&keyword=${keyword}">&raquo;</a>
				</li>
			</c:when>
			<c:otherwise>
				<li class="disabled">
					<a href="javascript:">&raquo;</a>
				</li>
			</c:otherwise>
		</c:choose>
	</ul>
</div>

	
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
		<script>
		
		 
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
