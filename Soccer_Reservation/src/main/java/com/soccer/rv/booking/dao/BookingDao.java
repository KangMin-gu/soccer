package com.soccer.rv.booking.dao;

import java.util.List;

import com.soccer.rv.booking.dto.BookingDto;

public interface BookingDao {
	public void insert(BookingDto dto);
	public void update(BookingDto dto);
	public void delete(int num);
	public BookingDto getData(BookingDto dto);
	public BookingDto getData(int num);
	public List<BookingDto> getList(BookingDto dto);
}
