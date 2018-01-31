package com.soccer.rv.review.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.soccer.rv.review.dao.ReviewDao;
import com.soccer.rv.review.dto.ReviewDto;


@Service
public class ReviewServiceImpl implements ReviewService{

	@Autowired
	private ReviewDao reviewDao;
	
	@Override
	public void insert(ReviewDto dto) {
		reviewDao.insert(dto);
	}

	@Override
	public void update(ReviewDto dto) {
		reviewDao.update(dto);
	}

	@Override
	public void delete(int num) {
		reviewDao.delete(num);
	}

	@Override
	public ModelAndView list(HttpServletRequest request) {
		
		return null;
	}

	@Override
	public ModelAndView detail(HttpServletRequest request) {
		return null;
	}

	@Override
	public ModelAndView detail(int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void commentInsert(HttpServletRequest request) {
		// TODO Auto-generated method stub
		
	}

}
