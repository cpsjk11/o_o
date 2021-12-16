package com.api.test;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import api.action.LikePaging;
import api.action.mypagePaging;
import api.dao.BbsDAO;
import api.dao.MemDAO;
import api.u_member.vo.LikeVO;
import api.u_member.vo.TrVO;
import api.u_member.vo.UmemVO;
import api.vo.BbsVO;


@Controller
public class interController {
	
	@Autowired
	private MemDAO m_dao;
	
	public final int BLOCK_LIST = 5;
	
	public final int BLOCK_PAGE = 5;
	
	int nowPage;
	int rowTotal;
	String pageCode;
	
	List<LikeVO> b_list;
	
	@Autowired
	private HttpServletRequest req;
	
	@Autowired
	private HttpSession session;
	
	@RequestMapping("/mypage/inter")
	public ModelAndView inter(String cPage, String u_mem_id) {
		ModelAndView mv = new ModelAndView();
		
		if (cPage == null)
			nowPage = 1;
		else
			nowPage = Integer.parseInt(cPage);
		
	
		rowTotal = m_dao.getTotalCount();
		LikePaging page = new LikePaging(nowPage, rowTotal, BLOCK_LIST, BLOCK_PAGE);
		
		int begin = page.getBegin();
		int end = page.getEnd();
		
		pageCode = page.getSb().toString();
		
		session = req.getSession(true);
		
		UmemVO uvo =  (UmemVO) session.getAttribute("userName");
		
		LikeVO[] ar = m_dao.LikeList(begin, end, uvo.getId());
		
		mv.addObject("ar", ar);
		mv.addObject("nowPage", nowPage);
		mv.addObject("rowTotal", rowTotal);
		mv.addObject("blockList", BLOCK_LIST);
		mv.addObject("pageCode", pageCode);
		
		mv.setViewName("/관심훈련정보");
		
		return mv;
	}
}
