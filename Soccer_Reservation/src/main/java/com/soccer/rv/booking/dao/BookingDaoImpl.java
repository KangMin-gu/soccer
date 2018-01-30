package com.soccer.rv.booking.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

import com.soccer.rv.booking.dto.BookingDto;

@Repository
public class BookingDaoImpl implements BookingDao{
	
	@Autowired
	private SqlSession session;

	@Override
	public void insert(BookingDto dto) {
		session.insert("booking.insert",dto);
		
	}

	@Override
	public void update(BookingDto dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int num) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public BookingDto getData(String id) {
		
		return session.selectOne("users.update",id);
	}

	@Override
	public List<BookingDto> getList(BookingDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

	
}
