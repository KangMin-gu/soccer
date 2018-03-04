package com.soccer.rv.admin.service;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

	
	//한 페이지에 나타낼 로우의 갯수
	private static final int PAGE_ROW_COUNT=5;
	//하단 디스플레이 페이지 갯수
	private static final int PAGE_DISPLAY_COUNT=3;

	@Override
	public ModelAndView List(HttpServletRequest request) {
		//회원 목록 불러오기
		
		//검색과 관련된 파라미터를 읽어와 본다.
		String keyword = request.getParameter("keyword");
		String condition = request.getParameter("condition");
		
		//글정보를 담을 ModelAndivew 객체
		ModelAndView mView = new ModelAndView();
		
		//UsersDto 객체 생성해서
		UsersDto dto = new UsersDto();
		if(keyword != null) {//검색어가 전달된 경우
			if(condition.equals("id")){ 
				dto.setId(keyword);
			}else if(condition.equals("name")){
				dto.setName(keyword);
			}
			mView.addObject("condition", condition);
			mView.addObject("keyword", keyword);
		}
		
		//보여줄 페이지의 번호
		int pageNum=1;
		//보여줄 페이지의 번호가 파라미터로 전달되는지 읽어온다.
		String strPageNum=request.getParameter("pageNum");
		if(strPageNum != null){//페이지 번호가 파라미터로 넘어온다면
			//페이지 번호를 설정한다.
			pageNum=Integer.parseInt(strPageNum);
		}
		//보여줄 페이지 데이터의 시작 ResultSet row 번호
		int startRowNum=1+(pageNum-1)*PAGE_ROW_COUNT;
		//보여줄 페이지 데이터의 끝 ResultSet row 번호
		int endRowNum=pageNum*PAGE_ROW_COUNT;
		//전체 row 의 갯수를 DB 에서 얻어온다.
		int totalRow = adminDao.getCount(dto);
		//전체 페이지의 갯수 구하기
		int totalPageCount=(int)Math.ceil(totalRow/(double)PAGE_ROW_COUNT);
		//시작 페이지 번호
		int startPageNum=1+((pageNum-1)/PAGE_DISPLAY_COUNT)*PAGE_DISPLAY_COUNT;
		//끝 페이지 번호
		int endPageNum=startPageNum+PAGE_DISPLAY_COUNT-1;
		//끝 페이지 번호가 잘못된 값이라면 
		if(totalPageCount < endPageNum){
			endPageNum=totalPageCount; //보정해준다. 
		}
		
		dto.setStartRowNum(startRowNum);
		dto.setEndRowNum(endRowNum);
		
		//글목록 불러온다.
		List<UsersDto> list = adminDao.getList(dto);
		
		mView.addObject("list",list);
		mView.addObject("pageNum", pageNum);
		mView.addObject("startPageNum", startPageNum);
		mView.addObject("endPageNum", endPageNum);
		mView.addObject("totalPageCount", totalPageCount);

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
		
		//글정보를 담을 ModelAndivew 객체
		ModelAndView mView = new ModelAndView();
		
		List<ReservationOrderDto> list =adminDao.rvList(id);
		
		mView.addObject("list",list);
		mView.addObject("id", id);
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
		String field_m_id = (String)request.getParameter("field_m_id");
		String field_a_id = (String)request.getParameter("field_a_id");
		String field_n_id = (String)request.getParameter("field_n_id");
		
		ModelAndView mView = new ModelAndView();
	
		
		FieldDto dto = adminDao.getData2(field_name);
		String morning = dto.getField_morning();
		String afternoon = dto.getField_afternoon();
		String night = dto.getField_night();
		

		ReservationOrderDto order = new ReservationOrderDto();
		
		order.setField_name(field_name);
		order.setField_date(field_date);
		if(field_m_time.equals(morning)){
			order.setField_m_id(field_m_id);
		}else if(field_a_time.equals(afternoon)){
			order.setField_a_id(field_a_id);
		}else{
			order.setField_n_id(field_n_id);
		}
		
		
		adminDao.rvDelete(order);
		
		mView.addObject("field_m_id", field_m_id);
		mView.addObject("field_a_id", field_a_id );
		mView.addObject("field_n_id", field_n_id);
	
		return mView;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
