package com.soccer.rv.booking.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.soccer.rv.booking.dao.BookingDao;

import com.soccer.rv.booking.dto.BookingDto;
import com.soccer.rv.users.dto.UsersDto;

@Service
public class BookingServiceImpl implements BookingService{
	
	@Autowired
	private BookingDao bookingDao;
	


	@Override
	public ModelAndView insert(BookingDto dto) {
		//예약정보 저장
		bookingDao.insert(dto);
		bookingDao.insert2(dto);
		
		
		ModelAndView mView = new ModelAndView();
		mView.addObject("msg","예약완료되었습니다.");
		return mView;
	}

	@Override
	public ModelAndView update(BookingDto dto) {
		bookingDao.update(dto);
		
		ModelAndView mView = new ModelAndView();
		
		mView.addObject("msg","예약정보를 수정했습니다.");
		
		return mView;
	}

	@Override
	public void delete(int num) {
		
		bookingDao.delete(num);
		
	}

	@Override
	public ModelAndView getlist() {
		List<BookingDto> list= bookingDao.getList();
		
		ModelAndView mView = new ModelAndView();
		mView.addObject("list",list);
		return mView;
	}

	@Override
	public ModelAndView getData(int num) {
		BookingDto dto = bookingDao.getData(num);
		
		ModelAndView mView = new ModelAndView();
		
		mView.addObject("dto",dto);
		return mView;
	}

	







	





	

	}




