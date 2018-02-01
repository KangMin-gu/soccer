package com.soccer.rv.booking.dto;

public class BookingDto {
	private int num;//예약 목록 번호
	private String playgroundname;//운동장 이름
	private String field_m_tname;//아침타임
	private String field_a_tname;//점심타임
	private String field_n_tname;//점심타임
	private String rv_date;//원하는시간
	
	private String teamname;//팀명
	private String teamnumber;//팀인원
	private String phone;//전화번호
	private String etc;//기타입력사항
	
	public BookingDto (){}

	public BookingDto(int num, String playgroundname, String field_m_tname, String field_a_tname, String field_n_tname,
			String rv_date, String teamname, String teamnumber, String phone, String etc) {
		super();
		this.num = num;
		this.playgroundname = playgroundname;
		this.field_m_tname = field_m_tname;
		this.field_a_tname = field_a_tname;
		this.field_n_tname = field_n_tname;
		this.rv_date = rv_date;
		this.teamname = teamname;
		this.teamnumber = teamnumber;
		this.phone = phone;
		this.etc = etc;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getPlaygroundname() {
		return playgroundname;
	}

	public void setPlaygroundname(String playgroundname) {
		this.playgroundname = playgroundname;
	}

	public String getField_m_tname() {
		return field_m_tname;
	}

	public void setField_m_tname(String field_m_tname) {
		this.field_m_tname = field_m_tname;
	}

	public String getField_a_tname() {
		return field_a_tname;
	}

	public void setField_a_tname(String field_a_tname) {
		this.field_a_tname = field_a_tname;
	}

	public String getField_n_tname() {
		return field_n_tname;
	}

	public void setField_n_tname(String field_n_tname) {
		this.field_n_tname = field_n_tname;
	}

	public String getRv_date() {
		return rv_date;
	}

	public void setRv_date(String rv_date) {
		this.rv_date = rv_date;
	}

	public String getTeamname() {
		return teamname;
	}

	public void setTeamname(String teamname) {
		this.teamname = teamname;
	}

	public String getTeamnumber() {
		return teamnumber;
	}

	public void setTeamnumber(String teamnumber) {
		this.teamnumber = teamnumber;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEtc() {
		return etc;
	}

	public void setEtc(String etc) {
		this.etc = etc;
	}

	
	

	
	
	
	
}

