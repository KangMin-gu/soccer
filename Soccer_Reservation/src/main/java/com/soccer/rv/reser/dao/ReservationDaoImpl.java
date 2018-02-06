package com.soccer.rv.reser.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.soccer.rv.field.dto.FieldDto;
import com.soccer.rv.reser.orderdto.ResDto;
import com.soccer.rv.reser.orderdto.ReservationOrderDto;

@Repository
public class ReservationDaoImpl implements ReservationDao{
	
	@Autowired
	private SqlSession rvsession;
	
	// ajax field_order의 예약현 정보 가져오기
	@Override
	public ReservationOrderDto getinfo(ResDto rdto) {
		
		ReservationOrderDto order = rvsession.selectOne("reservation.getinfo", rdto); 	
		
		return order;
	}

	//예약현황페이지 이동할때 field 테이블의 운동장의 정보 가져오기 
	@Override
	public FieldDto getData(int num) {
		
		FieldDto dto = rvsession.selectOne("reservation.getData", num);
		System.out.println(dto.getNum());
		return dto;
	}
	//예약하
	@Override
	public void rvinsert(ReservationOrderDto order) {
		
		rvsession.update("reservation.rvinsert", order);
		System.out.println(order.getField_n_teamNP());
		
	}

	//나의 예약 조회하기
	@Override
	public List<ReservationOrderDto> myreser(String id) {
		List<ReservationOrderDto> list = rvsession.selectList("reservation.myreser" , id);
		return list;
	}
	
	
	
}
