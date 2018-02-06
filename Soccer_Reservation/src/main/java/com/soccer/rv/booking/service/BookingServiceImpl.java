package com.soccer.rv.booking.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.soccer.rv.booking.dao.BookingDao;

import com.soccer.rv.booking.dto.BookingDto;
import com.soccer.rv.reser.orderdto.ReservationOrderDto;
import com.soccer.rv.users.dto.UsersDto;

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
	public ModelAndView getList() {
		List<BookingDto> list= bookingDao.getList();
		
		ModelAndView mView = new ModelAndView();
		mView.addObject("list",list);
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
	public void delete(HttpServletRequest request) {
		int num = Integer.parseInt(request.getParameter("num"));
		bookingDao.delete(num);
		
		
	}

	@Override
	public ModelAndView getData(int num) {
		BookingDto dto = bookingDao.getData(num);
		
		ModelAndView mView = new ModelAndView();
		
		mView.addObject("dto",dto);
		return mView;
	}

	@Override
	public ModelAndView getData2(HttpSession session) {
		String id = (String) session.getAttribute("id");
		UsersDto dto = bookingDao.getData2(id);
		ModelAndView mView = new ModelAndView();
		mView.addObject("dto", dto);
		return mView;
	}
	//예약 목록에서 특정 칼럼 수정 기능
	@Override
	public ModelAndView update2(ReservationOrderDto dto) {
		bookingDao.update2(dto);
		
		ModelAndView mView = new ModelAndView();
		mView.addObject("msg","예약정보가 수정되었습니다.");
		return mView;
	}

	
	







	





	

	}




