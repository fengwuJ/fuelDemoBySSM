package com.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.model.Dcsqsh;
import com.service.DcsqshService;


@Controller
public class DcsqshController {
	@Resource
	private DcsqshService dcsqshService;
	
	@ResponseBody
	@RequestMapping("/getDcsqshList")
	public Map<String, Object> sendJson(int pageSize,int offset){
		
		List<Dcsqsh> dcsqshList = dcsqshService.getDcsqshList();
		List<Dcsqsh> list = dcsqshService.getDcsqshListByLimit(pageSize,offset);
		Map<String, Object> map = new HashMap<String, Object>();
		int total = dcsqshList.size();
		map.put("total",total);
		map.put("rows", list);
		return map;
	}
	
	@ResponseBody
	@RequestMapping("/getDcsqsh")
	public Map<String, Object> sendJson(String gysname){
		Dcsqsh dcsqsh = dcsqshService.getDcsqshByGysname(gysname);
		Map<String, Object> map = new HashMap<String, Object>();
		List<Dcsqsh> list = new ArrayList<Dcsqsh>();
		list.add(dcsqsh);
		map.put("total", 1);
		map.put("rows", list);
		return map;
		
	}
}
