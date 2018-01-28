package com.soccer.rv.users.service;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.soccer.rv.users.dao.UsersDao;
import com.soccer.rv.users.dto.UsersDto;

@Service
public class UsersServiceImple implements UsersService{
	
	@Autowired
	private UsersDao dao;
	
	@Override
	public ModelAndView signup(UsersDto dto) {
		 dao.insert(dto);
		 ModelAndView mView = new ModelAndView();
		 mView.addObject("id", dto.getId());
		
		return mView;
	}

	@Override
	public boolean canUseId(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public ModelAndView login(UsersDto dto, HttpServletRequest request) {
		boolean isValid = dao.isValid(dto);
		String url = request.getParameter("url");
		System.out.println(url);
		ModelAndView mView = new ModelAndView();
		if(isValid){
			request.getSession().setAttribute("id", dto.getId());
			mView.addObject("msg", dto.getId()+"님 환영합니다.");
			mView.addObject("url", url);
		}else{
			mView.addObject("msg", "아이디 혹은 비밀번호를 확인해주세요.");
			String location = request.getContextPath()
					+"/users/loginform.do?url="+url;
			mView.addObject("url", location);
		}
		
		return mView;
	}

	@Override
	public void update(UsersDto dto) {
		dao.update(dto);
	}

	@Override
	public ModelAndView delete(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ModelAndView detail(String id) {
		UsersDto dto = dao.getData(id);
		ModelAndView mView = new ModelAndView();
		mView.addObject("dto", dto);
		return mView;
	}

}
