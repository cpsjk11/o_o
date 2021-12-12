package com.api.test;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import api.dao.EnrolDAO;
import api.dao.MemDAO;
import api.dao.UmemDAO;
import api.u_member.vo.UmemVO;
import api.vo.EnrolVO;

@Controller
public class CuserController {

	@Autowired
	private HttpServletRequest req;
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private MemDAO m_dao;
	
	@Autowired
	private EnrolDAO e_dao;
	
	@RequestMapping("mypage/Cmy")
	public String CmyPage() {
		return "기업정보보기";
	}
	@RequestMapping("mypage/Cinfo")
	public String CinfoPage() {
		return "기업정보변경";
	}
	
	
	@RequestMapping("mypage/Capi")
	public ModelAndView CapuPage() {
		ModelAndView mv = new ModelAndView();
		
		req.getSession(true);
		
		UmemVO vo = (UmemVO) session.getAttribute("userName");
		
		EnrolVO[] evo = e_dao.getList(vo.getC_name());
		
		mv.addObject("evo", evo);
		mv.setViewName("기업수강신청인원");
		return mv;
	}
	@RequestMapping("mypage/Csuc")
	public String CsucPage() {
		return "기업제휴문의";
	}
	
	@RequestMapping("mypage/edit_cuser")
	public ModelAndView CsucEdit(UmemVO vo) {
		ModelAndView mv = new ModelAndView();
		
		m_dao.edit(vo);
		
		mv.setViewName("redirect:/logout");
		return mv;
	}
	
}
