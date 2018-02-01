package com.soccer.rv.reser.orderdto;

public class ReservationOrderDto {
	private int num;
	private String field_name;
	private String field_m_tname;
	private String field_m_phone;
	private String field_a_tname;
	private String field_a_phone;
	private String field_n_tname;
	private String field_n_phone;
	private String field_date;
	
	public ReservationOrderDto(){}

	public ReservationOrderDto(int num, String field_name, String field_m_tname, String field_m_phone,
			String field_a_tname, String field_a_phone, String field_n_tname, String field_n_phone, String field_date) {
		super();
		this.num = num;
		this.field_name = field_name;
		this.field_m_tname = field_m_tname;
		this.field_m_phone = field_m_phone;
		this.field_a_tname = field_a_tname;
		this.field_a_phone = field_a_phone;
		this.field_n_tname = field_n_tname;
		this.field_n_phone = field_n_phone;
		this.field_date = field_date;
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

	public String getField_m_tname() {
		return field_m_tname;
	}

	public void setField_m_tname(String field_m_tname) {
		this.field_m_tname = field_m_tname;
	}

	public String getField_m_phone() {
		return field_m_phone;
	}

	public void setField_m_phone(String field_m_phone) {
		this.field_m_phone = field_m_phone;
	}

	public String getField_a_tname() {
		return field_a_tname;
	}

	public void setField_a_tname(String field_a_tname) {
		this.field_a_tname = field_a_tname;
	}

	public String getField_a_phone() {
		return field_a_phone;
	}

	public void setField_a_phone(String field_a_phone) {
		this.field_a_phone = field_a_phone;
	}

	public String getField_n_tname() {
		return field_n_tname;
	}

	public void setField_n_tname(String field_n_tname) {
		this.field_n_tname = field_n_tname;
	}

	public String getField_n_phone() {
		return field_n_phone;
	}

	public void setField_n_phone(String field_n_phone) {
		this.field_n_phone = field_n_phone;
	}

	public String getField_date() {
		return field_date;
	}

	public void setField_date(String field_date) {
		this.field_date = field_date;
	}

	
	

	
}
