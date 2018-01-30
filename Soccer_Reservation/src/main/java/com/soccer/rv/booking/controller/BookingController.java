package com.soccer.rv.booking.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import com.soccer.rv.booking.dto.BookingDto;
import com.soccer.rv.booking.service.BookingService;
import com.soccer.rv.users.dto.UsersDto;

@Controller
public class BookingController {
	
	@Autowired
	private BookingService bookingservice;
	
	
	//예약 폼으로 이동
	@RequestMapping("/booking/bookingform")
	public ModelAndView bookingForm(HttpServletRequest request){
		
		HttpSession session = request.getSession();
		String rUser = (String)session.getAttribute("id");
		ModelAndView mView = bookingservice.detail(rUser);
		
		
		mView.setViewName("booking/bookingform");
		
		return mView;
	}
	
	
	@RequestMapping("/booking/booking_insert")
	public ModelAndView bookingSignup(HttpServletRequest request, 
			@ModelAttribute BookingDto dto) {
	
		String rUser = (String)request.getSession().getAttribute("id");
	
		dto.setrUser(rUser);
		//서비스를 이용해서 DB 에 저장
		 bookingservice.insert(dto);
		 
		
		ModelAndView mView = new ModelAndView();
//		mView.addObject("rAddr",rAddr);
//		mView.addObject("rTime",rTime);
		mView.addObject("msg","예약 완료되었습니다.");
		mView.setViewName("booking/booking_insert");
		
		return mView;
	}
	
}
