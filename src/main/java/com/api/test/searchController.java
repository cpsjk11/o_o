package com.api.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import api.action.BbsPaging;
import api.action.mypagePaging;
import api.dao.BbsDAO;
import api.dao.MemDAO;
import api.u_member.vo.TrVO;
import api.vo.BbsVO;

@Controller
public class searchController {
	
	@Autowired
	private MemDAO m_dao;
	
	@Autowired
	private BbsDAO b_dao;
	
	public final int BLOCK_LIST = 5;
	
	public final int BLOCK_PAGE = 5;
	int nowPage;
	int rowTotal;
	String pageCode;

	@RequestMapping("/mypage/search")
	public ModelAndView inter(String cPage) {
		ModelAndView mv = new ModelAndView();
		
		if (cPage == null)
			nowPage = 1;
		else
			nowPage = Integer.parseInt(cPage);
		
	
		rowTotal = m_dao.getTotalCount();
		mypagePaging page = new mypagePaging(nowPage, rowTotal, BLOCK_LIST, BLOCK_PAGE);
		
		int begin = page.getBegin();
		int end = page.getEnd();
		
		pageCode = page.getSb().toString();
		
		TrVO[] ar = m_dao.getList(begin, end);
		
		mv.addObject("ar", ar);
		mv.addObject("nowPage", nowPage);
		mv.addObject("rowTotal", rowTotal);
		mv.addObject("blockList", BLOCK_LIST);
		mv.addObject("pageCode", pageCode);
		
		mv.setViewName("/최근조회한훈련");
		
		return mv;
	}
}
