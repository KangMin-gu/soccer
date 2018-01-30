package com.soccer.rv.booking.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.soccer.rv.booking.dao.BookingDao;
import com.soccer.rv.booking.dto.BookingDto;

@Service
public class BookingServiceImpl implements BookingService{
	
	@Autowired
	private BookingDao bookingDao;

	@Override
	public void insert(BookingDto dto) {
		bookingDao.insert(dto);
		
	}

	@Override
	public void update(BookingDto dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int num) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ModelAndView list(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ModelAndView detail(String id) {
		BookingDto dto = bookingDao.getData(id);
		ModelAndView mView = new ModelAndView();
		mView.addObject("dto",dto);
		return mView;
	}



}
