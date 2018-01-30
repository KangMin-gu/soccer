package com.soccer.rv.reserve.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.soccer.rv.reserve.dao.ReserveDao;
import com.soccer.rv.reserve.dto.ReserveDto;

@Service
public class ReserveServiceImpl implements ReserveService {
	@Autowired
	private ReserveDao dao;
	
	@Override
	public ModelAndView list(HttpServletRequest request) {
		ReserveDto dto= new ReserveDto();
		
		List<ReserveDto> list = dao.getList(dto);
		
		ModelAndView mView= new ModelAndView();
		mView.addObject("list", list);
		return mView;
	}

	@Override
	public ModelAndView detail(HttpServletRequest request) {
		ModelAndView mView= new ModelAndView();
		
		ReserveDto dto = new ReserveDto();
		
		ReserveDto resultDto=dao.getData(dto);
		mView.addObject("dto",resultDto);
		
		return mView;
	}


	
}
