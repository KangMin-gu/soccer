package com.soccer.rv.booking.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookingController {
	
	
	//예약 폼 페이지 
	@RequestMapping("/booking/bookingform")
	public String bookingForm(){
		
		
		return "booking/bookingform";
	}
	
	
}
