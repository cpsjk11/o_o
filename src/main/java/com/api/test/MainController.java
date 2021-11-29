package com.api.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController  {

	@RequestMapping("/goSearch")
	public ModelAndView goSearch(String value, String srchKeco1) {
		ModelAndView mv = new ModelAndView();
		
		if(srchKeco1.length() != 2) {
			srchKeco1 = 0+srchKeco1;
		}
		
		mv.addObject("search_bar", value);
		mv.addObject("srchKeco1", srchKeco1);
		mv.setViewName("redirect:/search");
		return mv;
	}
	
}