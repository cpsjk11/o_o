package com.api.test;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import api.dao.BbsDAO;
import api.vo.BbsVO;
import api.action.BbsPaging;
import api.action.Paging;

@Controller
public class BbsController {

	@Autowired
	BbsDAO b_dao;

	// **페이징기법 변수들**
	// 리스트 원하는대로 보고싶으면 여기서 조정하면됨!!
	int block_list = 8;// 한페이지당 보여질 게시물의 수
	int block_page = 3;// 한블럭당 보여질 페이지 수
	int nowPage;
	int rowTotal; // 전체게시물의 수
	String pageCode; // 여기다가 페이징코드를 담아서 보낼거야 !!
	// **********************
	
	List<BbsVO> b_list;
	
	@RequestMapping("/helpSc")
	public ModelAndView goHelp(String cPage, String bname) {
		ModelAndView mv = new ModelAndView();
		
		if (cPage == null)
			nowPage = 1;
		else
			nowPage = Integer.parseInt(cPage);

		if (bname == null)
			bname = "일반게시판"; // 일반게시물

		
		
		rowTotal = b_dao.getTotalCount(bname);
		BbsPaging page = new BbsPaging(nowPage, rowTotal, block_list, block_page);
		
		int begin = page.getBegin();
		int end = page.getEnd();
		
		pageCode = page.getSb().toString();
		
		BbsVO[] ar = b_dao.getList(begin, end, bname);
		
		mv.addObject("ar", ar);
		mv.addObject("nowPage", nowPage);
		mv.addObject("rowTotal", rowTotal);
		mv.addObject("blockList", block_list);
		mv.addObject("pageCode", pageCode);
		mv.setViewName("/helpSc");
		return mv;
	}
	@RequestMapping("/helpScV")
	public String goView(String b_idx) {
		System.out.println(b_idx);
		return "helpScV";
	}
	@RequestMapping("/helpWrite")
	public String goWrite(String bname) {
		System.out.println(bname);
		return "/helpWrite";
	}
	@RequestMapping("test")
	public String test() {
		return "/testPage";
	}
	
}
