package com.soccer.rv.booking.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.soccer.rv.booking.dao.BookingDao;
import com.soccer.rv.booking.dto.BookingDto;

@Service
public class BookingServiceImpl implements BookingService{
	
	@Autowired
	private BookingDao dao;

	@Override
	public ModelAndView bookingSignup(BookingDto dto) {
		
		dao.insert(dto);
		
		ModelAndView mView = new ModelAndView();
		mView.addObject("rUser",dto.getrUser());
		return mView;
	}
	
	

}
