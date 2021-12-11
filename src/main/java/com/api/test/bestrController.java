package com.api.test;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import api.dao.EnrolDAO;
import api.u_member.vo.UmemVO;
import api.vo.EnrolVO;

@Controller
public class bestrController {
	
	@Autowired
	private EnrolDAO e_dao;

	
	@Autowired
	private HttpServletRequest req;
	
	@Autowired
	private HttpSession session;
	
	
	@RequestMapping("/mypage/bestr")
	public ModelAndView bestr() {
		ModelAndView mv = new ModelAndView();
		
		session = req.getSession(true);
		
		UmemVO uvo =  (UmemVO) session.getAttribute("userName");
		
		EnrolVO[] vo = e_dao.getuserList(uvo.getId());
		mv.addObject("vo", vo);
		
		mv.setViewName("/수강신청이력");
		return mv;
	}
}
