package com.soccer.rv.reser.dao;

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
	
	@Override
	public ReservationOrderDto getinfo(ResDto rdto) {
		ReservationOrderDto order = rvsession.selectOne("reservation.getinfo", rdto); 	
		return order;
		

	}


	@Override
	public FieldDto getData(int num) {
		FieldDto dto = rvsession.selectOne("reservation.getData", num);
		return dto;
	}


}
