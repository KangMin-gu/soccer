package com.soccer.rv.booking.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

import com.soccer.rv.booking.dto.BookingDto;
import com.soccer.rv.users.dto.UsersDto;

@Repository
public class BookingDaoImpl implements BookingDao{
	
	@Autowired
	private SqlSession session;

	@Override
	public void insert(BookingDto dto) {
		session.insert("orderdata.insert",dto);
		
	}
	

	@Override
	public void update(BookingDto dto) {
		session.update("orderdata.update",dto);
		System.out.println(session.update("orderdata.update",dto));
		
	}

	@Override
	public void delete(int num) {
		session.delete("orderdata.delete",num);
		
	}

	@Override
	public BookingDto getData(int num) {
		BookingDto dto = session.selectOne("orderdata.getData",num);
		return dto;
	}

	@Override
	public List<BookingDto> getList() {
		List<BookingDto> list = session.selectList("orderdata.getList");
		return list;
	}

	@Override
	public UsersDto getData2(String id) {
		UsersDto dto = session.selectOne("users.getData2", id);
		return dto;
	}



	
	





	

	
}
