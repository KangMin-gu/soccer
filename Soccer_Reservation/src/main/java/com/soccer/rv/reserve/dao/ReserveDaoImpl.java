package com.soccer.rv.reserve.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.soccer.rv.reserve.dto.ReserveDto;

@Repository
public class ReserveDaoImpl implements ReserveDao {
	@Autowired
	private SqlSession session;
	@Override
	public ReserveDto getData(ReserveDto dto) {
		
		return session.selectOne("reserve.getData", dto);
	}

	@Override
	public List<ReserveDto> getList(ReserveDto dto) {
		
		return session.selectList("reserve.getList",dto);
	}

}
