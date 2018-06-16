package com.mycompany.myapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.myapp.dao.Logindao;

@Service
public class LoginService {

	@Autowired
	private Logindao dao;
	
	public Object getObject(Object dataMap) {
		Object resultObject = dao.getObject(dataMap);
		
		return resultObject;
	}
}
