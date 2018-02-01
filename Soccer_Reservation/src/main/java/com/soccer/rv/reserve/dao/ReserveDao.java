package com.soccer.rv.reserve.dao;

import java.util.List;

import com.soccer.rv.reserve.dto.ReserveDto;

public interface ReserveDao {
	
	public List<ReserveDto> getList(ReserveDto dto);
	public int getCount(ReserveDto dto);
	public ReserveDto getData(ReserveDto dto);
}
