package com.soccer.rv.admin.service;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;
import com.soccer.rv.admin.dao.AdminDao;
import com.soccer.rv.field.dto.FieldDto;
import com.soccer.rv.reser.orderdto.ReservationOrderDto;
import com.soccer.rv.users.dto.UsersDto;

@Service
public class AdminServiceIpml implements AdminService{
	
	@Autowired
	private AdminDao adminDao;

	

	@Override
	public ModelAndView List(HttpServletRequest request) {
		//회원 목록 불러오기
		
		List<UsersDto> list = adminDao.getList();
		System.out.println(list);
		ModelAndView mView = new ModelAndView();
		mView.addObject("list",list);
		System.out.println(list+"admin list 입니다.");
		return mView;
	}



	@Override
	public ModelAndView getData(String id) {
		
		System.out.println(id+"= service id 값");
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
	public void delete(HttpServletRequest request) {
		String id = (String)request.getParameter("id");
		adminDao.delete(id);
		
		
	}



	
	
	/*============================================*/
	
	//회원 예약정보 확인
	@Override
	public ModelAndView rvList(HttpServletRequest request) {
		String id = (String)request.getParameter("id");
		System.out.println("rvList  id ="+id);
		List<ReservationOrderDto> list =adminDao.rvList(id);
		ModelAndView mView = new ModelAndView();
		mView.addObject("list",list);
		mView.addObject("id",id);
		return mView;
	}


	//회원 예약정보 취소 
	@Override
	public ModelAndView rvDelete(HttpServletRequest request) {
		String field_name = (String)request.getParameter("fieldname");
		String field_date = (String)	request.getParameter("fielddate");
		String field_m_time = (String)request.getParameter("fieldmornig");
		String field_a_time = (String)request.getParameter("fieldafternoon");
		String field_n_time = (String)request.getParameter("fieldnight");
		String id = (String)request.getParameter("id");
		System.out.println("파라미터로 가져온 ID ="+id);
		FieldDto dto = adminDao.getData2(field_name);
		String morning = dto.getField_morning();
		String afternoon = dto.getField_afternoon();
		String night = dto.getField_night();
		
		System.out.println(dto.getField_morning());
		System.out.println("비교할타임!"+morning);
		System.out.println("비교할타임!"+afternoon);
		System.out.println("비교할타임!"+night);
		System.out.println("비교대상자!"+field_m_time);
		System.out.println("비교대상자!"+field_a_time);
		
		ReservationOrderDto order = new ReservationOrderDto();
		
		order.setField_name(field_name);
		order.setField_date(field_date);
		if(field_m_time.equals(morning)){
			System.out.println("조건문 start");
			order.setField_m_id(id);
		}else if(field_a_time.equals(afternoon)){
			order.setField_a_id(id);
		}else{
			order.setField_n_id(id);
		}
		
		System.out.println(order.getField_name()+order.getField_date()+order.getField_m_id()+order.getField_a_id()+order.getField_n_id());
		
		adminDao.rvDelete(order);
		ModelAndView mView = new ModelAndView();
		return mView;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
