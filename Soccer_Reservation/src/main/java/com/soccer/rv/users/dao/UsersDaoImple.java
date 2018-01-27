package com.soccer.rv.users.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.soccer.rv.users.dto.UsersDto;

@Repository
public class UsersDaoImple implements UsersDao{
	
	@Autowired
	public SqlSession session;
	
	@Override
	public void insert(UsersDto dto) {
		session.insert("users.insert", dto);
	}

	@Override
	public boolean isValid(UsersDto dto) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public UsersDto getData(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(UsersDto dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean canUseId(String id) {
		// TODO Auto-generated method stub
		return false;
	}

}
