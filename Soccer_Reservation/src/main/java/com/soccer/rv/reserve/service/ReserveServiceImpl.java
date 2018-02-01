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
	private ReserveDao reservedao;

	@Override
	public ModelAndView getList() {
		List<ReserveDto> list = reservedao.getList();
		ModelAndView mView= new ModelAndView();
		
		mView.addObject("list",list);
		return mView;
	}
	
}
