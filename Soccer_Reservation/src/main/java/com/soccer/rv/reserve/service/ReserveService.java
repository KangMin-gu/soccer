package com.soccer.rv.reserve.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.soccer.rv.reserve.dto.ReserveDto;

public interface ReserveService {
	public ModelAndView getList();
}
