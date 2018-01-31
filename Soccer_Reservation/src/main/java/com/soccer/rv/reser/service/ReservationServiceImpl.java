package com.soccer.rv.reser.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.soccer.rv.field.dto.FieldDto;
import com.soccer.rv.reser.dao.ReservationDao;

@Service
public class ReservationServiceImpl implements ReservationService{
	
	@Autowired
	private ReservationDao rvdao;
	
	@Override
	public ModelAndView getList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ModelAndView detail(HttpServletRequest request) {
		int num = Integer.parseInt(request.getParameter("num"));
		FieldDto dto = rvdao.getData(num);
		ModelAndView mView = new ModelAndView();
		mView.addObject("dto", dto);
		System.out.println(dto.getField_name());
		return mView;
		
	}

}
