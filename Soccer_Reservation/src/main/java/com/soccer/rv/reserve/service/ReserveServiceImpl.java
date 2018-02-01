package com.soccer.rv.reserve.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.gura.step04.cafe.dto.CafeDto;
import com.soccer.rv.reserve.dao.ReserveDao;
import com.soccer.rv.reserve.dto.ReserveDto;

@Service
public class ReserveServiceImpl implements ReserveService {
	
	@Autowired
	private ReserveDao reservedao;
	
	//한 페이지에 나타낼 로우의 갯수
	private static final int PAGE_ROW_COUNT=3;
	//하단 디스플레이 페이지 갯수
	private static final int PAGE_DISPLAY_COUNT=5;

	@Override
	public ModelAndView getList(HttpServletRequest request) {
		
		String keyword=request.getParameter("keyword");
		String condition=request.getParameter("condition");
		
		ModelAndView mView= new ModelAndView();
		
		ReserveDto dto = new ReserveDto();
		if(keyword !=null){
			if(condition.equals("titlecontent")){
				dto.setrAddr(rAddr);
			}else if(condition.equals("title")){
				dto.setAddr1(keyword);
			}else if(condition.equals("writer")){
				dto.setAddr3(keyword);
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
				int totalRow = reservedao.getCount(dto);
				//전체 페이지의 갯수 구하기
				int totalPageCount=
						(int)Math.ceil(totalRow/(double)PAGE_ROW_COUNT);
				//시작 페이지 번호
				int startPageNum=
					1+((pageNum-1)/PAGE_DISPLAY_COUNT)*PAGE_DISPLAY_COUNT;
				//끝 페이지 번호
				int endPageNum=startPageNum+PAGE_DISPLAY_COUNT-1;
				//끝 페이지 번호가 잘못된 값이라면 
				if(totalPageCount < endPageNum){
					endPageNum=totalPageCount; //보정해준다. 
				}
				
				dto.setStartRowNum(startRowNum);
				dto.setEndRowNum(endRowNum);
				
				//1. 글목록을 불러온다.
				List<ReserveDto> list=reservedao.getList(dto);
				
				mView.addObject("list", list);
				mView.addObject("pageNum", pageNum);
				mView.addObject("startPageNum", startPageNum);
				mView.addObject("endPageNum", endPageNum);
				mView.addObject("totalPageCount", totalPageCount);
		return mView;
	}
	
}
