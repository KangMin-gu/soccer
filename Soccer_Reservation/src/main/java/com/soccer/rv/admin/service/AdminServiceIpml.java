package com.soccer.rv.admin.service;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;
import com.soccer.rv.admin.dao.AdminDao;
import com.soccer.rv.users.dto.UsersDto;

@Service
public class AdminServiceIpml implements AdminService{
	
	@Autowired
	private AdminDao adminDao;

	

	@Override
	public ModelAndView List(HttpServletRequest request) {
		//회원 목록 불러오기
		
		UsersDto dto =new UsersDto();
		System.out.println(dto.getId());
		
		List<UsersDto> list = adminDao.getList();
		System.out.println(list);
		ModelAndView mView = new ModelAndView();
		mView.addObject("list",list);
		System.out.println(list+"admin list 입니다.");
		return mView;
	}



	@Override
	public ModelAndView getData(String id) {
		UsersDto dto = adminDao.getData(id);
		ModelAndView mView = new ModelAndView();
		mView.addObject("dto",dto);
		return mView;
	}



	@Override
	public ModelAndView update(UsersDto dto) {
		adminDao.update(dto);
		ModelAndView mView = new ModelAndView();
		mView.addObject("msg","회원정보를 수정했습니다.");
		return mView;
	}



	@Override
	public void delete(String id) {
		adminDao.delete(id);
		
	}

}
