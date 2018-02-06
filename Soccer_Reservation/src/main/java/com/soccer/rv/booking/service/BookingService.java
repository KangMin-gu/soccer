package com.soccer.rv.booking.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;


import com.soccer.rv.booking.dto.BookingDto;
import com.soccer.rv.users.dto.UsersDto;


public interface BookingService {
	public ModelAndView insert(BookingDto dto);
	public ModelAndView update(BookingDto dto);
	public void delete(HttpServletRequest request);
	public ModelAndView getList();
	public ModelAndView getData(int num);
	public ModelAndView getData2(HttpSession session);
	
	public ModelAndView update2(ReservationOrderDto dto) ;

	


	


}	
