package com.soccer.rv.reservation.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReservationController {
	
	
	//예약 폼 페이지 
	@RequestMapping("/resuervation/reservationform")
	public String reservationForm(){
		
		
		return "reservation/reservationform";
	}
	
	
}
