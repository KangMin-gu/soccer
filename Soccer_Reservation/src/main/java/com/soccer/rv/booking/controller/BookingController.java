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
import com.soccer.rv.reser.orderdto.ReservationOrderDto;
import com.soccer.rv.users.dto.UsersDto;

@Controller
public class BookingController {
	
	@Autowired
	private BookingService bookingservice;
	
	//예약 목록 요청처리
	@RequestMapping("/booking/b_list")
	public ModelAndView authList(HttpSession session){
		
		String id =(String)session.getAttribute("id");
		ModelAndView mView  = bookingservice.getList();
		mView.addObject("id",id);
		mView.setViewName("booking/b_list");
		
		return mView;
	}
	
	//예약 수정 요청 처리
		@RequestMapping("/booking/b_updateform")
		public ModelAndView authUpdateForm(@RequestParam int num){
			
			ModelAndView mView = bookingservice.getData(num);
			mView.setViewName("booking/b_updateform");
			return mView;
		}
		
		//예약 수정 반영 요청처리
		@RequestMapping("/booking/b_update")
		public ModelAndView Update(@ModelAttribute BookingDto dto){
			
			ModelAndView mView = bookingservice.update(dto);
			mView.setViewName("booking/b_alert");
			return mView;
		}
		
		@RequestMapping("booking/b_delete")
		public ModelAndView Update2(@ModelAttribute ReservationOrderDto dto){
			
			ModelAndView mView = bookingservice.update2(dto);
			mView.setViewName("booking/b_list");
			return mView;
		}
}
