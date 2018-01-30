package com.soccer.rv.field.dto;

public class FieldDto {
	private String field_name;
	private String field_addr;
	
	public FieldDto(){}

	public FieldDto(String field_name, String field_addr) {
		super();
		this.field_name = field_name;
		this.field_addr = field_addr;
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
	
	
}
