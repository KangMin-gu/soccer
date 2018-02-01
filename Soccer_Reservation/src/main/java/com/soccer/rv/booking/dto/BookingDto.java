package com.soccer.rv.booking.dto;

public class BookingDto {
	private int num;//예약 목록 번호
	private String playgroundname;//운동장 이름
	private String field_rent;//예약날짜
	private String rv_date;//예약시간
	private String teamname;//팀명
	private String teamnumber;//팀인원
	private String phone;//전화번호
	private String etc;//기타입력사항
	
	public BookingDto (){}

	public BookingDto(int num, String playgroundname, String field_rent, String rv_date, String teamname,
			String teamnumber, String phone, String etc) {
		super();
		this.num = num;
		this.playgroundname = playgroundname;
		this.field_rent = field_rent;
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

	public String getField_rent() {
		return field_rent;
	}

	public void setField_rent(String field_rent) {
		this.field_rent = field_rent;
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

