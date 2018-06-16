package com.mycompany.myapp.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mycompany.myapp.service.SignUpService;

@Controller
public class SignUpController {
	
	private final static String MAPPING = "/SignUp/";

	@Autowired
	private SignUpService service;
	
	@RequestMapping(value = MAPPING+"{action}", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView index(@RequestParam Map<String, Object> paramMap ,@PathVariable String action,
			ModelAndView modelandView) {
		
		String viewName = "/JSP" + MAPPING + action;
		
		Map<String, Object> resultMap = new HashMap<String, Object>() ;
		List<Object> resultList = new ArrayList<Object>();
		
				
		if("index".equalsIgnoreCase(action)) {
			
			
		}else if("signUpRead".equalsIgnoreCase(action)) {
			resultMap = (Map<String, Object>) service.getObject(paramMap);
			
		}
		modelandView.setViewName(viewName);
		modelandView.addObject("resultMap", resultMap);
		return modelandView;
	}
}
