package com.soccer.rv.reser.orderdto;

public class ReserDeleteDto {
	private int num;
	private String id;
	private String field_name;
	private String field_date;
	
	public ReserDeleteDto(){}

	public ReserDeleteDto(int num, String id, String field_name, String field_date) {
		super();
		this.num = num;
		this.id = id;
		this.field_name = field_name;
		this.field_date = field_date;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getField_name() {
		return field_name;
	}

	public void setField_name(String field_name) {
		this.field_name = field_name;
	}

	public String getField_date() {
		return field_date;
	}

	public void setField_date(String field_date) {
		this.field_date = field_date;
	}
	
	
	
}
