package com.soccer.rv.booking.service;

import org.springframework.web.servlet.ModelAndView;

import com.soccer.rv.booking.dto.BookingDto;

public interface BookingService {
	public ModelAndView bookingSignup(BookingDto dto);
}
