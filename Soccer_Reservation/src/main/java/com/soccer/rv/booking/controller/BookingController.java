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
	
	//예약 폼으로 이동
	@RequestMapping("/booking/booking_insertform")
	public ModelAndView bookingForm(HttpServletRequest request){
		
		String playgroundname ="에이콘운동장";
		String field_rent = "2018년 2월 27일";
		String rv_date = "오전 11시 30분";
		
		HttpSession session = request.getSession();
		ModelAndView mView = bookingservice.getData2(session);
		mView.addObject("playgroundname",playgroundname);
		mView.addObject("field_rent",field_rent);
		mView.addObject("rv_date",rv_date);
		mView.setViewName("booking/booking_insertform");
		return mView;
	}
	
	//예약목록 저장 처리
		@RequestMapping("/booking/b_insert")
		public ModelAndView bookingSignup(HttpServletRequest request, @ModelAttribute BookingDto dto) {
			
			ModelAndView mView = bookingservice.insert(dto);

			mView.setViewName("booking/b_alert");
			return mView;
		}
	
	//예약 목록 요청처리
	@RequestMapping("/booking/b_list")
	public ModelAndView bookinglist(HttpSession session){
		
		String id =(String)session.getAttribute("id");
		ModelAndView mView = bookingservice.getlist();
		mView.addObject("id",id);
		mView.setViewName("booking/b_list");
		return mView;
	}
	
	//예약 목록 삭제 요청 처리
	@RequestMapping("/booking/b_delete")
	public String bookingDelete(@RequestParam int num){
		
		bookingservice.delete(num);
		
		return "redirect:/booking/booking_list.do";
	}
	
	//예약 수정 요청 처리
	@RequestMapping("/booking/booking_updateform")
	public ModelAndView bookingUpdateForm(@RequestParam int num){
		
		ModelAndView mView = bookingservice.getData(num);
		mView.setViewName("booking/booking_updateform");
		return mView;
	}
	
	//예약 수정 반영 요청처리
	@RequestMapping("/booking/booking_update")
	public ModelAndView bookingUpdate(@ModelAttribute BookingDto dto){
		
		ModelAndView mView = bookingservice.update(dto);
		mView.setViewName("booking/booking_alert");
		return mView;
	}
	
	//예약 목록 자세히 보기 요청 처리
//	@RequestMapping("/booking/booking_detail")
//	public ModelAndView bookingDetail(HttpServletRequest request,@RequestParam int num){
//		
//		HttpSession session = request.getSession();
//		String id = (String)session.getAttribute("id");
//	
//		ModelAndView mView = bookingservice.getData(num);
//		mView.addObject("id",id);
//		mView.setViewName("booking/booking_detail");
//		return mView;
//	}
	
	
	
	

	
	
	
	
}