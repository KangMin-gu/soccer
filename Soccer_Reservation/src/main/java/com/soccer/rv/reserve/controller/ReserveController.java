package com.soccer.rv.reserve.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.soccer.rv.reserve.dto.ReserveDto;
import com.soccer.rv.reserve.service.ReserveService;

@Controller
public class ReserveController {

	@Autowired
	private ReserveService service;
	
	@RequestMapping("/reservation/reservation")
	public ModelAndView list(HttpServletRequest request){
		
		ModelAndView mView=service.getList(request);
		
		mView.setViewName("reservation/reservation");
		return mView;
	}
	
//	ajax할때 받아오는 Controller
//	@RequestMapping("/reservation/getList")
//	@ResponseBody
//	public List<ReserveDto> list(){
//		List<ReserveDto> list= service.list();
//		System.out.println(list+"controller");
//			return list; 
//	}
}
