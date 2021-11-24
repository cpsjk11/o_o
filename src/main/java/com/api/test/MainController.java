package com.api.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController  {

	@RequestMapping("/goSearch")
	public ModelAndView goSearch(String value) {
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("value", value);
		mv.setViewName("/search");
		return mv;
	}
	
}