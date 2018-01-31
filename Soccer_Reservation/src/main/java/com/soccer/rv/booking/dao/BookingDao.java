package com.soccer.rv.booking.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.soccer.rv.booking.dto.BookingDto;

public interface BookingDao {
	public void insert(BookingDto dto);
	public void update(BookingDto dto);
	public void delete(int num);
	public BookingDto getData(int num);
	public List<BookingDto> getList();
}
