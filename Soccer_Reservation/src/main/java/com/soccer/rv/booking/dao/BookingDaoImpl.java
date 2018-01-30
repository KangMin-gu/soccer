package com.soccer.rv.booking.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	public BookingDto getData(BookingDto dto) {
		
		return session.selectOne("booking.getData", dto);
	}

	@Override
	public BookingDto getData(int num) {
		
		return  session.selectOne("booking.getData2", num);
	}

	@Override
	public List<BookingDto> getList(BookingDto dto) {
		
		return session.selectList("booking.getList", dto);
	}

}
