package com.clustering.project.repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public class MemberDaoImpl {
	public Object getObject(Object dataMap) {
		Map<String,Object> resultObject = new HashMap<String, Object>();
		resultObject.put("MEMBER_ID","123");
		resultObject.put("NAME","name 01");
		return resultObject;
	}
	
	public Object getList(Object dataMap){
		List<Object> resultObject = new ArrayList<Object>();
		Map<String, Object> data01 = new HashMap<String, Object>();
		Map<String, Object> data02 = new HashMap<String, Object>();
		Map<String, Object> data03 = new HashMap<String, Object>();
		data01.put("MEMBER_ID", "789456123");
		data01.put("NAME", "name 01");
		data02.put("MEMBER_ID", "78945123");
		data02.put("NAME", "name 02");
		data03.put("MEMBER_ID", "7894511113");
		data03.put("NAME", "name 03");
		resultObject.add(data01);
		resultObject.add(data02);
		resultObject.add(data03);
		return resultObject;
	}
}
