<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
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
	<div class="row">
		<div class="col-xs-6">
			<!-- 검색어 관련 form -->
			<form action="reservation.do" method="post">
				<input type="hidden" id="condition" value="${condition }" name="condition" />
		        <div class="input-group">
		          <div class="input-group-btn">
		            <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown">
		              <span id="conditionBtn">검색메뉴</span>
		              <span class="caret"></span>
		            </button>
		            <ul class="dropdown-menu">
		              <li><a href="javascript:set('rUser')">신청인</a>
		              </li>
		              <li><a href="javascript:set('rAddr')">운동장</a>
		              </li>
		              <li><a href="javascript:set('rTime')">대여시간</a>
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
          			</span>
		        </div>			
			</form>
		</div>
	</div>

<script src="${pageContext.request.contextPath }/resources/js/jquery-3.2.1.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
		
		
		
		<script>
		set("${condition}");
		
		function set(condition){
			if(condition=="rUser" || condition==""){
				condition="rUser";
				$("#conditionBtn").text("신청인");
			}else if(condition=="rAddr"){
				$("#conditionBtn").text("운동장");
			}else if(condition=="rTime"){
				$("#conditionBtn").text("대여시간");
			}
			$("#condition").val(condition);
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
