package com.clustering.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clustering.project.repository.MemberDaoImpl;

@Service
public class MemberService {
	@Autowired
	private MemberDaoImpl dao;
	
	
	public Object getObject(Object dataMap) {
		Object resultObject = dao.getObject(dataMap);
		return resultObject;
	}
	
	public Object getList(Object dataMap){
		Object resultObject = dao.getList(dataMap);
		return resultObject;
	}
}
