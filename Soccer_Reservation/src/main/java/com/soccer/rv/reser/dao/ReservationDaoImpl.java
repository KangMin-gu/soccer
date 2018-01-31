package com.soccer.rv.reser.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.soccer.rv.field.dto.FieldDto;

@Repository
public class ReservationDaoImpl implements ReservationDao{
	
	@Autowired
	private SqlSession rvsession;
	
	@Override
	public List<FieldDto> getList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FieldDto getData(int num) {
		FieldDto dto = rvsession.selectOne("reservation.getData", num);
		return dto;
	}

}
