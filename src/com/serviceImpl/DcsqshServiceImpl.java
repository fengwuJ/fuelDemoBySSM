package com.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mapper.DcsqshMapper;
import com.model.Dcsqsh;
import com.service.DcsqshService;

@Service("userService")
public class DcsqshServiceImpl implements DcsqshService{

	@Resource
	private DcsqshMapper dcsqshMapper;
	
	@Override
	public List<Dcsqsh> getDcsqshList() {
		return dcsqshMapper.getDcsqshList();
	}

	@Override
	public List<Dcsqsh> getDcsqshListByLimit(int pageSize, int offset) {
		// TODO Auto-generated method stub
		return dcsqshMapper.getDcsqshListByLimit(pageSize, offset);
	}

	@Override
	public Dcsqsh getDcsqshByGysname(String gysname){
		return dcsqshMapper.getDcsqshByGysname(gysname);
	}

	

	
	
}
