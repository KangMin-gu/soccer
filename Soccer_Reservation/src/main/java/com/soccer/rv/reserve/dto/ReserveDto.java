package com.soccer.rv.reserve.dto;

public class ReserveDto {
	private String field_name;
	private String date1;
	private String date2;
	private String date3;
	
	public ReserveDto(){}

	public ReserveDto(String field_name, String date1, String date2, String date3) {
		super();
		this.field_name = field_name;
		this.date1 = date1;
		this.date2 = date2;
		this.date3 = date3;
	}

	public String getField_name() {
		return field_name;
	}

	public void setField_name(String field_name) {
		this.field_name = field_name;
	}

	public String getDate1() {
		return date1;
	}

	public void setDate1(String date1) {
		this.date1 = date1;
	}

	public String getDate2() {
		return date2;
	}

	public void setDate2(String date2) {
		this.date2 = date2;
	}

	public String getDate3() {
		return date3;
	}

	public void setDate3(String date3) {
		this.date3 = date3;
	}
	
	
}
