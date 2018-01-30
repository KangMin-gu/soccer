package com.soccer.rv.reserve.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.soccer.rv.reserve.service.ReserveService;

@Controller
public class ReserveController {
		@Autowired
		private ReserveService service;
		@RequestMapping("/reservation/list")
		public ModelAndView list(HttpServletRequest request){
			ModelAndView mView=service.list(request);
			mView.setViewName("/reservation/list");
			return mView;
		}
}
