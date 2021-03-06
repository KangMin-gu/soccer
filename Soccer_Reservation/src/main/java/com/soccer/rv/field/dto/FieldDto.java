package com.soccer.rv.field.dto;

public class FieldDto {
	private int num;
	private String field_name;
	private String field_addr;
	private String field_morning;
	private String field_afternoon;
	private String field_night;
	
	public FieldDto(){}

	public FieldDto(int num, String field_name, String field_addr, String field_morning, String field_afternoon,
			String field_night) {
		super();
		this.num = num;
		this.field_name = field_name;
		this.field_addr = field_addr;
		this.field_morning = field_morning;
		this.field_afternoon = field_afternoon;
		this.field_night = field_night;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getField_name() {
		return field_name;
	}

	public void setField_name(String field_name) {
		this.field_name = field_name;
	}

	public String getField_addr() {
		return field_addr;
	}

	public void setField_addr(String field_addr) {
		this.field_addr = field_addr;
	}

	public String getField_morning() {
		return field_morning;
	}

	public void setField_morning(String field_morning) {
		this.field_morning = field_morning;
	}

	public String getField_afternoon() {
		return field_afternoon;
	}

	public void setField_afternoon(String field_afternoon) {
		this.field_afternoon = field_afternoon;
	}

	public String getField_night() {
		return field_night;
	}

	public void setField_night(String field_night) {
		this.field_night = field_night;
	}

	
}
