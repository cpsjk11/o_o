package com.api.test;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import api.dao.MemDAO;
import api.dao.UmemDAO;
import api.u_member.vo.UmemVO;


@Controller
public class removeCotroller {

	@Autowired
	private MemDAO m_dao;
	@Autowired
	private UmemDAO u_dao;
	
	@Autowired
	private HttpServletRequest req;
	
	@Autowired
	private HttpSession session;
	
	//회원탈퇴 페이지로 이동
	@RequestMapping("/mypage/removePage")
	public ModelAndView removePage(String id) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("회원탈퇴");
		return mv;
	}
	//회원탈퇴 버튼을 눌렀을 때
	@RequestMapping("/remove")
	public ModelAndView remove() {
		ModelAndView mv = new ModelAndView();
		
		session = req.getSession(true);
		
		UmemVO uvo =  (UmemVO) session.getAttribute("userName");
		
		
		System.out.println(uvo.getId());
		
		
		m_dao.del(uvo.getId());
		req.removeAttribute(uvo.getId());
		session.invalidate();
		
		mv.setViewName("redirect:/");
		
		return mv;
	}

}
