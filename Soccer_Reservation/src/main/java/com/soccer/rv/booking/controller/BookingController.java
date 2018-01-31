package com.soccer.rv.booking.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.soccer.rv.booking.dto.BookingDto;
import com.soccer.rv.booking.service.BookingService;
import com.soccer.rv.users.dto.UsersDto;

@Controller
public class BookingController {
	
	@Autowired
	private BookingService bookingservice;
	
	
	
	//예약 목록 요청처리
	@RequestMapping("/booking/booking_list")
	public ModelAndView bookinglist(){
		
		ModelAndView mView = bookingservice.getlist();
		mView.setViewName("booking/booking_list");
		return mView;
	}
	
	//예약 폼으로 이동
	@RequestMapping("/booking/bookingform")
	public ModelAndView bookingForm(HttpServletRequest request){
	
		ModelAndView mView = new ModelAndView();
		mView.setViewName("booking/bookingform");
		
		return mView;
	}
	
	
	//예약목록 저장 처리
	@RequestMapping("/booking/booking_insert")
	public ModelAndView bookingSignup(HttpServletRequest request, @ModelAttribute BookingDto dto) {
		
		ModelAndView mView = bookingservice.insert(dto);
		
		mView.setViewName("booking/booking_alert");
		
		return mView;
	}
	
	//예약 목록 삭제 요청 처리
	@RequestMapping("/booking/booking_delete")
	public String booking_delete(@RequestParam int num){
		
		bookingservice.delete(num);
		
		return "redirect:/booking/booking_list.do";
	}
	
	
	
	
	
}
