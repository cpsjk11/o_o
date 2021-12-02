package com.api.test;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import api.dao.MemDAO;


@Controller
public class removeCotroller {

	@Autowired
	private MemDAO m_dao;
	
	@Autowired
	private HttpServletRequest req;
	
	@RequestMapping("/mypage/remove")
	public ModelAndView remove(String id) {
		ModelAndView mv = new ModelAndView();
		
		m_dao.del(id);
		req.removeAttribute(id);
		
		mv.setViewName("회원탈퇴");
		
		return mv;
	}

}
