package com.group.swastik.base.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController	
public class UserController {
	
	 @RequestMapping(value = "/logins", method = RequestMethod.GET)
	    public ModelAndView showLoginPage() {
		 ModelAndView mv= new ModelAndView();
		 mv.setViewName("login");
	        return mv;
	    }

	 
	 @RequestMapping(value = "/registers", method = RequestMethod.GET)
	    public ModelAndView showRegisterPage() {
		 ModelAndView mv= new ModelAndView();
		 mv.setViewName("Register");
	        return mv;
	    }

}
