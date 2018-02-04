package com.soccer.rv.reser.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.soccer.rv.reser.orderdto.ReservationOrderDto;
import com.soccer.rv.reser.orderdto.RvinsertFormDto;
import com.soccer.rv.reser.service.ReservationService;

@Controller
public class ReservationController {
		
	@Autowired
	private ReservationService rvservice;
	
	//예약 현황 페이지로 이동
	@RequestMapping("/reser/rv_detail")
	public ModelAndView rvdetail(HttpServletRequest request, @RequestParam int num){
		
		ModelAndView mView = rvservice.detail(request);
		mView.setViewName("reser/rv_detail");
		return mView;
	}
	
	//ajax 예약 현황 불러오기
	@RequestMapping("/reser/rvfieldinfo")
	@ResponseBody
	public ReservationOrderDto getData(HttpServletRequest request){
		
		ReservationOrderDto order = rvservice.getData(request);
			return order;
		
	}
	
	//예약화면으로 이동
	@RequestMapping("/reser/rv_form")
	public ModelAndView rvform(HttpServletRequest request){ 
		
		ModelAndView mView = rvservice.rvform(request);
		mView.setViewName("reser/rv_form");
		return mView;
		
	}
	
	//예약하기 및 결과페이지로이동
	@RequestMapping("/reser/rvinsert")
	public ModelAndView rvinsert(@ModelAttribute RvinsertFormDto dtoa){
		ModelAndView mView = rvservice.rvinsert(dtoa);
		mView.setViewName("/reser/rvinsert_result");
		return mView;
	}
	
}
