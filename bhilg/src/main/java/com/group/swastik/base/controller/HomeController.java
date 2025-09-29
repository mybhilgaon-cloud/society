package com.group.swastik.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @GetMapping("/home")
    public ModelAndView home() {
    	
    	ModelAndView mv= new ModelAndView();
        mv.setViewName("Nh");
        return mv;
    }
    
    @GetMapping("/")
    public ModelAndView getHome() {
    	
    	ModelAndView mv= new ModelAndView();
        mv.setViewName("Nh");
        return mv;
    }
    
    @GetMapping("/event")
    public ModelAndView event() {
    	
    	ModelAndView mv= new ModelAndView();
        mv.setViewName("Event");
        return mv;
    }
}