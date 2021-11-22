package com.api.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import api.dao.RdDAO;
import api.vo.Search2;

@Controller
public class AddController {

	@Autowired 
	private RdDAO r_dao;
	
	// 추천학원기능을 저장하는 기능
	@RequestMapping("/admin")
	public ModelAndView add(Search2 s2) {
		ModelAndView mv = new ModelAndView();
		
		int cnt = r_dao.addAppend(s2);
		
		if(cnt > 0) {
			mv.addObject("result", "성공");
		}else {
			mv.addObject("result", "fail");
		}
		mv.setViewName("ap");
		return mv;
	}
	
	@RequestMapping("/jk")
	public String st() {
		System.out.println("hi");
		return "ap";
	}
	
}
