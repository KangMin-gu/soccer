package com.soccer.rv.reser.dao;



import com.soccer.rv.field.dto.FieldDto;
import com.soccer.rv.reser.orderdto.ResDto;
import com.soccer.rv.reser.orderdto.ReservationOrderDto;

public interface ReservationDao {
	public ReservationOrderDto getinfo(ResDto rdto);
	public FieldDto getData(int num);
	public void rvinsert(ReservationOrderDto order);

}
