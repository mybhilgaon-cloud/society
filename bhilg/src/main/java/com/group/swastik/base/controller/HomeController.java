package com.group.swastik.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @GetMapping("/home")
    public ModelAndView home() {
    	
    	ModelAndView mv= new ModelAndView();
        mv.addObject("companyName", "TechTrend Innovations");
        mv.addObject("tagline", "Building the Future, One Solution at a Time");
        mv.setViewName("homeLander");
        return mv;
    }
}