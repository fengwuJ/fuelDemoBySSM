package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.model.Dcsqsh;


public interface DcsqshMapper {
	public List<Dcsqsh> getDcsqshList();
	public List<Dcsqsh> getDcsqshListByLimit(@Param("pageSize")int pageSize,@Param("offset")int offset);
	public Dcsqsh getDcsqshByGysname(@Param("gysname")String gysname);
}
