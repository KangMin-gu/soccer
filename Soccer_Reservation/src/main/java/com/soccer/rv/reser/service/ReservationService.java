package com.soccer.rv.reser.service;




import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.soccer.rv.reser.orderdto.ReservationOrderDto;



public interface ReservationService {
	public ReservationOrderDto getData(HttpServletRequest request);
	public ModelAndView detail(HttpServletRequest request);
}
