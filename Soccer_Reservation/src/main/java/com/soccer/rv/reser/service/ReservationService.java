package com.soccer.rv.reser.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

public interface ReservationService {
	public ModelAndView getList();
	public ModelAndView detail(HttpServletRequest request);
}
