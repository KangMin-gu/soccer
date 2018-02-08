package com.soccer.rv.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.soccer.rv.admin.service.AdminService;
import com.soccer.rv.users.dto.UsersDto;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminservice;
	
	//회원 목록 요청 처리
	@RequestMapping("/admin/adminlist")
	public ModelAndView List(HttpServletRequest request){
		ModelAndView mView = adminservice.List(request);
		mView.setViewName("admin/adminlist");
		return mView;
	}
	
	//회원 정보 폼  수정 요청처리 
	@RequestMapping("/admin/adminupdateform")
	public ModelAndView updateform(@RequestParam String id){
		ModelAndView mView = adminservice.getData(id);
		mView.setViewName("admin/adminalert");
		return mView;
	}

}
