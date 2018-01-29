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
<body>
<h3>가입 등록 주소를 기준으로 맵을 표현합니다.</h3>
<p>주소: <strong>${addr }</strong></p>


<a href="info.do">나의 정보 보러가기</a>

 <h3>샘플 지도 입니다. </h3>
 <p>운동장의 마커기능을 추가하면 우리집 주의 예약가능한 운동장이 보입니다.</p>
 <div id="map"></div>
 <script>
    
    var lat = ${lat};
    var lng = ${lng};
    
      function initMap() {
        var uluru = {lat: lat, lng: lng};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 14,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
 </script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnXEObf7lWebcW_r-6VMz1cZDIrjrEBQE&callback=initMap">
 </script>
</body>
</html>