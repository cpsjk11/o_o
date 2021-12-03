package com.api.test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import api.dao.MemDAO;
import api.u_member.vo.UmemVO;

@Controller
public class pwdController {

	@Autowired
	private MemDAO m_dao;
	
	@RequestMapping("/mypage/pwd")
	public ModelAndView pwd(UmemVO vo) {
		ModelAndView mv = new ModelAndView();
		
		List<UmemVO> uvo = m_dao.getList(vo);
		
		mv.addObject("vo", uvo);
		mv.setViewName("비밀번호변경");
		
		return mv;
		
	}
	
}
