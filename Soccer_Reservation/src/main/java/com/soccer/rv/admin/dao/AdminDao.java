package com.soccer.rv.admin.dao;

import java.util.List;

import com.soccer.rv.users.dto.UsersDto;

public interface AdminDao {
	//users 회원정보 
	public UsersDto getData(String id);
	public void update(UsersDto dto);
	public void delete(String id);
	public List<UsersDto> getList();
}
