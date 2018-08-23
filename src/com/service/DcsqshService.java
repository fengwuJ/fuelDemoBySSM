package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.model.Dcsqsh;



public interface DcsqshService {
	public List<Dcsqsh> getDcsqshList();
	public List<Dcsqsh> getDcsqshListByLimit(int pageSize,int offset);
	public Dcsqsh getDcsqshByGysname(String gysname);
}
