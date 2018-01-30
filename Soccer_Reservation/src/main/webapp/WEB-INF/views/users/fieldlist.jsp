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
<%-- <body>
<table>
	<thead>
		<tr>
			<th>위도</th>
			<th>경도</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="tmp" items="${position }">
			<tr>
				<td>${tmp.lng }</td>
				<td>${tmp.lat }</td>
			</tr>
		</c:forEach>
	</tbody>
</table> --%>
<div id="map"></div>
<%-- <c:forEach var="tmp" items="${position }">

</c:forEach> --%>
<script type="text/javascript">

	var result = new Array();
	
	<c:forEach items="${position}" var="tmp">
	var json = new Object();
	json.lat=${tmp.lat};
	json.lng=${tmp.lng};
	result.push(json);
	</c:forEach>
	alert("joninfo="+JSON.stringify(result));
	
    //DB에서 받아온 좌표정
    var lat = 37.595771;
    var lng = 126.944839;
    
    //구글맵 샘플
      function initMap() {
        var uluru = { "lat": lat, "lng": lng};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 14,
          center: uluru
        });
        
/*         var marker = new google.maps.Marker({position: uluru});
        marker.setMap(map); */

        for(var i=0; i<result.length; i++ ){
        	
           	var marker = new google.maps.Marker({position: resutl[i]});
           	a.setMap(map);	
           	
            }; 
            
        	
        }  
    
        
      

</script>


 <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnXEObf7lWebcW_r-6VMz1cZDIrjrEBQE&callback=initMap"></script>


</body>
</html>