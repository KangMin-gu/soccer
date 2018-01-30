package com.soccer.rv.reserve.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

public interface ReserveService {
	public ModelAndView list(HttpServletRequest request);
	public ModelAndView detail(HttpServletRequest request);
}
