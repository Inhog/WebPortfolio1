package com.clustering.project.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.clustering.project.service.MemberService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value="/member")
public class MemberController {
	
	@Autowired
	private MemberService service;
	@RequestMapping(value = "/{action}")
	public ModelAndView actionMethod(@RequestParam Map<String, Object> paramMap, @PathVariable String action,
			ModelAndView modelandView) {
		String viewName = "/member/";
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<Object> resultList = new ArrayList<Object>();
		if("read".equalsIgnoreCase(action)) {
			viewName=viewName+action;
			resultMap=(Map<String,Object>)service.getObject(paramMap);
		} else if ("edit".equalsIgnoreCase(action)) {
			viewName = viewName + action;
		} else if ("list".equalsIgnoreCase(action)) {
			viewName = viewName +action;
			// service에서 반환형을 제너릭으로 선언해주면 받을때 캐스팅하지 않아도 된다.
			resultList=(List<Object>)service.getList(paramMap);
		}	else {
			viewName = viewName + "list";
		}
		modelandView.setViewName(viewName);
		modelandView.addObject("resultMap", resultMap);
		modelandView.addObject("resultList", resultList);
		return modelandView;
	}
}
