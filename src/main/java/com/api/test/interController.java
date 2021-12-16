package com.api.test;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;

import api.action.LikePaging;
import api.action.mypagePaging;
import api.dao.BbsDAO;
import api.dao.MemDAO;
import api.u_member.vo.LikeVO;
import api.u_member.vo.TrVO;
import api.vo.BbsVO;
import api.vo.Cokie;


@Controller
public class interController {
	
	@Autowired
	private MemDAO m_dao;
	
	@Autowired
	private HttpServletRequest req;
	
	public final int BLOCK_LIST = 5;
	
	public final int BLOCK_PAGE = 5;
	
	private List<Cokie> list = new ArrayList<Cokie>();
	
	int nowPage;
	int rowTotal;
	String pageCode;
	
	List<LikeVO> b_list;
	
	@RequestMapping("/mypage/inter")
	public ModelAndView inter(String cPage ) throws Exception {
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
		
		LikeVO[] ar = m_dao.LikeList(begin, end);
		
		Cokie cok = new Cokie();
		
		
		Cokie[] ck = new Cokie[list.size()];
		list.toArray(ck);
		
		/*
		 * Cokie ck[] = null;
		 * 
		 * Cookie[] getCookie = req.getCookies(); // 모든 쿠키 가져오기 ck = new
		 * 
		 * for (Cookie c : getCookie) { //for문으로 배열 안에 있는 쿠키들 검색
		 * System.out.println("c.getName() : " + c.getName() + ", c.getValue() : " +
		 * c.getValue()); if(c.getName().equals("memberId")) { //memberId의 이름을 갖는 쿠키의
		 * 정보를 담음 cookie = c; } }
		 * 
		 * } }
		 */
		mv.addObject("ar", ar);
		mv.addObject("nowPage", nowPage);
		mv.addObject("rowTotal", rowTotal);
		mv.addObject("blockList", BLOCK_LIST);
		mv.addObject("pageCode", pageCode);
		
		mv.setViewName("/관심훈련정보");
		
		return mv;
	}
}
