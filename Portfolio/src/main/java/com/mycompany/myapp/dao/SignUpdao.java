package com.mycompany.myapp.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public class SignUpdao {

	
	public Object getObject(Object dataMap) {
		Map<String,Object> resultMap = new HashMap<String, Object>();
		resultMap = (Map<String, Object>) dataMap;
		
		return resultMap;
		
	}
}
