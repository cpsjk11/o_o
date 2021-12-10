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
public class CuserController {

	@Autowired
	private HttpSession hs;

	@Autowired
	private HttpServletRequest req;
	
	@Autowired
	MemDAO m_dao;
	
	@RequestMapping("mypage/Cmy")
	public String CmyPage() {
		return "기업정보보기";
	}
	@RequestMapping("mypage/Cinfo")
	public String CinfoPage() {
		return "기업정보변경";
	}
	@RequestMapping("mypage/Capi")
	public String CapuPage() {
		return "기업수강신청인원";
	}
	@RequestMapping("mypage/Csuc")
	public String CsucPage() {
		return "기업제휴문의";
	}

	
	
	
	@RequestMapping("mypage/edit_cuser")
	public ModelAndView CsucEdit(UmemVO vo) {
		ModelAndView mv = new ModelAndView();
		
		m_dao.edit(vo);
		
		mv.setViewName("redirect:/기업정보변경");
		return mv;
	}
	
	
}
