package com.soccer.rv.users.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.soccer.rv.users.dto.UsersDto;

public interface UsersService {
	public ModelAndView signup(UsersDto dto);
	public boolean canUseId(String id);
	public ModelAndView login(UsersDto dto, HttpServletRequest request);
	public ModelAndView update(UsersDto dto, HttpSession session);
	public ModelAndView delete(HttpSession session);
	public ModelAndView detail(String id);
}
