package com.soccer.rv.reserve.dto;

public class ReserveDto {
    private int num;
    private String rUser;
    private String rAddr;
    private String rTime;
    private int phone01;
    private int phone02;
    private String addr1;
    private String addr2;
    private String addr3;
    private int userNumber;
    private String orgName;
    private String etc;
	private int startRowNum;
	private int endRowNum;
	
	public ReserveDto(){}

	public ReserveDto(int num, String rUser, String rAddr, String rTime, int phone01, int phone02, String addr1,
			String addr2, String addr3, int userNumber, String orgName, String etc, int startRowNum, int endRowNum) {
		super();
		this.num = num;
		this.rUser = rUser;
		this.rAddr = rAddr;
		this.rTime = rTime;
		this.phone01 = phone01;
		this.phone02 = phone02;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.addr3 = addr3;
		this.userNumber = userNumber;
		this.orgName = orgName;
		this.etc = etc;
		this.startRowNum = startRowNum;
		this.endRowNum = endRowNum;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getrUser() {
		return rUser;
	}

	public void setrUser(String rUser) {
		this.rUser = rUser;
	}

	public String getrAddr() {
		return rAddr;
	}

	public void setrAddr(String rAddr) {
		this.rAddr = rAddr;
	}

	public String getrTime() {
		return rTime;
	}

	public void setrTime(String rTime) {
		this.rTime = rTime;
	}

	public int getPhone01() {
		return phone01;
	}

	public void setPhone01(int phone01) {
		this.phone01 = phone01;
	}

	public int getPhone02() {
		return phone02;
	}

	public void setPhone02(int phone02) {
		this.phone02 = phone02;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public String getAddr3() {
		return addr3;
	}

	public void setAddr3(String addr3) {
		this.addr3 = addr3;
	}

	public int getUserNumber() {
		return userNumber;
	}

	public void setUserNumber(int userNumber) {
		this.userNumber = userNumber;
	}

	public String getOrgName() {
		return orgName;
	}

	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}

	public String getEtc() {
		return etc;
	}

	public void setEtc(String etc) {
		this.etc = etc;
	}

	public int getStartRowNum() {
		return startRowNum;
	}

	public void setStartRowNum(int startRowNum) {
		this.startRowNum = startRowNum;
	}

	public int getEndRowNum() {
		return endRowNum;
	}

	public void setEndRowNum(int endRowNum) {
		this.endRowNum = endRowNum;
	}

	
	
	
	
}
