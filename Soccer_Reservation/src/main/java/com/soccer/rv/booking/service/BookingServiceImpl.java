package com.soccer.rv.booking.service;

import java.util.List;



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
	public ModelAndView insert(BookingDto dto) {
		//예약정보 저장
		bookingDao.insert(dto);
		
		ModelAndView mView = new ModelAndView();
		mView.addObject("msg","예약완료되었습니다.");
		return mView;
	}

	@Override
	public ModelAndView update(BookingDto dto) {
		// TODO Auto-generated method stub
		return null;
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

	@Override
	public ModelAndView detail(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	

	}




