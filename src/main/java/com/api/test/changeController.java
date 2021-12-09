package com.api.test;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import api.dao.MemDAO;
import api.dao.UmemDAO;
import api.u_member.vo.UmemVO;


@Controller
public class changeController {

	@Autowired
	private MemDAO m_dao;
	
	@Autowired
	private UmemDAO u_dao;
	
	@Autowired
	private HttpServletRequest req;
	
	@Autowired
	private HttpSession session;
	
	@RequestMapping("/mypage/change")
	public ModelAndView hh() {
		ModelAndView mv = new ModelAndView();
		
		session = req.getSession(true);
		
		UmemVO uvo =  (UmemVO) session.getAttribute("userName");
		
		
		System.out.println(uvo.getId());
		
//		UmemVO b = u_dao.user(id);
//		List<UmemVO> uvo = m_dao.getList(b);
		
		mv.addObject("vo", uvo);
		mv.setViewName("정보변경");
		
		return mv;
	}
	
	@RequestMapping("/mypage/changess")
	@ResponseBody
	public Map<String, String> change(UmemVO a) {
		Map<String, String> map = new HashMap<String, String>();
		
		int cnt = m_dao.edit(a);
		if(cnt > 0)
			map.put("result", "1");
		else
			map.put("result", "2");
		
		
		return map;
	}
	
	
	

	
	
	
}
