package com.soccer.rv.reser.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.soccer.rv.reser.service.ReservationService;

@Controller
public class ReservationController {
		
	@Autowired
	private ReservationService rvservice;
	
	@RequestMapping("/reser/reserdetail")
	public ModelAndView rvdetail(HttpServletRequest request, @RequestParam int num){
		ModelAndView mView = rvservice.detail(request);
		mView.setViewName("reser/reserdetail");
		return mView;
	}
	
}
