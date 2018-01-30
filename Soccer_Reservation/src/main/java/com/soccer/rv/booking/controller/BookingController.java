package com.soccer.rv.booking.controller;



import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import com.soccer.rv.booking.dto.BookingDto;
import com.soccer.rv.booking.service.BookingService;

@Controller
public class BookingController {
	
	@Autowired
	private BookingService bookingservice;
	
	
	//예약 폼 페이지 
	@RequestMapping("/booking/bookingform")
	public ModelAndView bookingForm(HttpServletRequest request){
		
		//테스트 데이터
		String rAddr = "서울 중구";
		String rTime = "오후 2시 30분";
		String rPrice = "20,000원";
		String rUser = "김구라";
		
		ModelAndView mView = new ModelAndView();
		mView.addObject("rAddr",rAddr);
		mView.addObject("rTime",rTime);
		mView.addObject("rPrice",rPrice);
		mView.addObject("rUser",rUser);
		
		mView.setViewName("booking/bookingform");
		
		return mView;
	}
	
	@RequestMapping("/booking/insert")
	public ModelAndView bookingSignup(HttpServletRequest request, 
			@ModelAttribute BookingDto dto) {
		
		String rAddr = (String)request.getAttribute("rAddr");
		String rPrice = (String)request.getAttribute("rPrice");
		String rTime = (String)request.getAttribute("rTime");
		//서비스를 이용해서 DB 에 저장
		 bookingservice.insert(dto);
		
		ModelAndView mView = new ModelAndView();
		mView.addObject("rAddr",rAddr);
		mView.addObject("rPrice",rPrice);
		mView.addObject("rTime",rTime);
		mView.setViewName("booking/bookingSignup");
		
		return mView;
	}
	
}
