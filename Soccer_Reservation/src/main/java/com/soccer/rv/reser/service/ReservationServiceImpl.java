package com.soccer.rv.reser.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	
	//예약 현황페이지로 이동하면서 정보가져오기
	@Override
	public ModelAndView detail(HttpServletRequest request) {
		
		int num = Integer.parseInt(request.getParameter("num"));
		FieldDto dto = rvdao.getData(num); //이동하면서 운동장 정보가져오기
		ModelAndView mView = new ModelAndView();
		mView.addObject("dto", dto);
	
		return mView;
		
	}
	
	// ajax 예약 현황정보 가져오기	
	@Override
	public ReservationOrderDto getData(HttpServletRequest request) {
		
		String field_name = (String)request.getParameter("field_name");
		String field_date = (String)request.getParameter("field_date");
		ResDto rdto = new ResDto(field_name, field_date); // rdto에 담아서
		ReservationOrderDto order = rvdao.getinfo(rdto); //운동장 field_order 정보가져오기
	
		return order;
	}
	
	//예약폼 이동하면서 예약선택 데이터 가져가기 
	@Override
	public ModelAndView rvform(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		String rv_date = (String)request.getParameter("rv_date");
		String field_name = (String)request.getParameter("field_name");
		String rv_time = (String)request.getParameter("rv_time");
		String phone = (String) session.getAttribute("phone");
		
		ModelAndView mView = new ModelAndView ();
		mView.addObject("rv_date", rv_date);
		mView.addObject("field_name", field_name);
		mView.addObject("rv_time", rv_time);
		mView.addObject("phone", phone);
		
		return mView;
	}
	

}
