package com.clustering.project.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.clustering.project.JavaBean.OrganizationBean;

/**
 * Handles requests for the application home page.
 */
//@Component
@Controller
@RequestMapping(value="/organization")
public class OrganizationController {
	
	private static final Logger logger = LoggerFactory.getLogger(OrganizationController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value="/edit")
	public void edit() {}
	
	@RequestMapping(value="/list")
	public void list() {}
	
	@RequestMapping(value="/read",method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView read(OrganizationBean paramMap, ModelAndView modelandView) {
		String viewName = "/organization/read";
		modelandView.setViewName(viewName);
		modelandView.addObject("paramMap",paramMap);
		return modelandView;
	}
}
