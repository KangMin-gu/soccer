package com.soccer.rv.admin.dao;

import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.soccer.rv.field.dto.FieldDto;
import com.soccer.rv.reser.orderdto.ReservationOrderDto;
import com.soccer.rv.users.dto.UsersDto;

@Repository
public class AdminDaoImpl implements AdminDao{
	
	@Autowired
	private SqlSession session;

	@Override
	public UsersDto getData(String id) {
		System.out.println(id+"=dao id 값");
		return session.selectOne("admin.getData",id);
	}

	@Override
	public void update(UsersDto dto) {

		session.update("admin.update",dto);

	}

	@Override
	public void delete(String id) {
		session.delete("admin.delete",id);
		
	}

	@Override
	public List<UsersDto> getList(UsersDto dto) {
		List<UsersDto> list = session.selectList("admin.getList",dto);
		return list;
	}
	
	@Override
	public int getCount(UsersDto dto) {
		int count = session.selectOne("admin.getCount",dto);
		return count;
	}
	
	
	/*=========================*/
	//reservation 예약정보
	@Override
	public List<ReservationOrderDto> rvList(String id) {
		List<ReservationOrderDto> list = session.selectList("admin.rvList",id);
		return list;
	}

	@Override
	public void rvDelete(ReservationOrderDto dto) {
		session.update("admin.rvDelete",dto);
		
	}

	@Override
	public FieldDto getData2(String field_name) {
		FieldDto dto = session.selectOne("admin.gettime",field_name);
		return dto;
	}

	@Override
	public int getCount(ReservationOrderDto dto) {
		int count = session.selectOne("admin.getCount2",dto);
		return count;
	}

	
	


}
