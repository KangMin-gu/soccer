package com.soccer.rv.users.dto;

public class UsersDto {
	private String id;
	private String name;
	private String pwd;
	private String email;
	private String phone;
	private String addr;
	private String detailaddr;
	private String findQuestion;
	private String findAnswer;
	private String regdate;
	
	//페이징 처리 고려 
	private int startRowNum;
	private int endRowNum;
	//이전글 다음글의 글번호
	private int prevNum;
	private int nextNum;
	
	public UsersDto(){}

	public UsersDto(String id, String name, String pwd, String email, String phone, String addr, String detailaddr,
			String findQuestion, String findAnswer, String regdate, int startRowNum, int endRowNum, int prevNum,
			int nextNum) {
		super();
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.email = email;
		this.phone = phone;
		this.addr = addr;
		this.detailaddr = detailaddr;
		this.findQuestion = findQuestion;
		this.findAnswer = findAnswer;
		this.regdate = regdate;
		this.startRowNum = startRowNum;
		this.endRowNum = endRowNum;
		this.prevNum = prevNum;
		this.nextNum = nextNum;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getDetailaddr() {
		return detailaddr;
	}

	public void setDetailaddr(String detailaddr) {
		this.detailaddr = detailaddr;
	}

	public String getFindQuestion() {
		return findQuestion;
	}

	public void setFindQuestion(String findQuestion) {
		this.findQuestion = findQuestion;
	}

	public String getFindAnswer() {
		return findAnswer;
	}

	public void setFindAnswer(String findAnswer) {
		this.findAnswer = findAnswer;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
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

	public int getPrevNum() {
		return prevNum;
	}

	public void setPrevNum(int prevNum) {
		this.prevNum = prevNum;
	}

	public int getNextNum() {
		return nextNum;
	}

	public void setNextNum(int nextNum) {
		this.nextNum = nextNum;
	}

	

	
	
}