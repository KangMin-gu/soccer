package com.soccer.rv.booking.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;


import com.soccer.rv.booking.dto.BookingDto;


public interface BookingService {
	public ModelAndView insert(BookingDto dto);
	public ModelAndView update(BookingDto dto);
	public void delete(int num);
	public ModelAndView getlist();
	public ModelAndView getData(int num);
	public ModelAndView detail(String id);

}	
