package com.soccer.rv.position.dto;

public class PositionDto {
	private String title;
	private float lat;
	private float lng;
	
	public PositionDto(){}

	public PositionDto(String title, float lng, float lat) {
		super();
		this.title = title;
		this.lng = lng;
		this.lat = lat;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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