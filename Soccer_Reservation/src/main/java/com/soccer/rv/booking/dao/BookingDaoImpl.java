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
		session.update("booking.update",dto);
		
	}

	@Override
	public void delete(int num) {
		session.delete("booking.delete",num);
		
	}

	@Override
	public BookingDto getData(String rUser) {
		BookingDto dto = session.selectOne("booking.getData",rUser);
		return dto;
	}

	@Override
	public List<BookingDto> getList() {
		List<BookingDto> list = session.selectList("booking.getList");
		return list;
	}




	

	
}
