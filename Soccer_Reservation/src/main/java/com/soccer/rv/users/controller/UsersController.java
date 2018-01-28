package com.soccer.rv.users.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.soccer.rv.users.dto.UsersDto;
import com.soccer.rv.users.service.UsersService;

@Controller
public class UsersController {
	
	@Autowired
	private UsersService service;
	//회원가입 폼으로 이동 
	@RequestMapping("/users/signupform")
	public String signupform (){
		return "users/signupform";
	}
	//회원가입 
	@RequestMapping("/users/signup")
	public ModelAndView signup(UsersDto dto){
		ModelAndView mView = service.signup(dto);
		mView.setViewName("users/signup_result");
		return mView;
	}
	
	//로그인 폼 이동 
	@RequestMapping("/users/loginform")
	public String loginform(){
		return "users/loginform";
	}
	
}
