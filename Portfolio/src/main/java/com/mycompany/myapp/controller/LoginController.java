package com.mycompany.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/Login")
public class LoginController {

	@RequestMapping(value = "/{action}")
	public ModelAndView index(@PathVariable String action,
			ModelAndView modelandView) {
		String viewName="/JSP/Login/";
		if("index".equalsIgnoreCase(action)) {
			viewName = viewName+action;
		}else if("loginRead".equalsIgnoreCase(action)) {
			viewName = viewName+action;
		}
		modelandView.setViewName(viewName);
		return modelandView;
	}
}
