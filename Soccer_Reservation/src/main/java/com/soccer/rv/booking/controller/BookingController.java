package com.soccer.rv.booking.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BookingController {
	
	
	//예약 폼 페이지 
	@RequestMapping("/booking/bookingform")
	public String bookingForm(ModelMap mMap){
		
		String reservationAddr = "서울 중구";
		String reservationTime = "오후 2시 30분";
		String reservationPrice = "20,000원";
		String reservationUser = "김구라";
		
		mMap.addAttribute("reservationAddr",reservationAddr);
		mMap.addAttribute("reservationTime",reservationTime);
		mMap.addAttribute("reservationPrice",reservationPrice);
		mMap.addAttribute("reservationUser", reservationUser);
		
		return "booking/bookingform";
	}
	
	
}
