package com.soccer.rv.booking.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;


import com.soccer.rv.booking.dto.BookingDto;


public interface BookingService {
	public void insert(BookingDto dto);
	public void update(BookingDto dto);
	public void delete(int num);
	public ModelAndView list(HttpServletRequest request);
	public ModelAndView detail(String id);

}	
