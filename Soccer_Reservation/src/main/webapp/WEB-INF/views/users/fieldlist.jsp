<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
       #map {
        height: 400px;
        width: 100%;
       }
    </style>
</head>
<h3> 나의 위치와 운동장위치 </h3>
<p>나의 주소는 ${addr }</p>
<p>주소 위도는:  ${lat }</p>
<p>주소 경도는: ${lng }</p>

<a href="info.do">나의 정보로 돌아가기</a>
<a href="${pageContext.request.contextPath}/">홈으로 돌아가기</a>
<div id="map"></div>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.js"></script>
<script type="text/javascript">

// 페이지 로딩시 구글맵 센터 좌표 	
	function initMap() {
		var lat =  parseFloat("${lat }"); //jquery와 jstl이 충돌나서 String으로 넣은후 원래 타입인 parseFloat으로 형변환.
		var lng =  parseFloat("${lng }");
	    var myLocation = { lat : lat, lng : lng };
	    var map = new google.maps.Map(document.getElementById('map'), {
	      zoom: 14,
	      center: myLocation
	    });
	    
	   	var marker = new google.maps.Marker({
	   		position : myLocation,
	   		map: map
	   	});
	   	
	    setMarkers(map);
	}
	
		
  var icon="http://maps.google.com/mapfiles/kml/pal2/icon57.png"; //축구장 아이콘 이미지 웹호출
  //ajax 구글 운동장 DB 호출
	function setMarkers(map){	
		$.ajax({
			url:"fieldPosition.do",
			method:"GET",
			success:function(data){
				console.log(data);
				
				var marker, i;
				var infowindow = new google.maps.InfoWindow();
			//구글 맵 마커 등록	
				for(var i = 0; i< data.length; i++){
		      		var lats= data[i].lat;
		      		var lngs= data[i].lng;
		      		var latlng = {lat : lats, lng : lngs};
		      		console.log(JSON.stringify(data[i].lat));
		      		//마커 등록
		      		var marker = new google.maps.Marker({
		      			position: latlng,
		      			map: map,
		      			icon: icon
		      		});
		      	//구글 맵 마커 클릭시 운동장 이름 호출	
		      		var str = JSON.stringify(data[i].title);
		      		var num = data[i].num;
		      		console.log(str);
		      		console.log(num);
					google.maps.event.addListener(marker, 'click', (function(marker, i){
						return function(){
							infowindow.setContent((data[i].title)+'<a href="${pageContext.request.contextPath}/reser/reserdetail.do?num='+(data[i].num)+'">'+'예약하기</a>');
							//infowindow.setContent(str+'<a href="${pageContext.request.contextPath}/reser/reserdetail.do">예약하기</a>');
							infowindow.open(map, marker);
						}
					})(marker, i));
		      		     		
				}//반복문	
			}
		});
	}
</script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnXEObf7lWebcW_r-6VMz1cZDIrjrEBQE&callback=initMap"></script>
</body>
</html>