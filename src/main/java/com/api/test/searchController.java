package com.api.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import api.action.BbsPaging;
import api.dao.BbsDAO;
import api.vo.BbsVO;

@Controller
public class searchController {
	
	@Autowired
	private BbsDAO b_dao;
	
	int block_list = 5;
	int block_page = 3;
	int nowPage;
	int rowTotal;
	String pageCode;

	@RequestMapping("/mypage/search")
	public ModelAndView inter(String cPage, String bname) {
		ModelAndView mv = new ModelAndView();
		
		if (cPage == null)
			nowPage = 1;
		else
			nowPage = Integer.parseInt(cPage);

		if (bname == null)
			bname = "일반회원";
		
		rowTotal = b_dao.getTotalCount(bname, "0");
		BbsPaging page = new BbsPaging(nowPage, rowTotal, block_list, block_page, bname);
		
		int begin = page.getBegin();
		int end = page.getEnd();
		
		pageCode = page.getSb().toString();
		
		BbsVO[] ar = b_dao.getList(begin, end, bname, "0");
		
		mv.addObject("bname",bname);
		mv.addObject("ar", ar);
		mv.addObject("nowPage", nowPage);
		mv.addObject("rowTotal", rowTotal);
		mv.addObject("blockList", block_list);
		mv.addObject("pageCode", pageCode);
		mv.setViewName("최근조회한훈련");
		
		return mv;
	}
}
