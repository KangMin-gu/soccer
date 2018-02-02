package com.soccer.rv.reser.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.soccer.rv.field.dto.FieldDto;
import com.soccer.rv.reser.dao.ReservationDao;
import com.soccer.rv.reser.orderdto.ResDto;
import com.soccer.rv.reser.orderdto.ReservationOrderDto;

@Service
public class ReservationServiceImpl implements ReservationService{
	
	@Autowired
	private ReservationDao rvdao;
	
	@Override
	public ReservationOrderDto getData(HttpServletRequest request) {
		//ModelAndView mView = new ModelAndView();
		String field_name = (String)request.getParameter("field_name");
		String field_date = (String)request.getParameter("field_date");
		ResDto rdto = new ResDto(field_name, field_date);
		System.out.println("d"+rdto.getField_date() + rdto.getField_name());
		ReservationOrderDto order = rvdao.getinfo(rdto);
		//System.out.println("service"+order.getField_m_phone());
		//ReservationOrderDto order2 = new ReservationOrderDto(num, field_name, field_m_tname, field_m_phone, field_a_tname, field_a_phone, field_n_tname, field_n_phone, field_date);
		
		
		//ßmView.addObject("order", order);
		return order;
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

	@Override
	public ModelAndView rvform(HttpServletRequest request) {
		String rv_date = (String)request.getParameter("rv_date");
		String field_name = (String)request.getParameter("field_name");
		String rv_time = (String)request.getParameter("rv_time");
		ModelAndView mView = new ModelAndView ();
		mView.addObject("rv_date", rv_date);
		mView.addObject("field_name", field_name);
		mView.addObject("rv_time", rv_time);
		return mView;
	}
	

}
