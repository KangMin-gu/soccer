package com.soccer.rv.position.dto;

public class PositionDto {
	private float lng;
	private float lat;
	
	public PositionDto(){}

	public PositionDto(float lng, float lat) {
		super();
		this.lng = lng;
		this.lat = lat;
	}

	public float getLng() {
		return lng;
	}

	public void setLng(float lng) {
		this.lng = lng;
	}

	public float getLat() {
		return lat;
	}

	public void setLat(float lat) {
		this.lat = lat;
	}
	
	
}
