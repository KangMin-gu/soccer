package com.soccer.rv.reserve.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReserveController {
		
		@RequestMapping("/reservation/list")
		public String revlist(){
			return "reservation/list";
		}
}
