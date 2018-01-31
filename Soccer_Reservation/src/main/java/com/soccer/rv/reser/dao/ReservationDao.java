package com.soccer.rv.reser.dao;

import java.util.List;

import com.soccer.rv.field.dto.FieldDto;

public interface ReservationDao {
	public List<FieldDto> getList();
	public FieldDto getData(int num);
}
