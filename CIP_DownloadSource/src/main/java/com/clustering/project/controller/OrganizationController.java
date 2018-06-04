package com.clustering.project.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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

	@RequestMapping(value = "/{action}")
	public ModelAndView read(@RequestParam Map<String, Object> paramMap, @PathVariable String action,
			OrganizationBean paramBean, ModelAndView modelandView) {
		String viewName = "/organization/";
		if("list".equalsIgnoreCase(action)) {
			viewName=viewName+action;
		}else if("edit".equalsIgnoreCase(action)) {
			viewName=viewName+action;
		}else if("read".equalsIgnoreCase(action)) {
			viewName=viewName+action;
		}
		modelandView.setViewName(viewName);
		modelandView.addObject("paramMap",paramMap);
		return modelandView;
	}
}
