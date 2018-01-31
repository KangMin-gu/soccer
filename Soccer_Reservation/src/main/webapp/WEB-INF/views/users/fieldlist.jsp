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
<div id="map"></div>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	//
	function initMap() {
		  
		var lat = 37.597218;
		var lng = 126.949743;
	    var uluru = { lat: lat, lng: lng};
	    var map = new google.maps.Map(document.getElementById('map'), {
	      zoom: 14,
	      center: uluru
	    });
	   
	    setMarkers(map);
	}
	
		
  var icon="http://maps.google.com/mapfiles/kml/pal2/icon57.png";
  
	function setMarkers(map){	
		$.ajax({
			url:"fieldPosition.do",
			method:"GET",
			success:function(data){
				console.log(data);
				
				
			

				// data = [{},{}]
				var latlng=data;
				for(var i = 0; i< data.length; i++){
		      		var latlng = data[i];
		      		var contentString = latlng.title;
		      		var marker = new google.maps.Marker({
		      			position: latlng ,
		      			title : latlng.title,
		      			map: map,
		      			icon: icon
		      		});
				}//반복	
			}
		});
	}
</script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnXEObf7lWebcW_r-6VMz1cZDIrjrEBQE&callback=initMap"></script>
</body>
</html>